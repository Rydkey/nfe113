<?php

use AppBundle\Entity\Personne;
use AppBundle\Entity\Reserve;
use AppBundle\Entity\Salle;
use AppBundle\Form\Type\NewReservationType;
use Silex\Application;
use Symfony\Component\HttpFoundation\Request;

/**
 * Created by PhpStorm.
 * User: rydkey
 * Date: 22/06/18
 * Time: 23:41
 * @param Request $request
 * @param Application $app
 * @return
 * @throws Exception
 */

function reservationDetail(Application $app, $id)
{
  $em = $app["orm.em"];
  $repository = $em->getRepository(Reserve::class);
  $reservation = $repository->find($id);
  return $app['twig']->render('reservation-detail.html.twig', array('reservation' => $reservation));
}

function newReservation(Request $request, Application $app, $salleId)
{
  $connectedUser = $app['session']->get('user')['info'][0];
  $reserve = new Reserve();
  $em = $app['orm.em'];
  $formBuilder = $app['form.factory']->createBuilder(NewReservationType::class, $reserve);
  $form = $formBuilder->getForm();
  $form->handleRequest($request);
  if ($form->isSubmitted()) {
    if ($form->isValid()) {
      $salle = _getSalle($salleId, $app);
      $result = $request->request->get('new_reservation');
      if (!isset($result['personneId'])) {
        $result['personneId'][] = $connectedUser;
      } else if (!in_array(strval($connectedUser->getId()), $result['personneId'])) {
        $result['personneId'][] = $connectedUser;
      }
      $testDate = new DateTime($result['dateDebut']["date"]);
      $testTime = $result['dateDebut']["time"];
      $diffDate = $testDate->diff(new DateTime(date('Y-m-d')), false);
      if ($diffDate->format("%R") !== "-") {
        $app['session']->getFlashBag()->add('error', "La date renseignée est inférieur à celle d'aujourd'hui");
      } elseif (intval($testTime['hour']) + intval($result["duree"]) > 18) {
        $app['session']->getFlashBag()->add('error', "Vous ne pouvez pas reserver après l'heure de fermeture");
      } elseif (!_checkCapacite(count($result['personneId']), $app, $salle)) {
        $app['session']->getFlashBag()->add('error', "La capacité de cette salle de correspond pas au nombre de personnes");
      } else {
        $reserve->setSalleId($salle);
        $reserve->setStatus(1);
        $reserve->setCode(randomPassword());
        $test = new DateTime($reserve->getDateDebut()->format("Y-m-d H:i:s"));
        $reserve->setDateFin($test);
        $reserve->getDateFin()->add(new DateInterval('PT' . $result['duree'] . 'H'));
        if (isDisponible($reserve->getDateDebut(), $reserve->getDateFin(), $salleId, $app)) {
          $em->persist($reserve);
          $em->flush($reserve);
          $app['session']->getFlashbag()->add('notice', 'Réservation prise en compte');
        } else {
          $app['session']->getFlashBag()->add('error', "La salle n'est pas disponible sur ce créneaux");
        }
      }
    } else {
      $app['session']->getFlashBag()->add('error', "Le formulaire comporte des erreurs");
    }
  }
  return $app['twig']->render('newForm.html.twig', array('form' => $form->createView()));
}

function reservationIndex($user, $app)
{
  $em = $app["orm.em"];
  $repository = $em->getRepository(Reserve::class);
  $result = $repository
    ->createQueryBuilder('r')
    ->leftjoin('r.personneId', 'p')
    ->where('p.id = :id')
    ->setParameter('id', $user[0]->getId())
    ->getQuery()
    ->getResult();
  return $app['twig']->render('mes-reservations.html.twig', ['reservations' => $result]);
}

function _getSalle($salleId, $app)
{
  $em = $app["orm.em"];
  $repository = $em->getRepository(Salle::class);
  $salle = $repository->find(intval($salleId));
  return $salle;
}

function _getPersonne($personneid, $app)
{
  $em = $app["orm.em"];
  $repository = $em->getRepository(Personne::class);
  $salle = $repository->find(intval($personneid));
  return $salle;
}

function _checkCapacite($nombrePersonne, $app, $salle)
{
  $result = true;
  if ($app['session']->get('user')['info'][0]->getIsAdmin()) $nombrePersonne -= 1;
  if ($nombrePersonne > $salle->getCapacite()) $result = false;
  if ($nombrePersonne <= 2 && $salle->getCapacite() == 4) $result = false;
  if ($nombrePersonne <= 4 && $salle->getCapacite() == 6) $result = false;
  return $result;
}

function randomPassword()
{
  $alphabet = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890';
  $pass = array(); //remember to declare $pass as an array
  $alphaLength = strlen($alphabet) - 1; //put the length -1 in cache
  for ($i = 0; $i < 8; $i++) {
    $n = rand(0, $alphaLength);
    $pass[] = $alphabet[$n];
  }
  return implode($pass); //turn the array into a string
}

function isDisponible($dateDebut, $dateFin, $salleid, $app)
{
  $result = true;
  $em = $app['orm.em'];
  $repository = $em->getRepository(Reserve::class);
  $reserves = $repository->findBy(["salleId" => $salleid]);
  foreach ($reserves as $reserve) {
    if ($reserve->getDateDebut() <= $dateDebut && $reserve->getDateFin() >= $dateFin) {
      $result = false;
    }
  }
  return $result;
}
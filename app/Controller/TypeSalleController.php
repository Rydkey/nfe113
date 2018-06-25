<?php
/**
 * Created by PhpStorm.
 * User: rydkey
 * Date: 25/06/18
 * Time: 23:39
 */


use AppBundle\Entity\Salle;
use AppBundle\Entity\TypeSalle;
use AppBundle\Form\Type\NewTypeSalleType;
use Doctrine\DBAL\Exception\UniqueConstraintViolationException;
use Silex\Application;
use Symfony\Component\HttpFoundation\Request;

/**
 * Created by PhpStorm.
 * User: rydkey
 * Date: 25/06/18
 * Time: 22:37
 */


function indexTypeSalle(Silex\Application $app)
{
  $em = $app["orm.em"];
  $repository = $em->getRepository(TypeSalle::class);
  $result = $repository->findBy([], ["id" => "ASC"]);
  return $app['twig']->render('type-salle-index.html.twig', ["typesalles" => $result]);
}

function newTypeSalle(Request $request, \Silex\Application $app)
{
  $typeSalle = new TypeSalle();
  $em = $app['orm.em'];
  $formBuilder = $app['form.factory']->createBuilder(NewTypeSalleType::class, $typeSalle);
  $form = $formBuilder->getForm();
  $form->handleRequest($request);
  if ($form->isSubmitted()) {
    if ($form->isValid()) {
      $em->persist($typeSalle);
      $em->flush($typeSalle);
      $app['session']->getFlashbag()->add('notice', "Le Type de salle à bien été crée.");
      return $app->redirect($app['url_generator']->generate("home"));
    } else {
      $app['session']->getFlashbag()->add('error', "Le formulaire comporte des erreurs.");
    }
  }
  return $app['twig']->render('newForm.html.twig', array('form' => $form->createView()));
}

function updateTypeSalle(Request $request, Application $app, $id)
{
  $typeSalle = _getTypeSalle($id, $app);
  $em = $app['orm.em'];
  $formBuilder = $app['form.factory']->createBuilder(NewTypeSalleType::class, $typeSalle);
  $form = $formBuilder->getForm();
  $form->handleRequest($request);
  if ($form->isSubmitted()) {
    if ($form->isValid()) {
      try {
        $em->persist($typeSalle);
        $em->flush($typeSalle);
        $app['session']->getFlashbag()->add('notice', "Le type salle à bien été Modifié.");
        return $app->redirect($app['url_generator']->generate("home"));
      } catch (UniqueConstraintViolationException $e) {
        $app['session']->getFlashbag()->add('error', "Une salle existe déjà avec ce numéro.");
      }
    } else {
      $app['session']->getFlashbag()->add('error', "Le formulaire comporte des erreurs.");
    }
  }
  return $app['twig']->render('newForm.html.twig', array('form' => $form->createView()));
}

function deleteTypeSalle(Application $app, $id)
{
  $reservation = _getTypeSalle($id, $app);
  $app['orm.em']->remove($reservation);
  $app['orm.em']->flush();
  $app['session']->getFlashbag()->add('warning', "Le type de salle vient d'être supprimée.");
  return $app->redirect($app['url_generator']->generate("home"));
}

function _getTypeSalle($typeSalleId, $app)
{
  $em = $app["orm.em"];
  $repository = $em->getRepository(TypeSalle::class);
  $typeSalle = $repository->find(intval($typeSalleId));
  return $typeSalle;
}
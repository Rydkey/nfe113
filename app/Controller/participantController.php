<?php
/**
 * Created by PhpStorm.
 * User: rydkey
 * Date: 05/10/17
 * Time: 16:00
 */

use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use videoBundle\Entity\participant;
use videoBundle\Entity\pays;
use videoBundle\Form\Type\participantType;

function participantIndexController(Silex\Application $app) {
  $participants = _getAllparticipants($app);
  return $app['twig']->render('participantIndex.html.twig', array('participants' => $participants));
}

function newParticipantController(Symfony\Component\HttpFoundation\Request $request, Silex\Application $app) {
  $newParticipant = new participant();
  $em = $app['orm.em'];
  $formBuilder = $app['form.factory']->createBuilder(participantType::class, $newParticipant);
  $form = $formBuilder->getForm();
  $form->handleRequest($request);
  if ($form->isSubmitted()) {
    if ($form->isValid()) {
      $newParticipant->setIMAGE($request->files->get('participant')['IMAGE']->getClientOriginalName());
      $em->persist($newParticipant);
      $em->flush($newParticipant);
      $app['session']->getFlashbag()->add('notice', 'un participant viens d\'être ajouté');
    } else {
      $app['session']->getFlashBag()->add('error', 'erreur');
    }
  }
  return $app['twig']->render('newForm.html.twig', array('form' => $form->createView()));
}

function _getAllparticipants($app) {
  $em = $app['orm.em'];
  $repository = $em->getRepository(participant::class);
  $result = $repository->findBy([],['NOM_PARTICIPANT'=>'ASC']);
  return $result;
}

function _getParticipantsId($app,$id) {
  $em = $app['orm.em'];
  $repository = $em->getRepository(participant::class);
  $result = $repository->findBy(["ID_PARTICIPANT"=>$id]);
  return $result;
}
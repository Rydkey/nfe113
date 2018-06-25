<?php

use AppBundle\Entity\Salle;
use AppBundle\Form\Type\NewSalleType;
use Doctrine\DBAL\Exception\UniqueConstraintViolationException;
use Silex\Application;
use Symfony\Component\HttpFoundation\Request;

/**
 * Created by PhpStorm.
 * User: rydkey
 * Date: 25/06/18
 * Time: 22:37
 */

function newSalle(Request $request, \Silex\Application $app)
{
  $salle = new Salle();
  $em = $app['orm.em'];
  $formBuilder = $app['form.factory']->createBuilder(NewSalleType::class, $salle);
  $form = $formBuilder->getForm();
  $form->handleRequest($request);
  if ($form->isSubmitted()) {
    if ($form->isValid()) {
      try {
        $em->persist($salle);
        $em->flush($salle);
        $app['session']->getFlashbag()->add('notice', "La salle à bien été crée.");
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

function updateSalle(Request $request, Application $app, $id)
{
  $salle = _getSalle($id, $app);
  $em = $app['orm.em'];
  $formBuilder = $app['form.factory']->createBuilder(NewSalleType::class, $salle);
  $form = $formBuilder->getForm();
  $form->handleRequest($request);
  if ($form->isSubmitted()) {
    if ($form->isValid()) {
      try {
        $em->persist($salle);
        $em->flush($salle);
        $app['session']->getFlashbag()->add('notice', "La salle à bien été Modifié.");
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

function deleteSalle(Application $app, $id)
{
  $reservation = _getSalle($id, $app);
  $app['orm.em']->remove($reservation);
  $app['orm.em']->flush();
  $app['session']->getFlashbag()->add('warning', "La salle vient d'être supprimée.");
  return $app->redirect($app['url_generator']->generate("home"));
}

function _getSalle($salleId, $app)
{
  $em = $app["orm.em"];
  $repository = $em->getRepository(Salle::class);
  $salle = $repository->find(intval($salleId));
  return $salle;
}
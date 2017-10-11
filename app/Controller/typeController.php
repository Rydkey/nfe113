<?php
/**
 * Created by PhpStorm.
 * User: rydkey
 * Date: 05/10/17
 * Time: 16:33
 */

use videoBundle\Entity\type;
use videoBundle\Form\Type\typeType;

require_once __DIR__ . '/navbarController.php';


function newTypeController(Symfony\Component\HttpFoundation\Request $request, Silex\Application $app) {
  $newType = new type();
  $em = $app['orm.em'];
  $formBuilder = $app['form.factory']->createBuilder(typeType::class, $newType);
  $form = $formBuilder->getForm();
  $form->handleRequest($request);
  if ($form->isSubmitted()) {
    if ($form->isValid()) {
      $em->persist($newType);
      $em->flush($newType);
      $app['session']->getFlashbag()->add('notice', 'un type viens d\'être ajouté');
    } else {
      $app['session']->getFlashBag()->add('error', 'erreur');
    }
  }
  return $app['twig']->render('newForm.html.twig', array(
    'form' => $form->createView()));
}
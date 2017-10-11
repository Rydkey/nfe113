<?php
/**
 * Created by PhpStorm.
 * User: rydkey
 * Date: 05/10/17
 * Time: 16:33
 */

use videoBundle\Entity\categorie;
use videoBundle\Form\Type\categorieType;

require_once __DIR__ . '/navbarController.php';


/**
 * @param \Symfony\Component\HttpFoundation\Request $request
 * @param \Silex\Application $app
 * @return mixed
 */
function newCategorieController(Symfony\Component\HttpFoundation\Request $request, Silex\Application $app) {
  $newCategorie = new categorie();
  $em = $app['orm.em'];
  $formBuilder = $app['form.factory']->createBuilder(categorieType::class, $newCategorie);
  $form = $formBuilder->getForm();
  $form->handleRequest($request);
  if ($form->isSubmitted()) {
    if ($form->isValid()) {
      $em->persist($newCategorie);
      $em->flush($newCategorie);
      $app['session']->getFlashbag()->add('notice', 'une categorie viens d\'être ajoutée');
    } else {
      $app['session']->getFlashBag()->add('error', 'erreur');
    }
  }
  return $app['twig']->render('newForm.html.twig', array(
    'form' => $form->createView()));
}
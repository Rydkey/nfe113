<?php

use AppBundle\Entity\Personne;
use AppBundle\Form\Type\ConnectionType;
use Silex\Application;
use Symfony\Component\HttpFoundation\Request;

/**
 * Created by PhpStorm.
 * User: rydkey
 * Date: 22/06/18
 * Time: 19:51
 * @param Request $request
 * @param $app
 */

function connectionController(Request $request, Application $app)
{
  $formBuilder = $app['form.factory']->createBuilder(ConnectionType::class, null);
  $form = $formBuilder->getForm();
  $form->handleRequest($request);
  if ($form->isSubmitted()) {
    if ($form->isValid()) {
      $em = $app["orm.em"];
      $repository = $em->getRepository(Personne::class);
      $result = $repository->findBy([
        'login' => $request->request->get("connection")["login"],
        'pwd' => md5($request->request->get("connection")["pwd"]),
      ]);
      if (!empty($result)) {
        $app['session']->set("user", ["info" => $result]);
        return $app->redirect($app['url_generator']->generate("home"));
      } else {
        $app['session']->getFlashBag()->add('error', "Mot de passe ou login non reconnus");
      }
    } else {
      $app['session']->getFlashBag()->add('error', "Essayez plus tard");
    }
  }
  return $app['twig']->render('newForm.html.twig', array('form' => $form->createView()));
}
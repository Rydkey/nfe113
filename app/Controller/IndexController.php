<?php

use AppBundle\Entity\Salle;

/**
 * Created by PhpStorm.
 * User: rydkey
 * Date: 05/10/17
 * Time: 14:36
 */


function testController(Silex\Application $app)
{
  return $app['twig']->render('test.html.twig');
}

function indexController(Silex\Application $app)
{
  $em = $app["orm.em"];
  $repository = $em->getRepository(Salle::class);
  $result = $repository->findBy([], ["numero" => "ASC"]);
  return $app['twig']->render('index.html.twig', ["salles" => $result]);
}
<?php
/**
 * Created by PhpStorm.
 * User: rydkey
 * Date: 05/10/17
 * Time: 14:36
 */


function testController(Silex\Application $app) {;
  return $app['twig']->render('test.html.twig');
}

function indexController(Silex\Application $app) {
  return $app['twig']->render('index.html.twig');
}
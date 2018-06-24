<?php
/**
 * Created by PhpStorm.
 * User: rrisser
 * Date: 06/04/17
 * Time: 14:44
 */
// Ce fichier permet d'indiquer les routes de l'application.

include('Controller.php');

use Symfony\Component\HttpFoundation\Request;

$dir = explode('web/app.php', $_SERVER['SCRIPT_NAME'])[0];
// Home page
$app->match($dir, function () use ($app) {
  return indexController($app);
})->bind('home');

$app->match($dir . "connection", function (Request $request) use ($app) {
  return connectionController($request, $app);
})->bind("connection");

$app->match($dir . "deconnection", function (Request $request) use ($app) {
  $app['session']->set("user", null);
  return $app->redirect($app['url_generator']->generate("home"));
})->bind("deconnection");

$app->match($dir . "reservation/{salleid}", function (Request $request, $salleid) use ($app) {
  if ($app['session']->get('user')['info'] == null) {
    return $app->redirect($app['url_generator']->generate("connection"));
  } else {
    return newReservation($request, $app, $salleid);
  }
})->bind('reservation');

$app->match($dir . "mes-reservations", function (Request $request) use ($app) {
  if ($app['session']->get('user')['info'] == null) {
    return $app->redirect($app['url_generator']->generate("connection"));
  } else {
    return reservationIndex($app['session']->get('user')['info'], $app);
  }
})->bind("mes-reservations");

$app->match($dir . "ma-reservation/{id}", function (Request $request, $id) use ($app) {
  if ($app['session']->get('user')['info'] == null) {
    return $app->redirect($app['url_generator']->generate("connection"));
  } else {
    return reservationDetail($app, $id);
  }
})->bind("ma-reservation");

$app->match($dir . "reservation/delete/{id}", function (Request $request, $id) use ($app) {
  if ($app['session']->get('user')['info'] == null) {
    return $app->redirect($app['url_generator']->generate("connection"));
  } else {
    return reservationDelete($app, $id);
  }
})->bind("delete-reservation");


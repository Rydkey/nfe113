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

$app->match($dir . "reservations/all", function (Request $request) use ($app) {
  if ($app['session']->get('user')['info'] == null || !$app['session']->get('user')['info'][0]->getIsAdmin()) {
    return $app->redirect($app['url_generator']->generate("home"));
  } else {
    return reservationAllDetail($app);
  }
})->bind("all-reservation");

$app->match($dir . "reservation-delete/{id}", function (Request $request, $id) use ($app) {
  if ($app['session']->get('user')['info'] == null) {
    return $app->redirect($app['url_generator']->generate("home"));
  } else {
    return reservationDelete($app, $id);
  }
})->bind("delete-reservation");

$app->match($dir . "ajouter-salle", function (Request $request) use ($app) {
  if ($app['session']->get('user')['info'] == null || !$app['session']->get('user')['info'][0]->getIsAdmin()) {
    return $app->redirect($app['url_generator']->generate("home"));
  } else {
    return newSalle($request, $app);
  }
})->bind("new-salle");

$app->match($dir . "modifier-salle/{id}", function (Request $request, $id) use ($app) {
  if ($app['session']->get('user')['info'] == null || !$app['session']->get('user')['info'][0]->getIsAdmin()) {
    return $app->redirect($app['url_generator']->generate("home"));
  } else {
    return updateSalle($request, $app, $id);
  }
})->bind("update-salle");

$app->match($dir . "supprimer-salle/{id}", function (Request $request, $id) use ($app) {
  if ($app['session']->get('user')['info'] == null || !$app['session']->get('user')['info'][0]->getIsAdmin()) {
    return $app->redirect($app['url_generator']->generate("home"));
  } else {
    return deleteSalle($app, $id);
  }
})->bind("delete-salle");

$app->match($dir . 'type-salle/all', function () use ($app) {
  return indexTypeSalle($app);
})->bind('all-typesalle');

$app->match($dir . "ajouter-type-salle", function (Request $request) use ($app) {
  if ($app['session']->get('user')['info'] == null || !$app['session']->get('user')['info'][0]->getIsAdmin()) {
    return $app->redirect($app['url_generator']->generate("home"));
  } else {
    return newTypeSalle($request, $app);
  }
})->bind("new-typesalle");

$app->match($dir . "modifier-type-salle/{id}", function (Request $request, $id) use ($app) {
  if ($app['session']->get('user')['info'] == null || !$app['session']->get('user')['info'][0]->getIsAdmin()) {
    return $app->redirect($app['url_generator']->generate("home"));
  } else {
    return updateTypeSalle($request, $app, $id);
  }
})->bind("update-typesalle");

$app->match($dir . "supprimer-type-salle/{id}", function (Request $request, $id) use ($app) {
  if ($app['session']->get('user')['info'] == null || !$app['session']->get('user')['info'][0]->getIsAdmin()) {
    return $app->redirect($app['url_generator']->generate("home"));
  } else {
    return deleteTypeSalle($app, $id);
  }
})->bind("delete-typesalle");

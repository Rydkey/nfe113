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

$app->match($dir . 'test', function () use ($app) {
  return testController($app);
})->bind('test');

$app->match($dir . 'films', function () use ($app) {
  return filmIndexController($app);
})->bind('films');

$app->match($dir . 'film/{id}', function ($id) use ($app) {
  if (!isset($id)) {
    $app->abort(404, "Film $id does not exist.");
  }
  $post = $id;
  return filmDetailController($app,$post);
})->bind('film');

$app->match($dir . 'participants', function () use ($app) {
  return participantIndexController($app);
})->bind('participants');

$app->match($dir . 'ajouter-type', function (Request $request) use ($app) {
  return newTypeController($request, $app);
})->bind('newtype');

$app->match($dir . 'ajouter-categorie', function (Request $request) use ($app) {
  return newCategorieController($request, $app);
})->bind('newcat');

$app->match($dir . 'ajouter-participant', function (Request $request) use ($app) {
  $app['session']->getFlashbag()->add('warning', 'veillez à placer votre image dans le répertoire /web/img/');
  return newParticipantController($request, $app);
})->bind('newpart');
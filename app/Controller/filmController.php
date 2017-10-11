<?php
/**
 * Created by PhpStorm.
 * User: rydkey
 * Date: 05/10/17
 * Time: 14:42
 */

use videoBundle\Entity\type_video;
use videoBundle\Entity\video;


function filmDetailController(Silex\Application $app, $id) {
  $film = _getFilm($app, $id);
  $film_type = _getFilmType($app, $id);
//  $film_participants = _getFilmParticipant($app, $id);
  return $app['twig']->render('filmDetail.html.twig', array('film' => $film, 'film_type' => $film_type, /*'film_participants' => $film_participants*/));
}

function filmIndexController(Silex\Application $app) {
  $films = _getAllFilms($app);
  return $app['twig']->render('filmIndex.html.twig', array('films' => $films,));
}

function _getAllFilms($app) {
  $em = $app['orm.em'];
  $repository = $em->getRepository(video::class);
  $result = $repository->findBy([],["TITRE_VIDEO"=>"ASC"]);
  return $result;
}

function _getFilm($app, $id) {
  $em = $app['orm.em'];
  $repository = $em->getRepository(video::class);
  $result = $repository->find($id);
  return $result;
}

function _getFilmType($app, $id) {
  $em = $app['orm.em'];
  $repository = $em->getRepository(\videoBundle\Entity\typeVideo::class);
  $result = $repository->findBy(['ID_VIDEO' => $id]);
  return $result;
}

function _getFilmParticipant($app, $id) {
  $em = $app['orm.em'];
  $repository = $em->getRepository(\videoBundle\Entity\video::class);
  $result=$repository->findBy($id);
  return $result;
}
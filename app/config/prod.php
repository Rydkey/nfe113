<?php
/**
 * Created by PhpStorm.
 * User: rrisser
 * Date: 06/04/17
 * Time: 14:39
 */
$db_config = array(
  'driver'   => 'pdo_pgsql', //définit le driver pour la BDD
  'charset'  => 'utf8', //définit le charset pour la BDD
  'host'     => 'localhost',  //serveur pour la BDD
  'port'     => '5432',  //port du serveur
  'dbname'   => 'NFE113',  //nom de la BDD
  'user'     => 'postgres', //Utilisateur
  'password' => 'Remy9097*', //mot de passe
);

$app['orm.proxies_dir'] = __DIR__.'/../cache/doctrine/proxies';
$app['orm.default_cache'] = 'array';
$app['orm.em.options'] = array(
  'mappings' => array(
    array(
      'type' => 'annotation',
      'path' => __DIR__.'/../../src',
      'namespace' => 'AppBundle\Entity',
    ),
  ),
);
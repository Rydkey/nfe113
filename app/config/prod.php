<?php
/**
 * Created by PhpStorm.
 * User: rrisser
 * Date: 06/04/17
 * Time: 14:39
 */
$db_config = array(
  'driver'   => 'pdo_pgsql',
  'charset'  => 'utf8',
  'host'     => 'localhost',
  'port'     => '5432',
  'dbname'   => 'NFE113',
  'user'     => 'votre identifiant',
  'password' => 'votre mot de passe',
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
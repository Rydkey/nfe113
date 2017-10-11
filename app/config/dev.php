<?php
/**
 * Created by PhpStorm.
 * User: rrisser
 * Date: 06/04/17
 * Time: 14:39
 */

// inclus la définition de la base de données.
require __DIR__.'/prod.php';

//débug de silex, ne pas toucher pour le dev
$app['debug'] = true;

//permet de récupéré l'URL de base de l'appliquation, ne pas toucher
define('BASE_URL', explode('app.php', $_SERVER['SCRIPT_NAME'])[0]);
define('BDD',$db_config);//informations de la BDD si il y à enregistrement


<?php
/**
 * Created by PhpStorm.
 * User: rrisser
 * Date: 06/04/17
 * Time: 14:37
 */

use AppBundle\Extension\ManagerRegistry;
use Symfony\Component\Debug\ErrorHandler;
use Symfony\Component\Debug\ExceptionHandler;
use Dflydev\Provider\DoctrineOrm\DoctrineOrmServiceProvider;
use Silex\Provider\FormServiceProvider;

// Register global error and exception handlers
ErrorHandler::register();
ExceptionHandler::register();

// Register service providers.

$app->register(new FormServiceProvider());
$app->extend('form.extensions', function ($extensions, $app) {
  $manager = new ManagerRegistry(null, array(), array('default'), null, null, '\Doctrine\ORM\Proxy\Proxy');
  $manager->setContainer($app);
  $extensions[] = new Symfony\Bridge\Doctrine\Form\DoctrineOrmExtension($manager);

  return $extensions;
});

$app->register(new Silex\Provider\TwigServiceProvider(),
  array(
    'twig.path'           => __DIR__ . '/../views',
    'twig.form.templates' => ["bootstrap_3_layout.html.twig"]
  ));
$app->register(new Silex\Provider\DoctrineServiceProvider());
$app['db.options'] = array('driver'   => BDD['driver'],
                           //définit le driver pour la BDD
                           'charset'  => BDD['charset'],
                           //définit le charset pour la BDD
                           'host'     => BDD['host'],
                           //serveur pour la BDD
                           'port'     => BDD['port'],
                           //port du serveur
                           'dbname'   => BDD['dbname'],
                           //nom de la BDD
                           'user'     => BDD['user'],
                           //Utilisateur
                           'password' => BDD['password'],
                           //mot de passe
);
$app->register(new DoctrineOrmServiceProvider, array('orm.em.options' => array('mappings' => array(
  array('type'      => 'annotation',
        'namespace' => 'AppBundle\Entity',
        'path'      => __DIR__ . '/../src/Entity',)

),),));

$app->register(new Silex\Provider\TranslationServiceProvider(), array('translator.domains' => array(),));
$app->register(new Silex\Provider\SessionServiceProvider());

$app->register(new Silex\Provider\TranslationServiceProvider(), array('translator.domains' => array(),));
$app->register(new Silex\Provider\LocaleServiceProvider());
$app->register(new Silex\Provider\TranslationServiceProvider());
$app->register(new Silex\Provider\ValidatorServiceProvider());
// rajoute la méthode asset dans twig
$app->register(new Silex\Provider\AssetServiceProvider(), array('assets.named_packages' => array('css'            => array('base_path' => BASE_URL . 'css'),
                                                                                                 'img'            => array('base_path' => BASE_URL . 'img'),
                                                                                                 'imgVIDEO'       => array('base_path' => BASE_URL . 'img/imagesvideos'),
                                                                                                 'imgPARTICIPANT' => array('base_path' => BASE_URL . 'img/imagespersonnes'),
                                                                                                 'js'             => array('base_path' => BASE_URL . 'js'),
                                                                                                 'libcss'         => array('base_path' => BASE_URL . 'lib/bootstrap/css'),
                                                                                                 'libjs'          => array('base_path' => BASE_URL . 'lib/bootstrap/js'),)));

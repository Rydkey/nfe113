<?php
/**
 * Created by PhpStorm.
 * User: rydkey
 * Date: 05/10/17
 * Time: 14:37
 */

use videoBundle\Entity\categorie;
use videoBundle\Entity\type;

function _getNavBarCategories($app) {
  $em = $app['orm.em'];
  $repository = $em->getRepository(categorie::class);
  $result = $repository->findAll();
  return $result;
}

function _getNavBarTypes($app) {
  $em = $app['orm.em'];
  $repository = $em->getRepository(type::class);
  $result = $repository->findAll();
  return $result;
}


<?php
/**
 * Created by PhpStorm.
 * User: rydkey
 * Date: 22/06/18
 * Time: 16:03
 */

namespace AppBundle\Form\Type;


use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;

class NewTypeSalleType extends AbstractType
{
  function __construct()
  {
  }

  function buildForm(FormBuilderInterface $builder, array $options)
  {
    $builder->add("nom", TextType::class, [
      "label" => "Libellé du type de salle",
    ]);
    $builder->getForm();
  }
}
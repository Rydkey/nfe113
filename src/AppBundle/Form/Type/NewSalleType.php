<?php
/**
 * Created by PhpStorm.
 * User: rydkey
 * Date: 22/06/18
 * Time: 16:03
 */

namespace AppBundle\Form\Type;


use AppBundle\Entity\TypeSalle;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;

class NewSalleType extends AbstractType
{
  function __construct()
  {
  }

  function buildForm(FormBuilderInterface $builder, array $options)
  {
    $builder->add("numero", TextType::class, [
      "label" => "Numéro de la Salle",
    ]);

    $builder->add("typesalleid", EntityType::class, [
      'class' => TypeSalle::class,
      'choice_label' => 'nom',
      'multiple' => false,
      'expanded' => false,
      'required' => true,
      'label' => "Type de Salle",
    ]);

    $builder->add("capacite", ChoiceType::class, [
      'choices' => [
        '1' => 1,
        '4' => 4,
        '6' => 6,
      ],
      'label' => "Capacités"
    ]);
    $builder->getForm();
  }
}
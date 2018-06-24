<?php
/**
 * Created by PhpStorm.
 * User: rydkey
 * Date: 22/06/18
 * Time: 16:03
 */

namespace AppBundle\Form\Type;


use AppBundle\Entity\Personne;
use AppBundle\Entity\Salle;
use Doctrine\ORM\EntityRepository;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\DateIntervalType;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;
use Symfony\Component\Form\Extension\Core\Type\NumberType;
use Symfony\Component\Form\Extension\Core\Type\TimeType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Form\FormEvent;
use Symfony\Component\Form\FormEvents;

class NewReservationType extends AbstractType
{
  function __construct() { }

  function buildForm(FormBuilderInterface $builder, array $options)
  {
    $builder->add("personneId", EntityType::class, [
      'class'         => Personne::class,
      'query_builder' => function (EntityRepository $er) {
        return $er->createQueryBuilder('u')
          ->where("u.isAdmin = false")
          ->orderBy('u.prenom', 'ASC');
      },
      'multiple'      => true,
      'expanded'      => false,
      'required'      => false,
      'label'         => "Participants",
    ]);

    //    $builder->add("salleid", EntityType::class, [
//      'class'        => Salle::class,
//      'choice_label' => 'numero',
//      'multiple'     => false,
//      'expanded'     => false,
//      'required'     => true,
//      'label'        => "Salle",
//    ]);


    $builder->add('dateDebut', DateTimeType::class, [
      'label'       => "heure de début",
      'date_widget' => "single_text",
      'hours'       => range(8, 18),
      'minutes'     => [0,
                        30]
    ]);

    $builder->add('duree', ChoiceType::class, [
      'choices' => [
        '1' => 1,
        '2' => 2,
        '3' => 3,
        '4' => 4,
      ]
    ]);

    $builder->getForm();
  }
}
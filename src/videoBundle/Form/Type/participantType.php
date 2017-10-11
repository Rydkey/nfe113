<?php
/**
 * Created by PhpStorm.
 * User: rydkey
 * Date: 05/10/17
 * Time: 19:27
 */

namespace videoBundle\Form\Type;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\Extension\Core\Type\NumberType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use videoBundle\Entity\pays;


class participantType extends AbstractType{
  public function __construct() {
  }

  public function buildForm(FormBuilderInterface $builder, array $options) {
    $builder->add('NOM_PARTICIPANT', TextType::class, array(
      'attr' => array('placeholder' => 'Nom'),
      'label' => 'Nom du participant : '));

    $builder->add('PRENOM_PARTICIPANT', TextType::class, array(
      'attr' => array('placeholder' => 'Prénom'),
      'label' => 'Prénom du participant : '));

    $builder->add('DATE_NAISSANCE', DateType::class, array(
      'attr' => array('placeholder' => 'Date de naissance'),
      'widget'=>'single_text',
      'label' => 'Date de naissance : '));

    $builder->add('IMAGE', FileType::class, array(
      'attr' => array('placeholder' => 'Image'),
      'label' => 'Image : '));

    $builder->add('ID_PAYS', EntityType::class, array(
      'class' => pays::class,
      'choice_label' => 'NOM_PAYS',
      'multiple' => false,
      'expanded' => false,
      'required' => true,
      'label' => 'Pays'));
    $builder->getForm();
  }
}
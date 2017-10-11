<?php
/**
 * Created by PhpStorm.
 * User: rydkey
 * Date: 05/10/17
 * Time: 16:25
 */

namespace videoBundle\Form\Type;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class typeType extends AbstractType {
  public function __construct() {
  }

  public function buildForm(FormBuilderInterface $builder, array $options) {

    $builder->add('LIB_TYPE', TextType::class, array(   //ici le champs
      'attr' => array('placeholder' => 'Libellé du Type'),         //mail du formulaire
      'label' => 'Libellé du Type : '));
    $builder->getForm();

  }

  public function setDefaultOptions(OptionsResolver $resolver) {
    $resolver->setDefaults(array('data_class' => 'Entity\type'));
  }

  public function getName() {
    return 'typeFormType';
  }
}
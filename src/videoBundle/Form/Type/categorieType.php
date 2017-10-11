<?php
/**
 * Created by PhpStorm.
 * User: rydkey
 * Date: 05/10/17
 * Time: 17:03
 */

namespace videoBundle\Form\Type;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\CheckboxType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Form\Extension\Core\Type\NumberType;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Validator\Constraints as Assert;

class categorieType extends AbstractType{
  public function __construct() {
  }

  public function buildForm(FormBuilderInterface $builder, array $options) {

    $builder->add('LIB_CAT', TextType::class, array(   //ici le champs
      'attr' => array('placeholder' => 'Libellé de la catégorie'),         //mail du formulaire
      'label' => 'Libellé de la catégorie : '));
    $builder->getForm();

  }

  public function setDefaultOptions(OptionsResolver $resolver) {
    $resolver->setDefaults(array('data_class' => 'Entity\categorie'));
  }

  public function getName() {
    return 'categorieFormType';
  }
}
<?php
/**
 * Created by PhpStorm.
 * User: rydkey
 * Date: 22/06/18
 * Time: 16:03
 */

namespace AppBundle\Form\Type;


use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class ConnectionType extends AbstractType
{
  public function __construct() { }

  public function buildForm(FormBuilderInterface $builder, array $options)
  {
    $builder->add('login', TextType::class, [
      'attr'  => [
      ],
      'label' => 'Login',
    ]);
    $builder->add('pwd', PasswordType::class, [
      'attr'  => [
      ],
      'label' => 'Mot de passe',
    ]);

    $builder->getForm();
  }

  public function setDefaultOptions(OptionsResolver $resolver)
  {
    $resolver->setDefaults(array('data_class' => 'Entity\Personne'));
  }

  public function getName()
  {
    return 'connectionFormType';
  }
}
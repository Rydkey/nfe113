<?php
/**
 * Created by PhpStorm.
 * User: rydkey
 * Date: 22/06/18
 * Time: 16:00
 */

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping\Column;
use Doctrine\ORM\Mapping\Entity;
use Doctrine\ORM\Mapping\GeneratedValue;
use Doctrine\ORM\Mapping\Id;
use Doctrine\ORM\Mapping\Table;

/**
 * Form
 * @Table(name="typesalle")
 * @Entity()
 */
class TypeSalle
{
  /**
   * @var int
   *
   * @Column(name="id", type="integer")
   * @Id
   * @GeneratedValue(strategy="AUTO")
   */
  private $id;
  /**
   * @var string
   *
   * @Column(name="nom", type="string", length=255)
   */
  private $nom;

  /**
   * Get id
   *
   * @return int
   */
  public function getId()
  {
    return $this->id;
  }

  /**
   * Set nom
   *
   * @param string $nom
   *
   * @return TypeSalle
   */
  public function setNom($nom)
  {
    $this->nom = $nom;
    return $this;
  }

  /**
   * Get nom
   *
   * @return string
   */
  public function getNom()
  {
    return $this->nom;
  }

  public function __toString()
  {
    return $this->nom;
  }
}

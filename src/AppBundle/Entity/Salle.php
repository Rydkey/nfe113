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
use Doctrine\ORM\Mapping\JoinColumn;
use Doctrine\ORM\Mapping\ManyToOne;
use Doctrine\ORM\Mapping\Table;

/**
 * Form
 * @Table(name="salle")
 * @Entity()
 */
class Salle
{
  /**
   *
   * @Column(name="id", type="integer")
   * @Id
   * @GeneratedValue(strategy="AUTO")
   */
  private $id;
  /**
   * @ManyToOne(targetEntity="AppBundle\Entity\TypeSalle", cascade={"persist"})
   * @JoinColumn(name="typesalleid", referencedColumnName="id")
   **/
  private $typeSalleId;
  /**
   * @var string
   *
   * @Column(name="numero", type="string", length=255)
   */
  private $numero;
  /**
   * @var int
   *
   * @Column(name="capacite", type="integer")
   */
  private $capacite;

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
   * Set typeSalleId
   *
   * @param integer $typeSalleId
   *
   * @return Salle
   */
  public function setTypeSalleId($typeSalleId)
  {
    $this->typeSalleId = $typeSalleId;
    return $this;
  }

  /**
   * Get typeSalleId
   *
   * @return int
   */
  public function getTypeSalleId()
  {
    return $this->typeSalleId;
  }

  /**
   * Set numero
   *
   * @param string $numero
   *
   * @return Salle
   */
  public function setNumero($numero)
  {
    $this->numero = $numero;
    return $this;
  }

  /**
   * Get numero
   *
   * @return string
   */
  public function getNumero()
  {
    return $this->numero;
  }

  /**
   * Set capacite
   *
   * @param integer $capacite
   *
   * @return Salle
   */
  public function setCapacite($capacite)
  {
    $this->capacite = $capacite;
    return $this;
  }

  /**
   * Get capacite
   *
   * @return int
   */
  public function getCapacite()
  {
    return $this->capacite;
  }

  public function __toString()
  {
    return $this->numero;
  }
}

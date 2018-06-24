<?php
/**
 * Created by PhpStorm.
 * User: rydkey
 * Date: 22/06/18
 * Time: 11:55
 */

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping\Column;
use Doctrine\ORM\Mapping\Entity;
use Doctrine\ORM\Mapping\GeneratedValue;
use Doctrine\ORM\Mapping\Id;
use Doctrine\ORM\Mapping\JoinColumn;
use Doctrine\ORM\Mapping\JoinTable;
use Doctrine\ORM\Mapping\ManyToMany;
use Doctrine\ORM\Mapping\ManyToOne;
use Doctrine\ORM\Mapping\Table;

/**
 * Form
 * @Table(name="reserve")
 * @Entity()
 */
class Reserve
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
   * @ManyToMany(targetEntity="AppBundle\Entity\Personne", cascade={"persist"})
   * @JoinTable(name="personnereserve",
   *  joinColumns={@JoinColumn(name="reserveid", referencedColumnName="id")},
   *   inverseJoinColumns={@JoinColumn(name="personneid", referencedColumnName="id",
   *   unique=false)}
   *   )
   **/
  private $personneId;
  /**
   * @ManyToOne(targetEntity="AppBundle\Entity\Salle", cascade={"persist"})
   * @JoinColumn(name="salleid", referencedColumnName="id")
   **/
  private $salleId;
  /**
   * @var int
   *
   * @Column(name="duree", type="integer")
   */
  private $duree;
  /**
   * @var \DateTime
   *
   * @Column(name="dateDebut", type="datetime")
   */
  private $dateDebut;
  /**
   * @var \DateTime
   *
   * @Column(name="dateFin", type="datetime")
   */
  private $dateFin;
  /**
   *
   * @Column(name="code", type="string")
   */
  private $code;
  /**
   * @var int
   *
   * @Column(name="status", type="integer")
   */
  private $status;

  /**
   * Constructor
   */
  public function __construct()
  {
    $this->personneId = new \Doctrine\Common\Collections\ArrayCollection();
  }

  /**
   * Get id
   *
   * @return integer
   */
  public function getId()
  {
    return $this->id;
  }

  /**
   * Get duree
   *
   * @return integer
   */
  public function getDuree()
  {
    return $this->duree;
  }

  /**
   * Set duree
   *
   * @param integer $duree
   *
   * @return Reserve
   */
  public function setDuree($duree)
  {
    $this->duree = $duree;

    return $this;
  }

  /**
   * Get dateDebut
   *
   * @return \DateTime
   */
  public function getDateDebut()
  {
    return $this->dateDebut;
  }

  /**
   * Set dateDebut
   *
   * @param \DateTime $dateDebut
   *
   * @return Reserve
   */
  public function setDateDebut($dateDebut)
  {
    $this->dateDebut = $dateDebut;

    return $this;
  }

  /**
   * Get dateFin
   *
   * @return \DateTime
   */
  public function getDateFin()
  {
    return $this->dateFin;
  }

  /**
   * Set dateFin
   *
   * @param \DateTime $dateFin
   *
   * @return Reserve
   */
  public function setDateFin($dateFin)
  {
    $this->dateFin = $dateFin;

    return $this;
  }

  /**
   * Get code
   *
   * @return integer
   */
  public function getCode()
  {
    return $this->code;
  }

  /**
   * Set code
   *
   * @param integer $code
   *
   * @return Reserve
   */
  public function setCode($code)
  {
    $this->code = $code;

    return $this;
  }

  /**
   * Get status
   *
   * @return integer
   */
  public function getStatus()
  {
    return $this->status;
  }

  /**
   * Set status
   *
   * @param integer $status
   *
   * @return Reserve
   */
  public function setStatus($status)
  {
    $this->status = $status;

    return $this;
  }

  /**
   * Add personneId
   *
   * @param \AppBundle\Entity\Personne $personneId
   *
   * @return Reserve
   */
  public function addPersonneId(\AppBundle\Entity\Personne $personneId)
  {
    $this->personneId[] = $personneId;

    return $this;
  }

  /**
   * Remove personneId
   *
   * @param \AppBundle\Entity\Personne $personneId
   */
  public function removePersonneId(\AppBundle\Entity\Personne $personneId)
  {
    $this->personneId->removeElement($personneId);
  }

  /**
   * Get personneId
   *
   * @return \Doctrine\Common\Collections\Collection
   */
  public function getPersonneId()
  {
    return $this->personneId;
  }

  /**
   * Get salleId
   *
   * @return \AppBundle\Entity\Salle
   */
  public function getSalleId()
  {
    return $this->salleId;
  }

  /**
   * Set salleId
   *
   * @param \AppBundle\Entity\Salle $salleId
   *
   * @return Reserve
   */
  public function setSalleId(\AppBundle\Entity\Salle $salleId = null)
  {
    $this->salleId = $salleId;

    return $this;
  }
}

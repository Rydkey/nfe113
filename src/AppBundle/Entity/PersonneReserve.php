<?php
/**
 * Created by PhpStorm.
 * User: rydkey
 * Date: 23/06/18
 * Time: 22:59
 */

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping\Column;
use Doctrine\ORM\Mapping\Entity;
use Doctrine\ORM\Mapping\GeneratedValue;
use Doctrine\ORM\Mapping\Id;
use Doctrine\ORM\Mapping\JoinColumn;
use Doctrine\ORM\Mapping\ManyToOne;
use Doctrine\ORM\Mapping\OneToOne;
use Doctrine\ORM\Mapping\Table;

/**
 * Form
 * @Table(name="personnereserve")
 * @Entity()
 */
class PersonneReserve
{
  /**
   * @Id
   * @Column(type="integer")
   * @GeneratedValue(strategy="AUTO")
   */
  protected $id;

  /**
   * @OneToOne(targetEntity="AppBundle\Entity\Reserve", cascade={"persist"})
   * @JoinColumn(name="reserveid", referencedColumnName="id")
   **/
  protected $reserveid;

  /**
   * @ManyToOne(targetEntity="AppBundle\Entity\Personne", cascade={"persist"})
   * @JoinColumn(name="personneid", referencedColumnName="id")
   **/
  protected $personneid;


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
   * Set reserveid
   *
   * @param \AppBundle\Entity\Reserve $reserveid
   *
   * @return PersonneReserve
   */
  public function setReserveid(\AppBundle\Entity\Reserve $reserveid = null)
  {
    $this->reserveid = $reserveid;

    return $this;
  }

  /**
   * Get reserveid
   *
   * @return \AppBundle\Entity\Reserve
   */
  public function getReserveid()
  {
    return $this->reserveid;
  }

  /**
   * Set personneid
   *
   * @param \AppBundle\Entity\Personne $personneid
   *
   * @return PersonneReserve
   */
  public function setPersonneid(\AppBundle\Entity\Personne $personneid = null)
  {
    $this->personneid = $personneid;

    return $this;
  }

  /**
   * Get personneid
   *
   * @return \AppBundle\Entity\Personne
   */
  public function getPersonneid()
  {
    return $this->personneid;
  }
}

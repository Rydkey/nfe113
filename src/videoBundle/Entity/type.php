<?php
/**
 * Created by PhpStorm.
 * User: rydkey
 * Date: 05/10/17
 * Time: 14:17
 */

namespace videoBundle\Entity;

/**
 * Form
 * @Table(name="type")
 * @Entity()
 */
class type
{
  /**
   * @Id
   * @Column(type="integer")
   * @GeneratedValue(strategy="AUTO")
   */
  protected $ID_TYPE;

  /**
   * @Column(type="string")
   *
   */
  protected $LIB_TYPE;
  /**
   * @ManyToMany(targetEntity="videoBundle\Entity\video", cascade={"persist"})
   * @JoinTable(name="type_video",
   *  joinColumns={@JoinColumn(name="ID_TYPE", referencedColumnName="ID_TYPE")},
   *   inverseJoinColumns={@JoinColumn(name="ID_VIDEO", referencedColumnName="ID_VIDEO", unique=false)}
   *   )
   **/
  protected $type;

  /**
   * Constructor
   */
  public function __construct() {
    $this->type = new \Doctrine\Common\Collections\ArrayCollection();
  }

  /**
   * Get iDTYPE
   *
   * @return integer
   */
  public function getIDTYPE() {
    return $this->ID_TYPE;
  }

  /**
   * Get lIBTYPE
   *
   * @return string
   */
  public function getLIBTYPE() {
    return $this->LIB_TYPE;
  }

  /**
   * Set lIBTYPE
   *
   * @param string $lIBTYPE
   *
   * @return type
   */
  public function setLIBTYPE($lIBTYPE) {
    $this->LIB_TYPE = $lIBTYPE;

    return $this;
  }

  /**
   * Add type
   *
   * @param \videoBundle\Entity\video $type
   *
   * @return type
   */
  public function addType(\videoBundle\Entity\video $type) {
    $this->type[] = $type;

    return $this;
  }

  /**
   * Remove type
   *
   * @param \videoBundle\Entity\video $type
   */
  public function removeType(\videoBundle\Entity\video $type) {
    $this->type->removeElement($type);
  }

  /**
   * Get type
   *
   * @return \Doctrine\Common\Collections\Collection
   */
  public function getType() {
    return $this->type;
  }
}

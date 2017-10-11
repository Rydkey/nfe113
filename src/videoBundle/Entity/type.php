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
class type {
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
   * Get iDTYPE
   *
   * @return integer
   */
  public function getIDTYPE() {
    return $this->ID_TYPE;
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
   * Get lIBTYPE
   *
   * @return string
   */
  public function getLIBTYPE() {
    return $this->LIB_TYPE;
  }
}

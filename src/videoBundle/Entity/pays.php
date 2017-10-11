<?php
/**
 * Created by PhpStorm.
 * User: rydkey
 * Date: 05/10/17
 * Time: 15:20
 */

namespace videoBundle\Entity;

/**
 * Form
 * @Table(name="pays")
 * @Entity()
 */
class pays {
  /**
   * @Id
   * @Column(type="integer")
   * @GeneratedValue(strategy="AUTO")
   */
  protected $ID_PAYS;
  /**
   * @Column(type="string")
   * @GeneratedValue(strategy="AUTO")
   */
  protected $NOM_PAYS;
  /**
   * @Column(type="string")
   * @GeneratedValue(strategy="AUTO")
   */
  protected $SYMBOLE;

  /**
   * Get iDPAYS
   *
   * @return integer
   */
  public function getIDPAYS() {
    return $this->ID_PAYS;
  }

  /**
   * Set nOMPAYS
   *
   * @param string $nOMPAYS
   *
   * @return pays
   */
  public function setNOMPAYS($nOMPAYS) {
    $this->NOM_PAYS = $nOMPAYS;

    return $this;
  }

  /**
   * Get nOMPAYS
   *
   * @return string
   */
  public function getNOMPAYS() {
    return $this->NOM_PAYS;
  }

  /**
   * Set sYMBOLE
   *
   * @param string $sYMBOLE
   *
   * @return pays
   */
  public function setSYMBOLE($sYMBOLE) {
    $this->SYMBOLE = $sYMBOLE;

    return $this;
  }

  /**
   * Get sYMBOLE
   *
   * @return string
   */
  public function getSYMBOLE() {
    return $this->SYMBOLE;
  }

  public function __toString() {
    return $this->getNOMPAYS();
  }
}

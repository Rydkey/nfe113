<?php
/**
 * Created by PhpStorm.
 * User: rydkey
 * Date: 05/10/17
 * Time: 15:21
 */

namespace videoBundle\Entity;

/**
 * Form
 * @Table(name="type_video")
 * @Entity()
 */
class typeVideo {

  /**
   * @Id
   * @OneToOne(targetEntity="videoBundle\Entity\video", cascade={"persist"})
   * @JoinColumn(name="ID_VIDEO", referencedColumnName="ID_VIDEO")
   **/
  protected $ID_VIDEO;

  /**
   * @ManyToOne(targetEntity="videoBundle\Entity\type", cascade={"persist"})
   * @JoinColumn(name="ID_TYPE", referencedColumnName="ID_TYPE")
   **/
  protected $ID_TYPE;

  /**
   * Set iDVIDEO
   *
   * @param \videoBundle\Entity\video $iDVIDEO
   *
   * @return typeVideo
   */
  public function setIDVIDEO(\videoBundle\Entity\video $iDVIDEO) {
    $this->ID_VIDEO = $iDVIDEO;

    return $this;
  }

  /**
   * Get iDVIDEO
   *
   * @return \videoBundle\Entity\video
   */
  public function getIDVIDEO() {
    return $this->ID_VIDEO;
  }

  /**
   * Set iDTYPE
   *
   * @param \videoBundle\Entity\type $iDTYPE
   *
   * @return typeVideo
   */
  public function setIDTYPE(\videoBundle\Entity\type $iDTYPE = null) {
    $this->ID_TYPE = $iDTYPE;

    return $this;
  }

  /**
   * Get iDTYPE
   *
   * @return \videoBundle\Entity\type
   */
  public function getIDTYPE() {
    return $this->ID_TYPE;
  }

  public function __toString() {
    return $this->getIDTYPE()->getLIBTYPE();
  }
}

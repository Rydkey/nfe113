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
 * @Table(name="video")
 * @Entity()
 */
class video
{
  /**
   * @Id
   * @Column(type="integer")
   * @GeneratedValue(strategy="AUTO")
   */
  protected $ID_VIDEO;
  /**
   * @Column(type="string")
   */
  protected $TITRE_VIDEO;
  /**
   * @Column(type="integer")
   */
  protected $DUREE;
  /**
   * @Column(type="string")
   */
  protected $FICHIER;
  /**
   * @Column(type="string")
   */
  protected $IMAGE;
  /**
   * @Column(type="string")
   */
  protected $SYNOPSIS;
  /**
   * @Column(type="integer")
   */
  protected $ANNEE;
  /**
   * @ManyToMany(targetEntity="videoBundle\Entity\participant", cascade={"persist"})
   * @JoinTable(name="distribution",
   *  joinColumns={@JoinColumn(name="ID_VIDEO", referencedColumnName="ID_VIDEO")},
   *   inverseJoinColumns={@JoinColumn(name="ID_PARTICIPANT", referencedColumnName="ID_PARTICIPANT", unique=false)}
   *   )
   **/
  protected $participant;
  /**
   * @ManyToMany(targetEntity="videoBundle\Entity\type", cascade={"persist"})
   * @JoinTable(name="type_video",
   *  joinColumns={@JoinColumn(name="ID_VIDEO", referencedColumnName="ID_VIDEO")},
   *   inverseJoinColumns={@JoinColumn(name="ID_TYPE", referencedColumnName="ID_TYPE", unique=false)}
   *   )
   **/
  protected $type;

  /**
   * Constructor
   */
  public function __construct() {
    $this->participant = new \Doctrine\Common\Collections\ArrayCollection();
    $this->type = new \Doctrine\Common\Collections\ArrayCollection();
  }

  /**
   * Get iDVIDEO
   *
   * @return integer
   */
  public function getIDVIDEO() {
    return $this->ID_VIDEO;
  }

  /**
   * Get tITREVIDEO
   *
   * @return string
   */
  public function getTITREVIDEO() {
    return $this->TITRE_VIDEO;
  }

  /**
   * Set tITREVIDEO
   *
   * @param string $tITREVIDEO
   *
   * @return video
   */
  public function setTITREVIDEO($tITREVIDEO) {
    $this->TITRE_VIDEO = $tITREVIDEO;

    return $this;
  }

  /**
   * Get dUREE
   *
   * @return integer
   */
  public function getDUREE() {
    return $this->DUREE;
  }

  /**
   * Set dUREE
   *
   * @param integer $dUREE
   *
   * @return video
   */
  public function setDUREE($dUREE) {
    $this->DUREE = $dUREE;

    return $this;
  }

  /**
   * Get fICHIER
   *
   * @return string
   */
  public function getFICHIER() {
    return $this->FICHIER;
  }

  /**
   * Set fICHIER
   *
   * @param string $fICHIER
   *
   * @return video
   */
  public function setFICHIER($fICHIER) {
    $this->FICHIER = $fICHIER;

    return $this;
  }

  /**
   * Get iMAGE
   *
   * @return string
   */
  public function getIMAGE() {
    return $this->IMAGE;
  }

  /**
   * Set iMAGE
   *
   * @param string $iMAGE
   *
   * @return video
   */
  public function setIMAGE($iMAGE) {
    $this->IMAGE = $iMAGE;

    return $this;
  }

  /**
   * Get sYNOPSIS
   *
   * @return string
   */
  public function getSYNOPSIS() {
    return $this->SYNOPSIS;
  }

  /**
   * Set sYNOPSIS
   *
   * @param string $sYNOPSIS
   *
   * @return video
   */
  public function setSYNOPSIS($sYNOPSIS) {
    $this->SYNOPSIS = $sYNOPSIS;

    return $this;
  }

  /**
   * Get aNNEE
   *
   * @return integer
   */
  public function getANNEE() {
    return $this->ANNEE;
  }

  /**
   * Set aNNEE
   *
   * @param integer $aNNEE
   *
   * @return video
   */
  public function setANNEE($aNNEE) {
    $this->ANNEE = $aNNEE;

    return $this;
  }

  /**
   * Get participant
   *
   * @return \videoBundle\Entity\participant
   */
  public function getParticipant() {
    return $this->participant;
  }

  /**
   * Set participant
   *
   * @param \videoBundle\Entity\participant $participant
   *
   * @return video
   */
  public function setParticipant(\videoBundle\Entity\participant $participant = null) {
    $this->participant = $participant;

    return $this;
  }

  /**
   * Add participant
   *
   * @param \videoBundle\Entity\participant $participant
   *
   * @return video
   */
  public function addParticipant(\videoBundle\Entity\participant $participant) {
    $this->participant[] = $participant;

    return $this;
  }

  /**
   * Remove participant
   *
   * @param \videoBundle\Entity\participant $participant
   */
  public function removeParticipant(\videoBundle\Entity\participant $participant) {
    $this->participant->removeElement($participant);
  }

  /**
   * Add type
   *
   * @param \videoBundle\Entity\type $type
   *
   * @return video
   */
  public function addType(\videoBundle\Entity\type $type) {
    $this->type[] = $type;

    return $this;
  }

  /**
   * Remove type
   *
   * @param \videoBundle\Entity\type $type
   */
  public function removeType(\videoBundle\Entity\type $type) {
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

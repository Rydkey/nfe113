<?php
/**
 * Created by PhpStorm.
 * User: rydkey
 * Date: 05/10/17
 * Time: 15:20
 */

namespace videoBundle\Entity;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * Form
 * @Table(name="participant")
 * @Entity()
 */
class participant
{
  /**
   * @Id
   * @Column(type="integer")
   * @GeneratedValue(strategy="AUTO")
   */
  protected $ID_PARTICIPANT;
  /**
   * @Column(type="string")
   * @GeneratedValue(strategy="AUTO")
   */
  protected $NOM_PARTICIPANT;
  /**
   * @Column(type="string")
   * @GeneratedValue(strategy="AUTO")
   */
  protected $PRENOM_PARTICIPANT;
  /**
   * @Column(type="datetime")
   * @GeneratedValue(strategy="AUTO")
   */
  protected $DATE_NAISSANCE;
  /**
   * @Column(type="string")
   * @GeneratedValue(strategy="AUTO")
   */
  protected $IMAGE;
  /**
   *
   * @ManyToOne(targetEntity="videoBundle\Entity\pays", cascade={"persist"})
   * @JoinColumn(name="ID_PAYS", referencedColumnName="ID_PAYS")
   **/
  protected $ID_PAYS;
  /**
   * @ManyToMany(targetEntity="videoBundle\Entity\video", cascade={"persist"})
   * @JoinTable(name="distribution",
   *  joinColumns={@JoinColumn(name="ID_PARTICIPANT", referencedColumnName="ID_PARTICIPANT")},
   *   inverseJoinColumns={@JoinColumn(name="ID_VIDEO", referencedColumnName="ID_VIDEO", unique=false)}
   *   )
   **/
  protected $video;


  public function __construct() {
    $this->video = new ArrayCollection();
  }

  /**
   * Get iDPARTICIPANT
   *
   * @return integer
   */
  public function getIDPARTICIPANT() {
    return $this->ID_PARTICIPANT;
  }

  /**
   * Get nOMPARTICIPANT
   *
   * @return string
   */
  public function getNOMPARTICIPANT() {
    return $this->NOM_PARTICIPANT;
  }

  /**
   * Set nOMPARTICIPANT
   *
   * @param string $nOMPARTICIPANT
   *
   * @return participant
   */
  public function setNOMPARTICIPANT($nOMPARTICIPANT) {
    $this->NOM_PARTICIPANT = $nOMPARTICIPANT;

    return $this;
  }

  /**
   * Get pRENOMPARTICIPANT
   *
   * @return string
   */
  public function getPRENOMPARTICIPANT() {
    return $this->PRENOM_PARTICIPANT;
  }

  /**
   * Set pRENOMPARTICIPANT
   *
   * @param string $pRENOMPARTICIPANT
   *
   * @return participant
   */
  public function setPRENOMPARTICIPANT($pRENOMPARTICIPANT) {
    $this->PRENOM_PARTICIPANT = $pRENOMPARTICIPANT;

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
   * @return participant
   */
  public function setIMAGE($iMAGE) {
    $this->IMAGE = $iMAGE;

    return $this;
  }

  /**
   * Get iDPAYS
   *
   * @return \videoBundle\Entity\pays
   */
  public function getIDPAYS() {
    return $this->ID_PAYS;
  }

  /**
   * Set iDPAYS
   *
   * @param \videoBundle\Entity\pays $iDPAYS
   *
   * @return participant
   */
  public function setIDPAYS(\videoBundle\Entity\pays $iDPAYS = null) {
    $this->ID_PAYS = $iDPAYS;

    return $this;
  }

  /**
   * Get dATENAISSANCE
   *
   * @return \DateTime
   */
  public function getDATENAISSANCE() {
    return $this->DATE_NAISSANCE;
  }

  /**
   * Set dATENAISSANCE
   *
   * @param \DateTime $dATENAISSANCE
   *
   * @return participant
   */
  public function setDATENAISSANCE($dATENAISSANCE) {
    $this->DATE_NAISSANCE = $dATENAISSANCE;

    return $this;
  }

  /**
   * Get video
   *
   * @return \videoBundle\Entity\distribution
   */
  public function getVideo() {
    return $this->video;
  }

  /**
   * Set video
   *
   * @param \videoBundle\Entity\distribution $video
   *
   * @return participant
   */
  public function setVideo(\videoBundle\Entity\distribution $video = null) {
    $this->video = $video;

    return $this;
  }

    /**
     * Add video
     *
     * @param \videoBundle\Entity\video $video
     *
     * @return participant
     */
    public function addVideo(\videoBundle\Entity\video $video)
    {
        $this->video[] = $video;

        return $this;
    }

    /**
     * Remove video
     *
     * @param \videoBundle\Entity\video $video
     */
    public function removeVideo(\videoBundle\Entity\video $video)
    {
        $this->video->removeElement($video);
    }
}

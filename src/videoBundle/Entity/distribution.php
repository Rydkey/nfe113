<?php
/**
 * Created by PhpStorm.
 * User: rydkey
 * Date: 05/10/17
 * Time: 15:19
 */

namespace videoBundle\Entity;

/**
 * Form
 * @Table(name="distribution")
 * @Entity()
 */
class distribution
{
  /**
   * @Id
   * @ManyToOne(targetEntity="videoBundle\Entity\video", cascade={"persist"})
   * @JoinColumn(name="ID_VIDEO", referencedColumnName="ID_VIDEO")
   **/
  protected $video;

  /**
   * @Column(type="integer")
   * @OneToOne(targetEntity="participant",mappedBy="ID_PARTICIPANT", cascade={"persist"})
   * @JoinColumn(name="ID_PARTICIPANT", referencedColumnName="ID_PARTICIPANT")
   **/
  protected $participant;

  /**
   * Get video
   *
   * @return \videoBundle\Entity\video
   */
  public function getVideo() {
    return $this->video;
  }

  /**
   * Set video
   *
   * @param \videoBundle\Entity\video $video
   *
   * @return distribution
   */
  public function setVideo(\videoBundle\Entity\video $video) {
    $this->video = $video;

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
   * @return distribution
   */
  public function setParticipant(\videoBundle\Entity\participant $participant = null) {
    $this->participant = $participant;

    return $this;
  }
}

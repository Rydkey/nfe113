<?php
/**
 * Created by PhpStorm.
 * User: rydkey
 * Date: 22/06/18
 * Time: 11:30
 */

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping\Column;
use Doctrine\ORM\Mapping\Entity;
use Doctrine\ORM\Mapping\GeneratedValue;
use Doctrine\ORM\Mapping\Id;
use Doctrine\ORM\Mapping\JoinColumn;
use Doctrine\ORM\Mapping\JoinTable;
use Doctrine\ORM\Mapping\ManyToMany;
use Doctrine\ORM\Mapping\Table;

/**
 * Form
 * @Table(name="personne")
 * @Entity()
 */
class Personne
{
  /**
   * @Id
   * @Column(type="integer")
   * @GeneratedValue(strategy="AUTO")
   */
  protected $id;

  /**
   * @Column(type="boolean",nullable=true)
   */
  protected $isAdmin;

  /**
   * @Column(type="string",nullable=true)
   */
  protected $nom;

  /**
   * @Column(type="string",nullable=true)
   */
  protected $prenom;

  /**
   * @Column(type="string",nullable=true)
   */
  protected $login;

  /**
   * @Column(type="string",nullable=true)
   */
  protected $pwd;

  /**
   * @ManyToMany(targetEntity="AppBundle\Entity\Reserve", cascade={"persist"})
   * @JoinTable(name="personnereserve",
   *  joinColumns={@JoinColumn(name="personneid", referencedColumnName="id")},
   *   inverseJoinColumns={@JoinColumn(name="reserveid", referencedColumnName="id",
   *   unique=false)}
   *   )
   **/
  private $reserveid;

    /**
     * Constructor
     */
    public function __construct()
    {
        $this->reserveid = new \Doctrine\Common\Collections\ArrayCollection();
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
     * Set isAdmin
     *
     * @param boolean $isAdmin
     *
     * @return Personne
     */
    public function setIsAdmin($isAdmin)
    {
        $this->isAdmin = $isAdmin;

        return $this;
    }

    /**
     * Get isAdmin
     *
     * @return boolean
     */
    public function getIsAdmin()
    {
        return $this->isAdmin;
    }

    /**
     * Set nom
     *
     * @param string $nom
     *
     * @return Personne
     */
    public function setNom($nom)
    {
        $this->nom = $nom;

        return $this;
    }

    /**
     * Get nom
     *
     * @return string
     */
    public function getNom()
    {
        return $this->nom;
    }

    /**
     * Set prenom
     *
     * @param string $prenom
     *
     * @return Personne
     */
    public function setPrenom($prenom)
    {
        $this->prenom = $prenom;

        return $this;
    }

    /**
     * Get prenom
     *
     * @return string
     */
    public function getPrenom()
    {
        return $this->prenom;
    }

    /**
     * Set login
     *
     * @param string $login
     *
     * @return Personne
     */
    public function setLogin($login)
    {
        $this->login = $login;

        return $this;
    }

    /**
     * Get login
     *
     * @return string
     */
    public function getLogin()
    {
        return $this->login;
    }

    /**
     * Set pwd
     *
     * @param string $pwd
     *
     * @return Personne
     */
    public function setPwd($pwd)
    {
        $this->pwd = $pwd;

        return $this;
    }

    /**
     * Get pwd
     *
     * @return string
     */
    public function getPwd()
    {
        return $this->pwd;
    }

    /**
     * Add reserveid
     *
     * @param \AppBundle\Entity\Reserve $reserveid
     *
     * @return Personne
     */
    public function addReserveid(\AppBundle\Entity\Reserve $reserveid)
    {
        $this->reserveid[] = $reserveid;

        return $this;
    }

    /**
     * Remove reserveid
     *
     * @param \AppBundle\Entity\Reserve $reserveid
     */
    public function removeReserveid(\AppBundle\Entity\Reserve $reserveid)
    {
        $this->reserveid->removeElement($reserveid);
    }

    /**
     * Get reserveid
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getReserveid()
    {
        return $this->reserveid;
    }

    public function __toString()
    {
      return $this->getPrenom()." ". $this->getNom();
    }
}

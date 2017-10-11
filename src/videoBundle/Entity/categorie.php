<?php
/**
 * Created by PhpStorm.
 * User: rydkey
 * Date: 05/10/17
 * Time: 11:19
 */

namespace videoBundle\Entity;

/**
 * Form
 * @Table(name="categorie")
 * @Entity()
 */
class categorie
{
    /**
     * @Id
     * @Column(type="integer")
     * @GeneratedValue(strategy="AUTO")
     */
    protected $ID_CAT;

    /**
     * @Column(type="string", nullable=true)
     *
     */
    protected $LIB_CAT;

    /**
     * Get iDCAT
     *
     * @return integer
     */
    public function getIDCAT()
    {
        return $this->ID_CAT;
    }

    /**
     * Set lIBCAT
     *
     * @param string $lIBCAT
     *
     * @return categorie
     */
    public function setLIBCAT($lIBCAT)
    {
        $this->LIB_CAT = $lIBCAT;

        return $this;
    }

    /**
     * Get lIBCAT
     *
     * @return string
     */
    public function getLIBCAT()
    {
        return $this->LIB_CAT;
    }
}

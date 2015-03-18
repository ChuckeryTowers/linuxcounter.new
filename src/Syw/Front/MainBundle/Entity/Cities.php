<?php

namespace Syw\Front\MainBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Cities
 *
 * @ORM\Table(name="cities", indexes={@ORM\Index(name="iso_country_code", columns={"iso_country_code"}), @ORM\Index(name="fips_country_code", columns={"fips_country_code"}), @ORM\Index(name="region", columns={"region"}), @ORM\Index(name="name", columns={"name"})})
 * @ORM\Entity
 */
class Cities
{
    /**
     * @var string
     *
     * @ORM\Column(name="iso_country_code", type="string", length=4, nullable=false)
     */
    private $isoCountryCode;

    /**
     * @var string
     *
     * @ORM\Column(name="fips_country_code", type="string", length=4, nullable=false)
     */
    private $fipsCountryCode;

    /**
     * @var string
     *
     * @ORM\Column(name="region", type="string", length=64, nullable=false)
     */
    private $region;

    /**
     * @var integer
     *
     * @ORM\Column(name="population", type="integer", nullable=false)
     */
    private $population;

    /**
     * @var string
     *
     * @ORM\Column(name="latitude", type="decimal", precision=12, scale=9, nullable=false)
     */
    private $latitude;

    /**
     * @var string
     *
     * @ORM\Column(name="longitude", type="decimal", precision=12, scale=9, nullable=false)
     */
    private $longitude;

    /**
     * @var string
     *
     * @ORM\Column(name="short_name", type="string", length=48, nullable=false)
     */
    private $shortName;

    /**
     * @var string
     *
     * @ORM\Column(name="name", type="string", length=255, nullable=false)
     */
    private $name;

    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;



    /**
     * Set isoCountryCode
     *
     * @param string $isoCountryCode
     * @return Cities
     */
    public function setIsoCountryCode($isoCountryCode)
    {
        $this->isoCountryCode = $isoCountryCode;

        return $this;
    }

    /**
     * Get isoCountryCode
     *
     * @return string 
     */
    public function getIsoCountryCode()
    {
        return $this->isoCountryCode;
    }

    /**
     * Set fipsCountryCode
     *
     * @param string $fipsCountryCode
     * @return Cities
     */
    public function setFipsCountryCode($fipsCountryCode)
    {
        $this->fipsCountryCode = $fipsCountryCode;

        return $this;
    }

    /**
     * Get fipsCountryCode
     *
     * @return string 
     */
    public function getFipsCountryCode()
    {
        return $this->fipsCountryCode;
    }

    /**
     * Set region
     *
     * @param string $region
     * @return Cities
     */
    public function setRegion($region)
    {
        $this->region = $region;

        return $this;
    }

    /**
     * Get region
     *
     * @return string 
     */
    public function getRegion()
    {
        return $this->region;
    }

    /**
     * Set population
     *
     * @param integer $population
     * @return Cities
     */
    public function setPopulation($population)
    {
        $this->population = $population;

        return $this;
    }

    /**
     * Get population
     *
     * @return integer 
     */
    public function getPopulation()
    {
        return $this->population;
    }

    /**
     * Set latitude
     *
     * @param string $latitude
     * @return Cities
     */
    public function setLatitude($latitude)
    {
        $this->latitude = $latitude;

        return $this;
    }

    /**
     * Get latitude
     *
     * @return string 
     */
    public function getLatitude()
    {
        return $this->latitude;
    }

    /**
     * Set longitude
     *
     * @param string $longitude
     * @return Cities
     */
    public function setLongitude($longitude)
    {
        $this->longitude = $longitude;

        return $this;
    }

    /**
     * Get longitude
     *
     * @return string 
     */
    public function getLongitude()
    {
        return $this->longitude;
    }

    /**
     * Set shortName
     *
     * @param string $shortName
     * @return Cities
     */
    public function setShortName($shortName)
    {
        $this->shortName = $shortName;

        return $this;
    }

    /**
     * Get shortName
     *
     * @return string 
     */
    public function getShortName()
    {
        return $this->shortName;
    }

    /**
     * Set name
     *
     * @param string $name
     * @return Cities
     */
    public function setName($name)
    {
        $this->name = $name;

        return $this;
    }

    /**
     * Get name
     *
     * @return string 
     */
    public function getName()
    {
        return $this->name;
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
}

<?php

namespace App\Entity;

class SingerSearch
{
    /**
     * Undocumented variable
     *
     * @var string|null
     */
    private $firstName;

    /**
     * Undocumented variable
     *
     * @var string|null
     */
    private $lastName;

    /**
     * Get undocumented variable
     *
     * @return  [String]
     */ 
    public function getFirstName()
    {
        return $this->firstName;
    }

    /**
     * Set undocumented variable
     *
     * @param  [String]  $firstName  Undocumented variable
     *
     * @return  self
     */ 
    public function setFirstName(string $firstName)
    {
        $this->firstName = $firstName;

        return $this;
    }

    /**
     * Get undocumented variable
     *
     * @return  string
     */ 
    public function getLastName()
    {
        return $this->lastName;
    }

    /**
     * Set undocumented variable
     *
     * @param  [string]  $lastName  Undocumented variable
     *
     * @return  self
     */ 
    public function setLastName(string $lastName)
    {
        $this->lastName = $lastName;

        return $this;
    }
}
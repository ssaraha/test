<?php

namespace App\Entity;

class SongSearch
{

    /**
     * Undocumented variable
     *
     * @var string|null
     */
    private $title;

    /**
     * Undocumented variable
     *
     * @var string|null
     */
    private $singer;

    /**
     * Get undocumented variable
     *
     * @return  string|null
     */ 
    public function getTitle()
    {
        return $this->title;
    }

    /**
     * Set undocumented variable
     *
     * @param  string|null  $title  Undocumented variable
     *
     * @return  self
     */ 
    public function setTitle($title)
    {
        $this->title = $title;

        return $this;
    }

    /**
     * Get undocumented variable
     *
     * @return  string|null
     */ 
    public function getSinger()
    {
        return $this->singer;
    }

    /**
     * Set undocumented variable
     *
     * @param  string|null  $singer  Undocumented variable
     *
     * @return  self
     */ 
    public function setSinger($singer)
    {
        $this->singer = $singer;

        return $this;
    }
}
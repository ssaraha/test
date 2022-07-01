<?php

namespace App\Entity;

use App\Repository\SongRepository;
use Doctrine\ORM\Mapping as ORM;
use App\Entity\Traits\Timestampable;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * @ORM\Entity(repositoryClass=SongRepository::class)
 * 
 * 
 * @ORM\HasLifecycleCallbacks()
 */
class Song
{
    use Timestampable;
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     * 
     * @Assert\NotBlank()
     */
    private $Title;

    /**
     * @ORM\ManyToOne(targetEntity=Singer::class, inversedBy="songs")
     * 
     * @Assert\NotBlank()
     */
    private $singer;

    /**
     * @ORM\Column(type="datetime_immutable")
     */
    private $release_date;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getTitle(): ?string
    {
        return $this->Title;
    }

    public function setTitle(string $Title): self
    {
        $this->Title = $Title;

        return $this;
    }

    public function getSinger(): ?Singer
    {
        return $this->singer;
    }

    public function setSinger(?Singer $singer): self
    {
        $this->singer = $singer;

        return $this;
    }

    public function getReleaseDate(): ?\DateTimeImmutable
    {
        return $this->release_date;
    }

    public function setReleaseDate(\DateTimeImmutable $release_date): self
    {
        $this->release_date = $release_date;

        return $this;
    }
}

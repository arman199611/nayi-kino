<?php

namespace App\Entity;

use App\Repository\NavbarRepository;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=NavbarRepository::class)
 */
class Navbar
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $first;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $second;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getFirst(): ?string
    {
        return $this->first;
    }

    public function setFirst(?string $first): self
    {
        $this->first = $first;

        return $this;
    }

    public function getSecond(): ?string
    {
        return $this->second;
    }

    public function setSecond(?string $second): self
    {
        $this->second = $second;

        return $this;
    }

}

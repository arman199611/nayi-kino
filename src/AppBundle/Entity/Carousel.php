<?php


namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;
use Sonata\TranslationBundle\Model\Gedmo\AbstractPersonalTranslatable;
use Sonata\TranslationBundle\Model\Gedmo\TranslatableInterface;
use Gedmo\Mapping\Annotation as Gedmo;

/**
 *
 * @ORM\Entity
 * @ORM\Table(name="carousel")
 * @Gedmo\TranslationEntity(class="AppBundle\Entity\Translation\CarouselTranslation")
 *
 */
class Carousel extends AbstractPersonalTranslatable implements TranslatableInterface
{

    /**
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     * @ORM\Column(type="integer")
     */
    private $id;
    /**
     * @Gedmo\Translatable
     * @ORM\Column(type="string")
     */
    private $title;
    /**
     * @Gedmo\Translatable
     * @ORM\Column(type="string")
     */
    private $li1;
    /**
     * @Gedmo\Translatable
     * @ORM\Column(type="string")
     */
    private $li2;
    /**
     * @Gedmo\Translatable
     * @ORM\Column(type="string")
     */
    private $li3;
    /**
     * @ORM\Column(type="text")
     */
    private $img;

    /**
     * @var ArrayCollection
     *
     * @ORM\OneToMany(
     *     targetEntity="AppBundle\Entity\Translation\CarouselTranslation",
     *     mappedBy="object",
     *     cascade={"persist", "remove"}
     * )
     *
     */
    protected $translations;

    public function __construct()
    {
        $this->createdAt = new \DateTime();
    }


    /**
     * @return mixed
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * @param mixed $id
     */
    public function setId($id)
    {
        $this->id = $id;
    }

    /**
     * @return mixed
     */
    public function getTitle()
    {
        return $this->title;
    }

    /**
     * @param mixed $title
     */
    public function setTitle($title)
    {
        $this->title = $title;
    }

    /**
     * @return mixed
     */
    public function getLi1()
    {
        return $this->li1;
    }

    /**
     * @param mixed $li1
     */
    public function setLi1($li1)
    {
        $this->li1 = $li1;
    }

    /**
     * @return mixed
     */
    public function getLi2()
    {
        return $this->li2;
    }

    /**
     * @param mixed $li2
     */
    public function setLi2($li2)
    {
        $this->li2 = $li2;
    }

    /**
     * @return mixed
     */
    public function getLi3()
    {
        return $this->li3;
    }

    /**
     * @param mixed $li3
     */
    public function setLi3($li3)
    {
        $this->li3 = $li3;
    }

    /**
     * @return mixed
     */
    public function getImg()
    {
        return $this->img;
    }

    /**
     * @param mixed $img
     */
    public function setImg($img)
    {
        $this->img = $img;
    }



}
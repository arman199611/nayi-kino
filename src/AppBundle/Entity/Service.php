<?php


namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;
use Sonata\TranslationBundle\Model\Gedmo\AbstractPersonalTranslatable;
use Sonata\TranslationBundle\Model\Gedmo\TranslatableInterface;
use Gedmo\Mapping\Annotation as Gedmo;

/**
 * @ORM\Entity
 * @ORM\Table(name="service")
 * @Gedmo\TranslationEntity(class="AppBundle\Entity\Translation\ServiceTranslation")
 */
class Service extends AbstractPersonalTranslatable implements TranslatableInterface
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     * @ORM\Column(type="integer")
     */
    private $id;
    /**
     * @ORM\Column(type="boolean")
     */
    private $isTop;
    /**
     * @ORM\Column(type="string")
     */
    private $img;
    /**
     * @ORM\Column(type="string")
     */
    private $img2;
    /**
     * @ORM\Column(type="string")
     */
    private $img3;
    /**
     * @Gedmo\Translatable
     * @ORM\Column(type="string")
     */
    private $title;
    /**
     * @Gedmo\Translatable
     * @ORM\Column(type="text")
     */
    private $text;
    /**
     * @Gedmo\Translatable
     * @ORM\Column(type="string")
     */
    private $btn;


    /**
     * @var ArrayCollection
     *
     * @ORM\OneToMany(
     *     targetEntity="AppBundle\Entity\Translation\ServiceTranslation",
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
    public function getIsTop()
    {
        return $this->isTop;
    }

    /**
     * @param mixed $isTop
     */
    public function setIsTop($isTop)
    {
        $this->isTop = $isTop;
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

    /**
     * @return mixed
     */
    public function getImg2()
    {
        return $this->img2;
    }

    /**
     * @param mixed $img2
     */
    public function setImg2($img2)
    {
        $this->img2 = $img2;
    }

    /**
     * @return mixed
     */
    public function getImg3()
    {
        return $this->img3;
    }

    /**
     * @param mixed $img3
     */
    public function setImg3($img3)
    {
        $this->img3 = $img3;
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
    public function getText()
    {
        return $this->text;
    }

    /**
     * @param mixed $text
     */
    public function setText($text)
    {
        $this->text = $text;
    }

    /**
     * @return mixed
     */
    public function getBtn()
    {
        return $this->btn;
    }

    /**
     * @param mixed $btn
     */
    public function setBtn($btn)
    {
        $this->btn = $btn;
    }

}
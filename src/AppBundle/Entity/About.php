<?php


namespace AppBundle\Entity;


use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;
use Sonata\TranslationBundle\Model\Gedmo\AbstractPersonalTranslatable;
use Sonata\TranslationBundle\Model\Gedmo\TranslatableInterface;
use Gedmo\Mapping\Annotation as Gedmo;


/**
 * @ORM\Entity
 * @ORM\Table(name="about")
 * @Gedmo\TranslationEntity(class="AppBundle\Entity\Translation\AboutTranslation")
 *
 */
class About extends AbstractPersonalTranslatable implements TranslatableInterface
{

    /**
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     * @ORM\Column(type="integer")
     */
    private $id;
    /**
     * @ORM\Column(type="string", nullable=true)
     */
    private $img;
    /**
     * @Gedmo\Translatable
     * @ORM\Column(type="string", nullable=true)
     */
    private $title;
    /**
     * @Gedmo\Translatable
     * @ORM\Column(type="string", nullable=true)
     *
     */
    private $pagetitle;
    /**
     * @Gedmo\Translatable
     * @ORM\Column(type="string", nullable=true)
     */
    private $text;
    /**
     * @Gedmo\Translatable
     * @ORM\Column(type="text", nullable=true)
     *
     */
    private $maxtext;


    /**
     * @var ArrayCollection
     *
     * @ORM\OneToMany(
     *     targetEntity="AppBundle\Entity\Translation\AboutTranslation",
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
    public function getPagetitle()
    {
        return $this->pagetitle;
    }

    /**
     * @param mixed $pagetitle
     */
    public function setPagetitle($pagetitle)
    {
        $this->pagetitle = $pagetitle;
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
    public function getMaxtext()
    {
        return $this->maxtext;
    }

    /**
     * @param mixed $maxtext
     */
    public function setMaxtext($maxtext)
    {
        $this->maxtext = $maxtext;
    }
}
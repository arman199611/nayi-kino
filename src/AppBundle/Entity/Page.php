<?php
/**
 * Created by PhpStorm.
 * User: Admin
 * Date: 12/29/2018
 * Time: 4:43 PM
 */

namespace AppBundle\Entity;

use Sonata\TranslationBundle\Model\Gedmo\AbstractPersonalTranslatable;
use Gedmo\Mapping\Annotation as Gedmo;
use Sonata\TranslationBundle\Model\Gedmo\TranslatableInterface;
use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;


/**
 * @ORM\Entity
 * @ORM\Table(name="page")
 * @Gedmo\TranslationEntity(class="AppBundle\Entity\Translation\PageTranslation")
 */

class Page extends AbstractPersonalTranslatable implements TranslatableInterface
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
    private $pageTitle;

    /**
     * @Gedmo\Translatable
     * @ORM\Column(type="string")
     */
    private $pageShortText;

    /**
     * @Gedmo\Translatable
     * @ORM\Column(type="text")
     */
    private $pageText;

    /**
     * @ORM\Column(type="text")
     */
    private $pageOgImage;

    /**
     * @Gedmo\Translatable
     * @ORM\Column(type="text", nullable=true)
     */
    private $metaKeywords;

    /**
     * @Gedmo\Translatable
     * @ORM\Column(type="text", nullable=true)
     */
    private $metaDescription;

    /**
     * @ORM\Column(type="datetime")
     */
    private $createdAt;

    /**
     * @var ArrayCollection
     *
     * @ORM\OneToMany(
     *     targetEntity="AppBundle\Entity\Translation\PageTranslation",
     *     mappedBy="object",
     *     cascade={"persist", "remove"}
     * )
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
    public function getPageTitle()
    {
        return $this->pageTitle;
    }

    /**
     * @param mixed $pageTitle
     */
    public function setPageTitle($pageTitle)
    {
        $this->pageTitle = $pageTitle;
    }

    /**
     * @return mixed
     */
    public function getPageShortText()
    {
        return $this->pageShortText;
    }

    /**
     * @param mixed $pageShortText
     */
    public function setPageShortText($pageShortText)
    {
        $this->pageShortText = $pageShortText;
    }

    /**
     * @return mixed
     */
    public function getPageText()
    {
        return $this->pageText;
    }

    /**
     * @param mixed $pageText
     */
    public function setPageText($pageText)
    {
        $this->pageText = $pageText;
    }

    /**
     * @return mixed
     */
    public function getPageOgImage()
    {
        return $this->pageOgImage;
    }

    /**
     * @param mixed $pageOgImage
     */
    public function setPageOgImage($pageOgImage)
    {
        $this->pageOgImage = $pageOgImage;
    }

    /**
     * @return mixed
     */
    public function getMetaKeywords()
    {
        return $this->metaKeywords;
    }

    /**
     * @param mixed $metaKeywords
     */
    public function setMetaKeywords($metaKeywords)
    {
        $this->metaKeywords = $metaKeywords;
    }

    /**
     * @return mixed
     */
    public function getMetaDescription()
    {
        return $this->metaDescription;
    }

    /**
     * @param mixed $metaDescription
     */
    public function setMetaDescription($metaDescription)
    {
        $this->metaDescription = $metaDescription;
    }

    /**
     * @return mixed
     */
    public function getCreatedAt()
    {
        return $this->createdAt;
    }

    /**
     * @param mixed $createdAt
     */
    public function setCreatedAt($createdAt)
    {
        $this->createdAt = $createdAt;
    }
}
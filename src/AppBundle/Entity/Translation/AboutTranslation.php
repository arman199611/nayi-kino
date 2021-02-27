<?php
/**
 * Created by PhpStorm.
 * User: Admin
 * Date: 1/8/2019
 * Time: 6:26 PM
 */

namespace AppBundle\Entity\Translation;

use Doctrine\ORM\Mapping as ORM;
use Sonata\TranslationBundle\Model\Gedmo\AbstractPersonalTranslation;

/**
 * @ORM\Entity
 * @ORM\Table(name="about_translation",
 *     uniqueConstraints={@ORM\UniqueConstraint(name="about_translation_idx", columns={
 *         "locale", "object_id", "field"
 *     })}
 * )
 */
class AboutTranslation extends AbstractPersonalTranslation
{
    /**
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\About", inversedBy="translations")
     * @ORM\JoinColumn(name="object_id", referencedColumnName="id", onDelete="CASCADE")
     */
    protected $object;
}
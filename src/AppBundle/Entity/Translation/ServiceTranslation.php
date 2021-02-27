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
 * @ORM\Table(name="service_translation",
 *     uniqueConstraints={@ORM\UniqueConstraint(name="service_translation_idx", columns={
 *         "locale", "object_id", "field"
 *     })}
 * )
 */
class ServiceTranslation extends AbstractPersonalTranslation
{
    /**
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\Service", inversedBy="translations")
     * @ORM\JoinColumn(name="object_id", referencedColumnName="id", onDelete="CASCADE")
     */
    protected $object;
}



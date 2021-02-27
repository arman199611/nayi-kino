<?php


namespace AppBundle\Admin;

use AppBundle\Entity\Service;
use Sonata\AdminBundle\Admin\AbstractAdmin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Form\FormMapper;
use ToolBox\FileBrowserBundle\Form\Type\FileBrowserType;

class ServiceAdmin extends AbstractAdmin
{

    public $tbOptions = array(
        'image_directory' => '/img',
        'thumbWidth' => 1920,
        'thumbHeight' => 1080,
        'cropOptions' => array(
            0 => array(
                'og' => array(
                    "title" => "Open Graph (facebook)",
                    "type" => "pixel",
                    "width" => 1200,
                    "height" => 630
                ),
                'thumb' => array(
                    "title" => "Thumbnail",
                    "type" => "pixel",
                    "width" => 1920,
                    "height" => 1080
                )
            )
        )
    );

    public function configure()
    {
        parent::configure();
        $this->setTemplate('edit', 'SonataAdminBundle:CRUD:tb_file_browser_edit.html.twig');
    }

    protected function configureFormFields(FormMapper $formMapper)
    {
        $formMapper
            ->add('img',FileBrowserType::class,[
                'options' => array(
                    'multiple' => false,

                ),
            ])
            ->add('img2', FileBrowserType::class,[
                'options' =>array(
                    'multiple'=>false,
                ),
            ])
            ->add('img3',FileBrowserType::class,[
                'options' =>array(
                    'multiple'=>false,
                ),
            ])
            ->add('title')
            ->add('text')
            ->add('isTop')
        ;
    }




    protected function configureListFields(ListMapper $listMapper)
    {
        $listMapper

            ->add('isTop',null,array('editable' => true))
            ->add('img', null,array(
                'template' => 'SonataAdminBundle:CRUD:image_1.html.twig'
            ))
            ->add('img2', null, array(
                'template' => 'SonataAdminBundle:CRUD:image_2.html.twig'
            ))
            ->add('img3', null, array(
                'template' => 'SonataAdminBundle:CRUD:image_3.html.twig'
            ))
            ->add('title')
            ->add('_action', null, array(
                'actions' => array(
                    'edit' => array(),
                    'delete' => array(),
                )
            ));
    }

}


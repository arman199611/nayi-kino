<?php
/**
 * Created by PhpStorm.
 * User: Admin
 * Date: 12/29/2018
 * Time: 4:47 PM
 */

namespace AppBundle\Admin;


use AppBundle\Entity\Page;
use Ivory\CKEditorBundle\Form\Type\CKEditorType;
use Sonata\AdminBundle\Admin\AbstractAdmin;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Sonata\AdminBundle\Route\RouteCollection;
use ToolBox\FileBrowserBundle\Form\Type\FileBrowserType;

class PageAdmin extends AbstractAdmin
{
    public function toString($object)
    {
        return $object instanceof Page
            ? $object->getPageTitle()
            : 'Product'; // shown in the breadcrumb on the create view
    }


    public $tbOptions = array(
        'image_directory' => '/img/',
        'thumbWidth' => 1920,
        'thumbHeight' => 1080,
        'cropOptions' => array(
            0 => array(
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
            ->tab('Page Content')
            ->with('Page Content', ['class' => 'col-md-12'])
            ->add('pageTitle',null,['label' => ''])
            ->add('pageShortText')
            ->add('pageText', CKEditorType::class)
            ->add('pageOgImage', FileBrowserType::class, array(
                'options' => array(
                    'multiple' => false
                ),
            ))
            ->end()
            ->end()
            ->tab('SEO')
            ->with('SEO', ['class' => 'col-md-12'])
            ->add('metaKeywords')
            ->add('metaDescription')
            ->end()
            ->end()
        ;

    }

    protected function configureDatagridFilters(DatagridMapper $datagridMapper)
    {
        $datagridMapper
            ->add('pageTitle');
    }

    protected function configureListFields(ListMapper $listMapper)
    {
        $listMapper
            ->add('pageTitle')
            ->add('pageShortText')
            ->add('createdAt')
            ->add('_action', null, array(
                'actions' => array(
                    'edit' => array(),
                    'delete' => array(),
                )
            ));
    }

    protected function configureRoutes(RouteCollection $collection)
    {
       $collection->remove('show');
    }

    protected $datagridValues = array(
        '_sort_order' => 'ASC',
        '_sort_by' => 'pageTitle'
    );
}
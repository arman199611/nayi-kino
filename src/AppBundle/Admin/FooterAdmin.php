<?php


namespace AppBundle\Admin;


namespace AppBundle\Admin;

use AppBundle\Entity\Footer;
use Sonata\AdminBundle\Admin\AbstractAdmin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Sonata\AdminBundle\Route\RouteCollection;
use ToolBox\FileBrowserBundle\Form\Type\FileBrowserType;

class FooterAdmin extends AbstractAdmin
{
    protected function configureFormFields(FormMapper $formMapper)
    {
        $formMapper
            ->add('tel')
            ->add('mail')
            ->add('address');
    }

    protected function configureListFields(ListMapper $listMapper)
    {
        $listMapper
            ->add('tel')
            ->add('mail')
            ->add('address')
            ->add('_action', null, array(
                'actions' => array(
                    'edit' => array(),

                )
            ));
    }

    protected function configureRoutes(RouteCollection $collection)
    {
        $collection
            ->remove('create');

    }

}
<?php
/**
 * Created by PhpStorm.
 * User: Admin
 * Date: 1/10/2019
 * Time: 1:18 PM
 */

namespace AppBundle\Admin;


use AppBundle\Entity\User;
use Sonata\AdminBundle\Admin\AbstractAdmin;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;

class UserAdmin extends AbstractAdmin
{
    public function toString($object)
    {
        return $object instanceof User
            ? $object->getUsername()
            : 'User';
    }

    protected function configureFormFields(FormMapper $form)
    {
        $container = $this->getConfigurationPool()->getContainer();
        $roles = $container->getParameter('security.role_hierarchy.roles');
        $arr = [$roles];

        $form
            ->add('enabled')
            ->add('username')
            ->add('email')
            ->add('plainPassword', 'repeated', array(
                    'type' => 'password',
                    'options' => array('translation_domain' => 'FOSUserBundle'),
                    'first_options' => array('label' => 'form.password'),
                    'second_options' => array('label' => 'form.password_confirmation'),
                    'invalid_message' => 'fos_user.password.mismatch',
                    'required'    => false,
                )
            )
            ->add('roles',ChoiceType::class,[
                'choices'=>$this->getConfigurationPool()->getContainer()->getParameter('security.role_hierarchy.roles'),
                'choice_label' => function ($choiceValue, $key, $value) {
                    return strtoupper($value);
                },
                'multiple'=>true
            ])
            ;
    }

    protected function configureListFields(ListMapper $list)
    {
        $list
            ->add('username')
            ->add('email')
            ->add('enabled',null,['editable' => true])
            ->add('roles')
            ->add('_actions','actions',[
                'actions' => [
                    'edit' => [],
                    'delete' => [],
                ]
            ])
            ;
    }

    protected function configureDatagridFilters(DatagridMapper $filter)
    {
        $filter
            ->add('enabled')
            ;
    }
}
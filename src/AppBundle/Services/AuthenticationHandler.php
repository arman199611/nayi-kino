<?php
/**
 * Created by PhpStorm.
 * User: Admin
 * Date: 1/9/2019
 * Time: 12:21 PM
 */

namespace AppBundle\Services;

use Symfony\Component\Security\Http\Authentication\AuthenticationSuccessHandlerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\RedirectResponse;
use Symfony\Component\Security\Core\Authentication\Token\TokenInterface;

class AuthenticationHandler implements  AuthenticationSuccessHandlerInterface {
    protected $container;

    public function __construct( $container ) {
        $this->container = $container;
    }

    public function onAuthenticationSuccess( Request $request, TokenInterface $token ) {
        $user = $token->getUser();
        if($user->hasRole( 'ROLE_SUPER_ADMIN' )){
            $url = $this->container->get( 'router' )->generate( 'sonata_admin_dashboard' );
        }else{
            $url = $this->container->get( 'router' )->generate( 'homepage');
        }
        return new RedirectResponse( $url );
    }
}
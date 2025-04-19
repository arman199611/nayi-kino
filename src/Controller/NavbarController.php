<?php

namespace App\Controller;

use App\Entity\Navbar;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class NavbarController extends AbstractController
{
    /**
     * @Route("/navbar", name="app_navbar")
     */
    public function createNavbar(): Response
    {
        // you can fetch the EntityManager via $this->getDoctrine()
        // or you can add an argument to the action: createNavbar(EntityManagerInterface $entityManager)
        $entityManager = $this->getDoctrine()->getManager();

        $navbar = new Navbar();
        $navbar->setFirst('test');
        $navbar->setSecond("test");

        // tell Doctrine you want to (eventually) save the Navbar (no queries yet)
        $entityManager->persist($navbar);

        // actually executes the queries (i.e. the INSERT query)
        $entityManager->flush();

        return new Response('Saved new navbar with id '.$navbar->getId());
    }
}

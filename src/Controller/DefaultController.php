<?php



declare(strict_types=1);



namespace App\Controller;



use App\Entity\Navbar;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;



class DefaultController extends AbstractController

{



    /**

     * @Route("/{_locale}", name="homepage",

     *    defaults={"_locale":"en"},

     *    requirements={"_locale":"en|ru|am"}

     * )

     *

     */

    public function index(): Response

    {


        $em = $this->getDoctrine()->getManager();
        $nav = $em->getRepository(Navbar::class)->findAll();

        return $this->render('base.html.twig', [
            'navs' => $nav,
        ]);

    }

}


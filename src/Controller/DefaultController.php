<?php


declare(strict_types=1);


namespace App\Controller;


use App\Entity\Navbar;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;


class DefaultController extends AbstractController

{


    /**
     * @Route("/{_locale}", name="homepage",
     *    defaults={"_locale":"ru"},
     *    requirements={"_locale":"en|ru|am"}
     * )
     *

     */

    public function index(Request $request)

    {


        $em = $this->getDoctrine()->getManager();
        $navs = $em->getRepository(Navbar::class)->findAll();
        $page = 1;
        $link = file_get_contents('https://kp.kinobox.tv/films/popular?films=true&released=true&page=' . $page);
        $data = json_decode($link);
        $films = $data->data->films;

        return $this->render('base.html.twig', [
            'navs' => $navs,
            'films' => $films,
            'page' => $page,
        ]);

    }


    /**
     * @Route("/{_locale}/film-page/{page}", name="page",
     *    defaults={"_locale":"ru"},
     *    requirements={"_locale":"en|ru|am"}
     * )
     *

     */

    public function page(Request $request,$page)

    {


        $em = $this->getDoctrine()->getManager();
        $navs = $em->getRepository(Navbar::class)->findAll();
        $link = file_get_contents('https://kp.kinobox.tv/films/popular?films=true&released=true&page=' . $page);
        $data = json_decode($link);
        $films = $data->data->films;

        return $this->render('base.html.twig', [
            'navs' => $navs,
            'films' => $films,
            'page' => $page,
        ]);

    }


    /**
     * @Route("/{_locale}/serials", name="serials",
     *    defaults={"_locale":"ru"},
     *    requirements={"_locale":"en|ru|am"}
     * )
     *

     */

    public function serials(Request $request)

    {


        $em = $this->getDoctrine()->getManager();
        $navs = $em->getRepository(Navbar::class)->findAll();
        $page = 1;
        $link = file_get_contents('https://kp.kinobox.tv/films/popular?series=true&released=true&page=' . $page);
        $data = json_decode($link);
        $films = $data->data->films;

        return $this->render('base.html.twig', [
            'navs' => $navs,
            'films' => $films,
            'page' => $page,
        ]);

    }


    /**
     * @Route("/{_locale}/serial-page/{page}", name="serialpage",
     *    defaults={"_locale":"ru"},
     *    requirements={"_locale":"en|ru|am"}
     * )
     *

     */

    public function serialpage(Request $request,$page)

    {


        $em = $this->getDoctrine()->getManager();
        $navs = $em->getRepository(Navbar::class)->findAll();
        $link = file_get_contents('https://kp.kinobox.tv/films/popular?series=true&released=true&page=' . $page);
        $data = json_decode($link);
        $films = $data->data->films;

        return $this->render('base.html.twig', [
            'navs' => $navs,
            'films' => $films,
            'page' => $page,
        ]);

    }



}


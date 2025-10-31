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
        $link = file_get_contents('https://www.dropbox.com/scl/fi/mlnigdvqfnv7ulvkytx5t/nayi-film.json?rlkey=ep5vazp73h4x8itxkw56ginw2&st=s6e5nlgc&dl=1');
        $data = json_decode($link);
        $filmes = json_encode($data->docs);
        $filmes = json_decode($filmes, true);
        return $this->render('base.html.twig', [
            'navs' => $navs,
            'filmes' => $filmes,
            'page' => 0,
        ]);

    }


    /**
     * @Route("/{_locale}/film-page/{page}", name="page",
     *    defaults={"_locale":"ru"},
     *    requirements={"_locale":"en|ru|am"}
     * )
     *

     */

    public function page(Request $request, $page)

    {

        $em = $this->getDoctrine()->getManager();
        $navs = $em->getRepository(Navbar::class)->findAll();

        return $this->render('base.html.twig', [
            'navs' => $navs,
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
        $link = file_get_contents('https://www.dropbox.com/scl/fi/4nsl3bee4ivisfighh81m/nayi-film-serials.json?rlkey=3h2oegpnhn0uy2pxneauk99gg&st=ksdjipw0&dl=1');
        $data = json_decode($link);
        $filmes = json_encode($data->docs);
        $filmes = json_decode($filmes, true);

        return $this->render('base.html.twig', [
            'navs' => $navs,
            'filmes' => $filmes,
            'page' => 0,
        ]);

    }


    /**
     * @Route("/{_locale}/serial-page/{page}", name="serialpage",
     *    defaults={"_locale":"ru"},
     *    requirements={"_locale":"en|ru|am"}
     * )
     *

     */

    public function serialpage(Request $request, $page)

    {

        $em = $this->getDoctrine()->getManager();
        $navs = $em->getRepository(Navbar::class)->findAll();

        return $this->render('base.html.twig', [
            'navs' => $navs,

            'page' => $page,
        ]);

    }

    /**
     * @Route("/{_locale}/search/{film}", name="search",
     *    defaults={"_locale":"ru"},
     *    requirements={"_locale":"en|ru|am"}
     * )
     *

     */
    public function search(Request $request, $film)

    {

        $em = $this->getDoctrine()->getManager();
        $navs = $em->getRepository(Navbar::class)->findAll();
        return $this->render('base.html.twig', [
            'navs' => $navs,
            'film' => $film,
            'page' => 0,
        ]);

    }


}


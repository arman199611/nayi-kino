<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

class DefaultController extends Controller
{


    /**
     *
     * @Route("/{_locale}", name="homepage",
     *     defaults={
     *     "_locale":"ru"
     *      },
     *     requirements={
     *     "_locale":"en|ru|am"
     *      }
     * )
     *
     *
     */

    public function indexAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();
        $nav = $em->getRepository('AppBundle:Navbar')->findAll();
        $topServices = $em->getRepository('AppBundle:Service')->findBy(array('isTop' => true));
//        $new = $em->getRepository('AppBundle:News')->findBy([], [], 3);
        $car = $em->getRepository('AppBundle:Carousel')->findAll();
        $about = $em->getRepository('AppBundle:About')->findAll();
//        $cont = $em->getRepository('AppBundle:Cont')->findAll();
//        $topTeam = $em->getRepository('AppBundle:Team')->findBy(array('isTop' => true));
        $pageService = $em->getRepository('AppBundle:Page')->find('2');
//        $pageNews = $em->getRepository('AppBundle:Page')->find('3');
        $pageAbout = $em->getRepository('AppBundle:Page')->find('4');
        $pageCont = $em->getRepository('AppBundle:Page')->find('5');
        $pageTeam = $em->getRepository('AppBundle:Page')->find('6');

        return $this->render('default/index.html.twig', array(
            'nav' => $nav,
            'services' => $topServices,
//            'new' => $new,
            'car' => $car,
            'about' => $about,
//            'cont' => $cont,
//            'topTeam' => $topTeam,
            'pageService' => $pageService,
//            'pageNews' => $pageNews,
            'pageAbout' => $pageAbout,
            'pageCont' => $pageCont,
            'pageTeam' => $pageTeam,
        ));
    }


    public function menwerAction(Request $request)
    {

        $em = $this->getDoctrine()->getManager();
        $footer = $em->getRepository('AppBundle:Footer')->findAll();

        return $this->render('parts/menwer.php.twig', array(
            'footer' => $footer
        ));
    }


    public function footerAction(Request $request)
    {

        $em = $this->getDoctrine()->getManager();
        $nav = $em->getRepository('AppBundle:Navbar')->findAll();
        $footer = $em->getRepository('AppBundle:Footer')->findAll();

        return $this->render('parts/footer.html.twig', array(
            'nav' => $nav,
            'footer' => $footer
        ));
    }

    //service

    /**
     *
     *
     * @Route("/{_locale}/service", name="service",
     *     defaults={
     *     "_locale":"ru"
     *      },
     *     requirements={
     *     "_locale":"en|ru|am"
     *      }
     * )
     *
     *
     */
    public function serviceAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();
        $nav = $em->getRepository('AppBundle:Navbar')->findAll();
        $services = $em->getRepository('AppBundle:Service')->findAll();
        $pageService = $em->getRepository('AppBundle:Page')->find('2');

        return $this->render('pages/service.php.twig', array(
            'nav' => $nav,
            'services' => $services,
            'pageService' => $pageService,
        ));
    }


    /**
     *
     *
     * @Route("/{_locale}/product", name="service",
     *     defaults={
     *     "_locale":"ru"
     *      },
     *     requirements={
     *     "_locale":"en|ru|am"
     *      }
     * )
     *
     *
     */
    public function productAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();
        $nav = $em->getRepository('AppBundle:Navbar')->findAll();
        $services = $em->getRepository('AppBundle:Service')->findAll();
        $pageService = $em->getRepository('AppBundle:Page')->find('2');

        return $this->render('pages/service.php.twig', array(
            'nav' => $nav,
            'services' => $services,
            'pageService' => $pageService,
        ));
    }


    /**
     *
     *
     * @Route("/{_locale}/service-view/{id}", name="service-view",
     *     defaults={
     *     "_locale":"ru"
     *      },
     *     requirements={
     *     "_locale":"en|ru|am"
     *      }
     * )
     *
     *
     */
    public function serviceViewAction(Request $request, $id)
    {
        $em = $this->getDoctrine()->getManager();
        $nav = $em->getRepository('AppBundle:Navbar')->findAll();
        $service = $em->getRepository('AppBundle:Service')->find($id);
        $service1 = $em->getRepository('AppBundle:Service')->findAll();
        $pageService = $em->getRepository('AppBundle:Page')->find('2');


        return $this->render('pages/servis-view.php.twig', array(
            'nav' => $nav,
            'service' => $service,
            'service1' => $service1,
            'pageService' => $pageService,
        ));
    }

    //service end




    //about

    /**
     *
     *
     * @Route("/{_locale}/about", name="about",
     *     defaults={
     *     "_locale":"ru"
     *      },
     *     requirements={
     *     "_locale":"en|ru|am"
     *      }
     * )
     *
     *
     */
    public function aboutAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();
        $nav = $em->getRepository('AppBundle:Navbar')->findAll();
        $about = $em->getRepository('AppBundle:About')->findAll();
        $pageAbout = $em->getRepository('AppBundle:Page')->find('4');
        return $this->render('pages/about.php.twig', array(
            'nav' => $nav,
            'about' => $about,
            'pageAbout' => $pageAbout,
        ));
    }



    //abou end


    //team

    /**
     *
     *
     * @Route("/{_locale}/our-team", name="team",
     *     defaults={
     *     "_locale":"ru"
     *      },
     *     requirements={
     *     "_locale":"en|ru|am"
     *      }
     * )
     *
     *
     */
    public function teamAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();
        $nav = $em->getRepository('AppBundle:Navbar')->findAll();
        $team = $em->getRepository('AppBundle:Team')->findAll();
        $pageTeam = $em->getRepository('AppBundle:Page')->find('6');
        return $this->render('pages/team.php.twig', array(
            'nav' => $nav,
            'team' => $team,
            'pageTeam' => $pageTeam,
        ));
    }


    /**
     *
     *
     * @Route("/{_locale}/ourteam-view/{id}", name="ourteam-view",
     *     defaults={
     *     "_locale":"ru"
     *      },
     *     requirements={
     *     "_locale":"en|ru|am"
     *      }
     * )
     *
     *
     */
    public function teamviewAction(Request $request, $id)
    {
        $em = $this->getDoctrine()->getManager();
        $nav = $em->getRepository('AppBundle:Navbar')->findAll();
        $team = $em->getRepository('AppBundle:Team')->find($id);
        $pageTeam = $em->getRepository('AppBundle:Page')->find('6');

        return $this->render('pages/team-view.html.twig', array(
            'nav' => $nav,
            'team' => $team,
            'pageTeam' => $pageTeam,
        ));
    }




    //team end

    //cont

    /**
     *
     *
     * @Route("/{_locale}/contact", name="contact",
     *     defaults={
     *     "_locale":"ru"
     *      },
     *     requirements={
     *     "_locale":"en|ru|am"
     *      }
     * )
     *
     *
     */
    public function contactAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();
        $nav = $em->getRepository('AppBundle:Navbar')->findAll();
//        $cont = $em->getRepository('AppBundle:Cont')->findAll();
        $pageCont = $em->getRepository('AppBundle:Page')->find('5');
        return $this->render('pages/contact.html.twig', array(
            'nav' => $nav,
//            'cont' => $cont,
            'pageCont' => $pageCont,
        ));
    }


    /**
     *
     * @Route("/{_locale}/contact/message", name="message",
     *     defaults={
     *     "_locale":"ru"
     *      },
     *     requirements={
     *     "_locale":"en|ru|am"
     *      }
     * )
     *
     */
    public function messageContact(Request $request, \Swift_Mailer $mailer)
    {
        $em = $this->getDoctrine()->getManager();

        $mainEmail = $em->getRepository('AppBundle:Mail')->find(1)->getMainEmail();

        $email = $request->get('email');
        $name = $request->get('name');
        $address = $request->get('address');
        $city = $request->get('city');
        $state = $request->get('state');
        $message = $request->get('message');

        if (!empty($email) && !empty($name) && !empty($address) && !empty($city) && !empty($state) && !empty($message)) {
            $mailer_user = $this->getParameter('mailer_user');
            $message = (new \Swift_Message('Lawyer'))
                ->setFrom($mailer_user)
                ->setTo($mainEmail)
                ->setBody(
                    $this->renderView(
                        'parts/message.html.twig',
                        array(
                            'email' => $email,
                            'name' => $name,
                            'address' => $address,
                            'city' => $city,
                            'state' => $state,
                            'message' => $message,
                        )
                    ),
                    'text/html'
                );

            $mailer->send($message);

            $this->addFlash('success', 'Your Message Successful Send');
            $uri = $request->server->get('HTTP_REFERER');
            return $this->redirect($uri);

        } else {
            $this->addFlash('error', 'Your Message No Send');
            $uri = $request->server->get('HTTP_REFERER');
            return $this->redirect($uri);
        }


    }
    //cont end


}

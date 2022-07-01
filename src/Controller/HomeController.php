<?php

namespace App\Controller;

use App\Entity\SingerSearch;
use App\Form\SingerSearchType;
use App\Repository\SingerRepository;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class HomeController extends AbstractController
{
    private $singerRepository;
    
    public function __construct(SingerRepository $singerRepository)
    {
        $this->singerRepository = $singerRepository;
    }


    /**
     * @Route("/", name="app_singer")
     */
    public function index(PaginatorInterface $paginator, Request $request): Response
    {
        //$singers = $singerRepository->findAll();
        $singerSearch = new SingerSearch();
        $formSearch = $this->createForm(SingerSearchType::class, $singerSearch);
        $formSearch->handleRequest($request);
        $singers = $paginator->paginate(
                                        $this->singerRepository->findSingers($singerSearch),
                                        $request->query->getInt('page', 1), 9);

        return $this->render('home/index.html.twig', 
            [
                'singers'    => $singers,
                'searchForm' => $formSearch->createView()
            ]
        );
    }
}

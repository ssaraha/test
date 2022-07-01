<?php

namespace App\Controller;

use App\Entity\SongSearch;
use App\Form\SongSearchType;
use App\Repository\SongRepository;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class SongController extends AbstractController
{
    private $songRepository;

    public function __construct(SongRepository $songRepository)
    {
        $this->songRepository = $songRepository;
    }
    /**
     * @Route("/song", name="app_song")
     */
    public function index(PaginatorInterface $paginator, Request $request): Response
    {

        $songSearch = new SongSearch();
        $serachForm = $this->createForm(SongSearchType::class, $songSearch);

        $serachForm->handleRequest($request);
        $songs = $paginator->paginate(
            $this->songRepository->findSongs($songSearch),
            $request->query->getInt('page', 1), 9);
            
        return $this->render('song/index.html.twig', [
            'songs'      => $songs,
            'searchForm' => $serachForm->createView()
        ]);
    }
}

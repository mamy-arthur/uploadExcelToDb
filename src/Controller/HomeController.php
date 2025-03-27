<?php

namespace App\Controller;

use App\Services\ClientService;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends AbstractController
{
    private int $limit = 10;

    public function __construct(private ClientService $clientService)
    {}

    #[Route('/', name: 'app_home')]
    public function index(Request $request): Response
    {
        $page = max(1, $request->query->getInt('page', 1));
        [
            'clients' => $clients,
            'totalPages' => $totalPages
        ] = $this->clientService->getClientList($this->limit, $page);
        return $this->render('home/index.html.twig', [
            'clients' => $clients,
            'currentPage' => $page,
            'totalPages' => $totalPages
        ]);
    }
}

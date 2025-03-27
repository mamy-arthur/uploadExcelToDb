<?php

namespace App\Controller;

use App\Entity\Client;
use App\Services\ClientService;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends AbstractController
{
    private int $limit = 10;

    public function __construct(private ClientService $clientService)
    {}

    #[Route('/', name: 'app_home')]
    /**
     * Get list of clients
     * 
     * @param Request $request
     * @return Response
     */
    public function index(Request $request): Response
    {
        $page = max(1, $request->query->getInt('page', 1));
        [$clients, $totalPages, $totalClients] = $this->clientService->getClientList($this->limit, $page);
        return $this->render('home/index.html.twig', [
            'clients' => $clients,
            'currentPage' => $page,
            'totalPages' => $totalPages,
            'havePagination' => $totalClients > $this->limit
        ]);
    }

    #[Route('/client/{id}', name: 'client_details')]
    /**
     * Show client info
     * 
     * @param Client $client
     * @return Response
     */
    public function showClient(Client $client): Response
    {
        return $this->render('home/show_client.html.twig', [
            'client' => $client
        ]);
    }
}

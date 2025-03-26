<?php

namespace App\Controller;

use App\Services\ClientService;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends AbstractController
{
    public function __construct(private ClientService $clientService)
    {}

    #[Route('/', name: 'app_home')]
    public function index(): Response
    {
        $clientLists = $this->clientService->getClientList(20);
        return $this->render('home/index.html.twig', [
            'clients' => $clientLists,
        ]);
    }
}

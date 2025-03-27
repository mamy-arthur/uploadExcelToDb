<?php

namespace App\Services;

use App\Repository\ClientRepository;

class ClientService
{
    public function __construct(
        private ClientRepository $clientRepository
    ) {}

    public function getClientList(int $limit, int $page)
    {
        return $this->clientRepository->getClientList($limit, $page);
    }
}
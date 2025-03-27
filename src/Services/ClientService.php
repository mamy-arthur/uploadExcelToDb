<?php

namespace App\Services;

use App\Repository\ClientRepository;

class ClientService
{
    public function __construct(
        private ClientRepository $clientRepository
    ) {}

    /**
     * Get client list info
     * 
     * @param int $limit
     * @param int $page
     * @return array
     */
    public function getClientList(int $limit, int $page): array
    {
        return $this->clientRepository->getClientList($limit, $page);
    }
}
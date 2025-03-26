<?php

namespace App\Services;

use App\Repository\ClientRepository;

class ClientService
{
    public function __construct(
        private ClientRepository $clientRepository
    ) {}

    public function getClientList(int $number)
    {
        return $this->clientRepository->getClientList($number);
    }
}
<?php

namespace App\Repository;

use App\Entity\Client;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Client>
 *
 * @method Client|null find($id, $lockMode = null, $lockVersion = null)
 * @method Client|null findOneBy(array $criteria, array $orderBy = null)
 * @method Client[]    findAll()
 * @method Client[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ClientRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Client::class);
    }

    public function saveDocumentInfoToDatabase(array $data)
    {
        $dataObject = [];
        foreach ($data as $clientData) {
            $client = new Client();
            $client->setBusinessAccount($clientData[0]);
            $client->setEventAccount($clientData[1]);
            $client->setLastEventAccount($clientData[2]);
            $client->setRecordNumber((int)$clientData[3]);
            $client->setWordingCivility($clientData[4]);
            $client->setCurrentVehiclesOwner($clientData[5]);
            $client->setName($clientData[6]);
            $client->setFirstname($clientData[7]);
            $client->setTrackName($clientData[8]);
            $client->setAddressComplement($clientData[9]);
            $client->setZipCode((int)$clientData[10]);
            $client->setCity($clientData[11]);
            $client->setHomePhone($clientData[12]);
            $client->setCellPhone($clientData[13]);
            $client->setJobPhone($clientData[14]);
            $client->setEmail(strtolower($clientData[15]));
            $dateOfEntryIntoCirculation = \DateTime::createFromFormat('d/m/Y', $clientData[16])
                ? \DateTime::createFromFormat('d/m/Y', $clientData[16])
                : null;
            $client->setDateOfEntryIntoCirculation($dateOfEntryIntoCirculation);
            $purchaseDate = \DateTime::createFromFormat('d/m/Y', $clientData[17])
                ? \DateTime::createFromFormat('d/m/Y', $clientData[17])
                : null;
            $client->setPurchaseDate($purchaseDate);
            $lastEventDate = \DateTime::createFromFormat('d/m/Y', $clientData[18])
                ? \DateTime::createFromFormat('d/m/Y', $clientData[18])
                : null;
            $client->setLastEventDate($lastEventDate);
            $client->setBrandName($clientData[19]);
            $client->setModelWording($clientData[20]);
            $client->setVersion($clientData[21]);
            $client->setVIN($clientData[22]);
            $client->setLicenceNumber($clientData[23]);
            $client->setLeadType($clientData[24]);
            $client->setMileage((int)$clientData[25]);
            $client->setEnergyLabel($clientData[26]);
            $client->setSellerVN($clientData[27]);
            $client->setSellerVO($clientData[28]);
            $client->setBillingComment($clientData[29]);
            $client->setTypeVNVO($clientData[30]);
            $client->setFileNumber($clientData[31]);
            $client->setSalesIntermediary($clientData[32]);
            $eventDate = \DateTime::createFromFormat('d/m/Y', $clientData[33])
                ? \DateTime::createFromFormat('d/m/Y', $clientData[33])
                : null;
            $client->setEventDate($eventDate);
            $client->setEventOrigin($clientData[34]);
            $dataObject[] = $client;
            $this->getEntityManager()->persist($client);
        }
        $this->getEntityManager()->flush();
    }

    public function getClientList(int $limit, int $page)
    {
        $offset = ($page - 1) * $limit;
        $clients = $this->findBy([], ['id' => 'ASC'], $limit, $offset);
        $totalClients = $this->count([]);
        $totalPages = ceil($totalClients / $limit);
        return [
            'clients' => $clients,
            'totalPages' => $totalPages
        ];
    }

//    /**
//     * @return Client[] Returns an array of Client objects
//     */
//    public function findByExampleField($value): array
//    {
//        return $this->createQueryBuilder('c')
//            ->andWhere('c.exampleField = :val')
//            ->setParameter('val', $value)
//            ->orderBy('c.id', 'ASC')
//            ->setMaxResults(10)
//            ->getQuery()
//            ->getResult()
//        ;
//    }

//    public function findOneBySomeField($value): ?Client
//    {
//        return $this->createQueryBuilder('c')
//            ->andWhere('c.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}

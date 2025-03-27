<?php

namespace App\Entity;

use App\Repository\ClientRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: ClientRepository::class)]
/**
 * Client entity
 */
class Client
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $businessAccount = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $eventAccount = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $lastEventAccount = null;

    #[ORM\Column(nullable: true)]
    private ?int $recordNumber = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $wordingCivility = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $currentVehiclesOwner = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $name = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $firstname = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $trackName = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $addressComplement = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $city = null;

    #[ORM\Column(nullable: true)]
    private ?int $zipCode = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $homePhone = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $cellPhone = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $jobPhone = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $email = null;

    #[ORM\Column(type: "date", nullable: true)]
    private ?\DateTime $dateOfEntryIntoCirculation = null;

    #[ORM\Column(type: "date", nullable: true)]
    private ?\DateTime $purchaseDate = null;

    #[ORM\Column(type: "date", nullable: true)]
    private ?\DateTime $lastEventDate = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $brandName = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $modelWording = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $version = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $VIN = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $licenceNumber = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $leadType = null;

    #[ORM\Column(nullable: true)]
    private ?int $mileage = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $energyLabel = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $sellerVN = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $sellerVO = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $billingComment = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $typeVNVO = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $fileNumber = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $salesIntermediary = null;

    #[ORM\Column(type: "date", nullable: true)]
    private ?\DateTime $eventDate = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $eventOrigin = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getBusinessAccount(): ?string
    {
        return $this->businessAccount;
    }

    public function setBusinessAccount(?string $businessAccount): static
    {
        $this->businessAccount = $businessAccount;

        return $this;
    }

    public function getEventAccount(): ?string
    {
        return $this->eventAccount;
    }

    public function setEventAccount(?string $eventAccount): static
    {
        $this->eventAccount = $eventAccount;

        return $this;
    }

    public function getLastEventAccount(): ?string
    {
        return $this->lastEventAccount;
    }

    public function setLastEventAccount(?string $lastEventAccount): static
    {
        $this->lastEventAccount = $lastEventAccount;

        return $this;
    }

    public function getRecordNumber(): ?int
    {
        return $this->recordNumber;
    }

    public function setRecordNumber(?int $recordNumber): static
    {
        $this->recordNumber = $recordNumber;

        return $this;
    }

    public function getWordingCivility(): ?string
    {
        return $this->wordingCivility;
    }

    public function setWordingCivility(?string $wordingCivility): static
    {
        $this->wordingCivility = $wordingCivility;

        return $this;
    }

    public function getCurrentVehiclesOwner(): ?string
    {
        return $this->currentVehiclesOwner;
    }

    public function setCurrentVehiclesOwner(?string $currentVehiclesOwner): static
    {
        $this->currentVehiclesOwner = $currentVehiclesOwner;

        return $this;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(?string $name): static
    {
        $this->name = $name;

        return $this;
    }

    public function getFirstname(): ?string
    {
        return $this->firstname;
    }

    public function setFirstname(?string $firstname): static
    {
        $this->firstname = $firstname;

        return $this;
    }

    public function getTrackName(): ?string
    {
        return $this->trackName;
    }

    public function setTrackName(?string $trackName): static
    {
        $this->trackName = $trackName;

        return $this;
    }

    public function getAddressComplement(): ?string
    {
        return $this->addressComplement;
    }

    public function setAddressComplement(?string $addressComplement): static
    {
        $this->addressComplement = $addressComplement;

        return $this;
    }

    public function getCity(): ?string
    {
        return $this->city;
    }

    public function setCity(?string $city): static
    {
        $this->city = $city;

        return $this;
    }

    public function getZipCode(): ?int
    {
        return $this->zipCode;
    }

    public function setZipCode(?int $zipCode): static
    {
        $this->zipCode = $zipCode;

        return $this;
    }

    public function getHomePhone(): ?string
    {
        return $this->homePhone;
    }

    public function setHomePhone(?string $homePhone): static
    {
        $this->homePhone = $homePhone;

        return $this;
    }

    public function getCellPhone(): ?string
    {
        return $this->cellPhone;
    }

    public function setCellPhone(?string $cellPhone): static
    {
        $this->cellPhone = $cellPhone;

        return $this;
    }

    public function getJobPhone(): ?string
    {
        return $this->jobPhone;
    }

    public function setJobPhone(?string $jobPhone): static
    {
        $this->jobPhone = $jobPhone;

        return $this;
    }

    public function getEmail(): ?string
    {
        return $this->email;
    }

    public function setEmail(?string $email): static
    {
        $this->email = $email;

        return $this;
    }

    public function getDateOfEntryIntoCirculation(): ?\DateTime
    {
        return $this->dateOfEntryIntoCirculation;
    }

    public function setDateOfEntryIntoCirculation(?\DateTime $dateOfEntryIntoCirculation): static
    {
        $this->dateOfEntryIntoCirculation = $dateOfEntryIntoCirculation;

        return $this;
    }

    public function getPurchaseDate(): ?\DateTime
    {
        return $this->purchaseDate;
    }

    public function setPurchaseDate(?\DateTime $purchaseDate): static
    {
        $this->purchaseDate = $purchaseDate;

        return $this;
    }

    public function getLastEventDate(): ?\DateTime
    {
        return $this->lastEventDate;
    }

    public function setLastEventDate(?\DateTime $lastEventDate): static
    {
        $this->lastEventDate = $lastEventDate;

        return $this;
    }

    public function getBrandName(): ?string
    {
        return $this->brandName;
    }

    public function setBrandName(?string $brandName): static
    {
        $this->brandName = $brandName;

        return $this;
    }

    public function getModelWording(): ?string
    {
        return $this->modelWording;
    }

    public function setModelWording(?string $modelWording): static
    {
        $this->modelWording = $modelWording;

        return $this;
    }

    public function getVersion(): ?string
    {
        return $this->version;
    }

    public function setVersion(?string $version): static
    {
        $this->version = $version;

        return $this;
    }

    public function getVIN(): ?string
    {
        return $this->VIN;
    }

    public function setVIN(?string $VIN): static
    {
        $this->VIN = $VIN;

        return $this;
    }

    public function getLicenceNumber(): ?string
    {
        return $this->licenceNumber;
    }

    public function setLicenceNumber(?string $licenceNumber): static
    {
        $this->licenceNumber = $licenceNumber;

        return $this;
    }

    public function getLeadType(): ?string
    {
        return $this->leadType;
    }

    public function setLeadType(?string $leadType): static
    {
        $this->leadType = $leadType;

        return $this;
    }

    public function getMileage(): ?int
    {
        return $this->mileage;
    }

    public function setMileage(?int $mileage): static
    {
        $this->mileage = $mileage;

        return $this;
    }

    public function getEnergyLabel(): ?string
    {
        return $this->energyLabel;
    }

    public function setEnergyLabel(?string $energyLabel): static
    {
        $this->energyLabel = $energyLabel;

        return $this;
    }

    public function getSellerVN(): ?string
    {
        return $this->sellerVN;
    }

    public function setSellerVN(?string $sellerVN): static
    {
        $this->sellerVN = $sellerVN;

        return $this;
    }

    public function getSellerVO(): ?string
    {
        return $this->sellerVO;
    }

    public function setSellerVO(?string $sellerVO): static
    {
        $this->sellerVO = $sellerVO;

        return $this;
    }

    public function getBillingComment(): ?string
    {
        return $this->billingComment;
    }

    public function setBillingComment(?string $billingComment): static
    {
        $this->billingComment = $billingComment;

        return $this;
    }

    public function getTypeVNVO(): ?string
    {
        return $this->typeVNVO;
    }

    public function setTypeVNVO(?string $typeVNVO): static
    {
        $this->typeVNVO = $typeVNVO;

        return $this;
    }

    public function getFileNumber(): ?string
    {
        return $this->fileNumber;
    }

    public function setFileNumber(?string $fileNumber): static
    {
        $this->fileNumber = $fileNumber;

        return $this;
    }

    public function getSalesIntermediary(): ?string
    {
        return $this->salesIntermediary;
    }

    public function setSalesIntermediary(?string $salesIntermediary): static
    {
        $this->salesIntermediary = $salesIntermediary;

        return $this;
    }

    public function getEventDate(): ?\DateTime
    {
        return $this->eventDate;
    }

    public function setEventDate(?\DateTime $eventDate): static
    {
        $this->eventDate = $eventDate;

        return $this;
    }

    public function getEventOrigin(): ?string
    {
        return $this->eventOrigin;
    }

    public function setEventOrigin(?string $eventOrigin): static
    {
        $this->eventOrigin = $eventOrigin;

        return $this;
    }
}

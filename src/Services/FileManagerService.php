<?php

namespace App\Services;

use App\Entity\Document;
use App\Repository\ClientRepository;
use Doctrine\ORM\EntityManagerInterface;
use Exception;
use Symfony\Component\Form\Form;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpKernel\KernelInterface;
use PhpOffice\PhpSpreadsheet\Shared\Date;

class FileManagerService
{
    public function __construct(
        private EntityManagerInterface $em,
        private KernelInterface $kernel,
        private ClientRepository $clientRepository
    ) {}

    public function handleSubmittedFile(Form $form, Document $document, Request $request)
    {
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            try {
                $this->em->persist($document);
                $this->em->flush();
                $this->saveDocumentInfoToDatabase($document->getFilename());
                return true;
            } catch (\Exception $exception) {
                return false;
            }
        }
        return null;
    }

    /**
     * Saves the file information to the database
     * 
     * @param string $filename Name of file
     * 
     * @return void
     * @throws \Exception If there is an error
     */
    protected function saveDocumentInfoToDatabase(string $filename): void
    {
        $filePath = join(DIRECTORY_SEPARATOR, [$this->kernel->getProjectDir(), 'public', 'uploads', 'excel', $filename]);
        if (!file_exists($filePath)) {
            throw new \Exception();
        }
        $data = $this->convertExcelDataToArray($filePath);
        // dd($data);
        $this->clientRepository->saveDocumentInfoToDatabase($data);
    }

    /**
     * Transforms data in excel file into array
     * 
     * @param string $filePath File path
     * 
     * @return array Return an array of client
     * @throws \Exception If there is an error
     */
    protected function convertExcelDataToArray(string $filePath)
    {
        $zip = new \ZipArchive;

        // Open zip file (XLSX)
        if ($zip->open($filePath) === TRUE) {
            // read value of sharedStrings.xml (shared textual values)
            $sharedStringsXML = $zip->getFromName('xl/sharedStrings.xml');
            $sharedStrings = [];
            if ($sharedStringsXML !== false) {
                $xmlSharedStrings = simplexml_load_string($sharedStringsXML);
                foreach ($xmlSharedStrings->si as $string) {
                    $sharedStrings[] = (string)$string->t;
                }
            }

            // Read the sheet1.xml file (sheet data)
            $xmlData = $zip->getFromName('xl/worksheets/sheet1.xml');
            $zip->close();

            if ($xmlData === false) {
                throw new \Exception();
            }

            $xml = simplexml_load_string($xmlData);
            $rows = [];

            // Navigate rows and cells
            foreach ($xml->sheetData->row as $row) {
                $currentRow = [];
                foreach ($row->c as $cell) {
                    $value = '';

                    // If the cell contains a value "s", it references sharedStrings
                    if (isset($cell->v)) {
                        $rawValue = (string) $cell->v; // Raw value
                        // If the cell is of type "s" (string), retrieve the value from sharedStrings
                        if (isset($cell['t']) && $cell['t'] == 's') {
                            $index = (int)$rawValue; // Text index in sharedStrings
                            $value = $sharedStrings[$index] ?? '';
                        }
                        // Check if the value is an Excel date
                        elseif (is_numeric($rawValue) && $rawValue > 0) {
                            $date = Date::excelToDateTimeObject((float)$rawValue);
                            $value = $date->format('d/m/Y'); // Convert to French format
                        }
                        // Otherwise, store the raw value
                        else {
                            $value = $rawValue;
                        }
                    }

                    $currentRow[] = $value;
                }
                $rows[] = $currentRow;
            }
            array_shift($rows);
            return $rows;
        } else {
            throw new \Exception();
        }
    }
}
<?php

namespace App\Controller;

use App\Entity\Document;
use App\Form\DocumentType;
use App\Services\FileManagerService;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class DocumentController extends AbstractController
{
    public function __construct(private FileManagerService $fileManagerService)
    {}

    #[Route('/document', name: 'app_document')]
    /**
     * Handle file uplaod
     * 
     * @param Request $request
     * @return Response
     */
    public function index(Request $request): Response
    {
        $document = new Document();
        $form = $this->createForm(DocumentType::class, $document);
        $fileProcessing = $this->fileManagerService->handleSubmittedFile($form, $document, $request);
        if ($fileProcessing !== null) {
            if ($fileProcessing) {
                $this->addFlash('success', 'The file was processed successfully');
                return $this->redirectToRoute('app_home');
            } else {
                $this->addFlash('error', 'There was an error processing the file.');
            }
        }
        return $this->render('document/index.html.twig', [
            'form' => $form->createView(),
        ]);
    }
}

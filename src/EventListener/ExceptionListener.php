<?php

namespace App\EventListener;

use Symfony\Component\HttpKernel\Event\ExceptionEvent;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpKernel\Exception\HttpExceptionInterface;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Twig\Environment;

/**
 * This class Exception
 */
class ExceptionListener
{
    private Environment $twig;

    public function __construct(Environment $twig)
    {
        $this->twig = $twig;
    }
    
    public function onKernelException(ExceptionEvent $event)
    {
        $exception = $event->getThrowable();
        $statusCode = $exception instanceof HttpExceptionInterface ? $exception->getStatusCode() : 500;
        if ($exception instanceof NotFoundHttpException) {
            $response = new Response($this->twig->render('errors/404.html.twig'), 404);
        } else if ($statusCode === 500) {
            $response = new Response($this->twig->render('errors/500.html.twig'), 500);
        } else {
            $response = new Response($this->twig->render('errors/error.html.twig', [
                'status_code' => $statusCode
            ]), $statusCode);
        }
        $event->setResponse($response);
    }
}

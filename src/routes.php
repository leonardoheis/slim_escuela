<?php

use Slim\Http\Request;
use Slim\Http\Response;

// Routes
$app->get('/','HomeController:index')->setName('home');

$app->get('/auth/signup','AuthController:getSignUp')->setName('auth.signup');

$app->post('/auth/signup','AuthController:postSignUp');

$app->get('/auth/signin','AuthController:getSignIn')->setName('auth.signin');

$app->post('/auth/signin','AuthController:postSignIn');

$app->get('/auth/signout','AuthController:getSignOut')->setName('auth.signout');

$app->get('/nombre/[{name}]', function (Request $request, Response $response, array $args) {
    // Sample log message
    $this->logger->info("Slim-Skeleton '/' route");

    // Render index view
    return $this->renderer->render($response, 'index.phtml', $args);
});

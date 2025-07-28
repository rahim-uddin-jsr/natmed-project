<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Home::index');
$routes->group('api', ['namespace' => 'App\Controllers\Api'], function ($routes) {
    $routes->get('doctors', 'DoctorController::index');
    $routes->get('doctors/(:num)', 'DoctorController::show/$1');
    $routes->post('advice/submit', 'AdviceController::submit');
});
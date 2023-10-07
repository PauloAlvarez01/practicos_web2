<?php

require_once './app/controllers/VinotecaController.php';

define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');

$action = 'listar';

if (!empty( $_GET['action'])) {
    $action = $_GET['action'];
}

$params = explode('/', $action);

switch ($params[0]) { 
    case 'listar':
        $controller= new VinotecaController();
        $controller->showVinos(); 
        break;
    case 'mostrarBodega':
        $controller= new VinotecaController();
        $controller->showBodega($params[1]); 
        break;
    case 'mostrarCepa':
        $controller= new VinotecaController();
        $controller->showCepa($params[1]); 
        break;
    default: 
        $controller= new VinotecaController();
        $controller->showVinos();
        break;
}




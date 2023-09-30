<?php

require_once './app/controllers/ComentarioController.php';

define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');

$action = 'listar';

if (!empty( $_GET['action'])) {
    $action = $_GET['action'];
}

$params = explode('/', $action);

switch ($params[0]) { 
    case 'listar':
        $controller= new ComentarioController();
        $controller->showComentarios(); 
        break;
    case 'agregar':
        $controller = new ComentarioController();
        $controller->addComentario();
        break;
   
    default: 
        $controller= new ComentarioController();
        $controller->showComentarios();
        break;
}




<?php

include_once "config/config.php";
include_once "controller/app_controller.php";

header("Access-Control-Allow-Origin: *");
header("Access-Control-Request-Methods: *");
header("Access-Control-Allow-Headers: Content-Type");

$method = $_SERVER['REQUEST_METHOD'];
$action = trim($_SERVER['PATH_INFO'], '/');
$input = json_decode(file_get_contents('php://input'), true);

// switch ($action) {
//   case '':
//
//     break;
//   default:
//     // code...
//     break;
// }

// echo 'Hello!';

 ?>

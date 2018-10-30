<?php

include_once "config/config.php";
include_once "controller/app_controller.php";
include_once "controller/assets_controller.php";
include_once "controller/record_controller.php";
include_once "controller/users_controller.php";

header("Access-Control-Allow-Origin: *");
header("Access-Control-Request-Methods: *");
header("Access-Control-Allow-Headers: Content-Type");
header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS");

$method = $_SERVER['REQUEST_METHOD'];
$action = trim($_SERVER['PATH_INFO'], '/');
$input = json_decode(file_get_contents('php://input'), true);

switch ($action) {
  case 'api/assets':
    if ($method === "GET") {
        getAllAssets();
    } elseif ($method === "POST") {
        editAssets($input);
    }
    break;
  case 'api/records':
    if ($method === "GET") {
      getAllRecords();
    } elseif ($method === "POST") {
      getOneRecordItems($input);
    }
    break;
  case 'api/record/new':
      addNewRecord($input);
    break;
  case 'api/record/last':
      findLastRecordNumber();
    break;
  case 'api/internal_user':
      if ($method === "GET") {
          getAllInternalUser();
      } elseif ($method === "PUT") {
          updateInternalUser($input);
      }
    break;
  case 'api/external_user':
      if ($method === "GET") {
          getAllExternalUser();
      } elseif ($method === "PUT") {
          updateExternalUser($input);
      }
    break;
  case 'api/internal_user/new':
      addNewInternalUser($input);
    break;
  case 'api/external_user/new':
      addNewExternalUser($input);
    break;
  default:
    // code...
    break;
}

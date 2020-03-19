<?php

include_once "config/config.php";
include_once "controller/app_controller.php";
include_once "controller/assets_controller.php";
include_once "controller/record_controller.php";
include_once "controller/users_controller.php";

header("Access-Control-Allow-Origin: *");
header("Access-Control-Request-Methods: *");
header("Access-Control-Allow-Headers: X-PINGOTHER, Content-Type");
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
  case 'api/assets/new':
      addNewAssets($input);
    break;
  case 'api/assets/delete':
      deleteAssets($input);
    break;
  case 'api/record':
    if ($method === "GET") {
        getAllRecords();
    } elseif ($method === "POST") {
        getOneRecord($input);
    }
    break;
  case 'api/record/internal':
      getAllInternalRecords();
    break;
  case 'api/record/update':
      updateRecord($input);
    break;
  case 'api/record/new':
      addNewRecord($input);
    break;
  case 'api/record/last':
      findLastRecordNumber();
    break;
  case 'api/record/item':
      getOneRecordItems($input);
    break;
  case 'api/internal_user':
      getAllInternalUser();
    break;
  case 'api/internal_user/update':
      updateInternalUser($input);
    break;
  case 'api/internal_user/delete':
      deleteInternalUser($input);
    break;
  case 'api/external_user':
      getAllExternalUser();
    break;
  case 'api/external_user/update':
      updateExternalUser($input);
    break;
  case 'api/external_user/delete':
      deleteExternalUser($input);
    break;
  case 'api/internal_user/new':
      addNewInternalUser($input);
    break;
  case 'api/external_user/new':
      addNewExternalUser($input);
    break;
  case 'api/user/contact':
    if ($method === "POST") {
        searchUserByContact($input);
    }
    break;
  case 'api/user/staffNumber':
    if ($method === "POST") {
        searchUserByStaffNumber($input);
    }
    break;
  default:
    // code...
    break;
}

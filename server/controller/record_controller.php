<?php

include_once "../config/config.php";

function addNewRecord($input)
{
    global $mysql;

    $name = $input['name'];
    $date = $input['date'];
    $staffNumber = $input['staffNumber'];
    $department = $input['department'];
    $dateOfReturn = $input['dateOfReturn'];
    $contact = $input['contact'];
    $itemAmount = $input['itemAmount'];
    $assetsModel = $input['assetsModel'];
    $assetsNo = $input['assetsNo'];
    $useLoctaion = $input['useLoctaion'];
    $returnName = $input['returnName'];
    $returnDate = $input['returnDate'];
    $remark = $input['remark'];
    $deliveryPerson = $input['deliveryPerson'];
    $deliveryDate = $input['deliveryDate'];
    $receiver = $input['receiver'];
    $receivedDate = $input['receivedDate'];
    $isReturn = $input['isReturn'];
    $in_ex = $input['in_ex'];

    $sql = "BEGIN";
    $mysql->query($sql);

    $sql = "INSERT INTO Transaction_Information (name, 'date', staffNumber, department, dateOfReturn, contact, remark, deliveryPerson, deliveryDate, receiver, receivedDate, isReturn, IN_EX)
            VALUES ('$name', '$date', '$staffNumber', '$department', '$dateOfReturn', '$contact', '$remark', '$deliveryPerson', '$deliveryDate', '$receiver', '$receivedDate', '$isReturn', '$in_ex')";
    $mysql->query($sql);

    for ($i = 0; $i <= $itemAmount; $i++) {
      $item = $i + 1;
      $sql = "INSERT INTO Item_Record (FormID, item, assetsModel, assetsNo, useLoctaion, returnName, returnDate)
              VALUES ((SELECT FormID FROM Transaction_Information ORDER BY FormID DESC LIMIT 1), '$item', '$assetsModel[$i]', '$assetsNo[$i]', '$useLoctaion[$i]', '$returnName[$i]', '$returnDate[$i]')";
      $mysql->query($sql);
    }

    $sql = "COMMIT";
    $mysql->query($sql);

    if ($mysql->query($sql) === true) {
      
    }
}

function findLastRecordNumber() {
  global $mysql;

  $sql = "SELECT * FROM Transaction_Information ORDER BY FormID DESC LIMIT 1";
  $result = $mysql->query($sql);
  $row = $result->fetch_assoc();

  if ($result->num_rows > 0) {
    $recordNumber = $row['FormID'] + 1;
    $response = array("recordNumber" => $recordNumber);
    echo json_encode($response);
  }
}

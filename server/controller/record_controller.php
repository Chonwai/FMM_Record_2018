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

    // Insert the Transaction Information
    if ($name != null || $staffNumber != null) {
        $sql = "INSERT INTO Transaction_Information (name, `date`, staffNumber, department, dateOfReturn, userContact, remark, status)
              VALUES ('$name', '$date', '$staffNumber', '$department', '$dateOfReturn', '$contact', '$remark', '$in_ex')";
        $mysql->query($sql);
    }

    for ($i = 0; $i < $itemAmount; $i++) {
        $item = $i + 1;
        if ($assetsModel[$i] != null || $assetsNo[$i] != null) {
            $sql = "INSERT INTO Item_Record (FormID, item, assetsModel, assetsNo, useLoctaion, returnName, returnDate)
                VALUES ((SELECT FormID FROM Transaction_Information ORDER BY FormID DESC LIMIT 1), '$item', '$assetsModel[$i]', '$assetsNo[$i]', '$useLoctaion[$i]', '$returnName[$i]', '$returnDate[$i]')";
            $mysql->query($sql);
        }
    }

    if ($deliveryPerson != null || $deliveryDate != null) {
        $sql = "INSERT INTO Check_In_Out_Record (FormID, deliveryPerson, deliveryDate, returnPerson, returnDate, isReturn)
              VALUES ((SELECT FormID FROM Transaction_Information ORDER BY FormID DESC LIMIT 1), '$deliveryPerson', '$deliveryDate', '$receiver', '$receivedDate', '$isReturn')";
        $mysql->query($sql);
    }

    $sql = "COMMIT";
    $mysql->query($sql);

    if ($mysql->query($sql) === true) {
        $response = array("message" => "1");
        echo json_encode($response);
    } else {
        $response = array("message" => "0");
        echo json_encode($response);
    }
}

function getAllRecords()
{
    global $mysql;

    $sql = "SELECT * FROM Transaction_Information
            INNER JOIN Check_In_Out_Record ON Transaction_Information.FormID = Check_In_Out_Record.FormID ORDER BY Transaction_Information.FormID DESC";

    $result = $mysql->query($sql);

    if ($result->num_rows > 0) {
        $response = [];
        while ($row = $result->fetch_assoc()) {
            $response[] = $row;
        }
        echo json_encode($response);
    } else {
        $response = array("message" => "0");
        echo json_encode($response);
    }
}

function getOneRecordItems($input)
{
    global $mysql;

    $formID = $input['formID'];

    $sql = "SELECT * FROM Item_Record WHERE FormID = '$formID'";

    $result = $mysql->query($sql);

    if ($result->num_rows > 0) {
        $response = [];
        while ($row = $result->fetch_assoc()) {
            $response[] = $row;
        }
        echo json_encode($response);
    } else {
        $response = array("message" => "0");
        echo json_encode($response);
    }
}

function getOneRecord($input)
{
    global $mysql;

    $formID = $input['formID'];

    $sql = "SELECT * FROM Transaction_Information
          INNER JOIN Check_In_Out_Record ON Transaction_Information.FormID = Check_In_Out_Record.FormID WHERE Transaction_Information.FormID = '$formID'";

    $result = $mysql->query($sql);

    if ($result->num_rows > 0) {
        $response = [];
        while ($row = $result->fetch_assoc()) {
            $response[] = $row;
        }
        echo json_encode($response);
    } else {
        $response = array("message" => "0");
        echo json_encode($response);
    }
}

function findLastRecordNumber()
{
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

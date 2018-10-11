<?php

include_once "../config/config.php";

function getAllInternalUser()
{
    global $mysql;

    $sql = "SELECT * FROM Internal_User";
    $result = $mysql->query($sql);

    if ($result->num_rows > 0) {
        $response = [];
        while ($row = $result->fetch_assoc()) {
            $response[] = $row;
        }
        echo json_encode($response);
    }
}

function getAllExternalUser()
{
    global $mysql;

    $sql = "SELECT * FROM External_User";
    $result = $mysql->query($sql);

    if ($result->num_rows > 0) {
        $response = [];
        while ($row = $result->fetch_assoc()) {
            $response[] = $row;
        }
        echo json_encode($response);
    }
}

function updateInternalUser($input)
{
    global $mysql;

    $userName = $input['userName'];
    $userContact = $input['userContact'];
    $userEmail = $input['userEmail'];
    $sum = $input['sum'];
    $staffNumber = $input['staffNumber'];
    $department = $input['department'];

    $sql = "UPDATE Internal_User SET userName='$userName', userContact='$userContact', userEmail='$userEmail', department='$department' WHERE staffNumber='$staffNumber'";

    if ($mysql->query($sql) === true) {
        $response = array("message" => "1");
        echo json_encode($response);
    } else {
        $response = array("message" => "0");
        echo json_encode($response);
    }
}

function updateExternalUser($input)
{
    global $mysql;

    $userName = $input['userName'];
    $userContact = $input['userContact'];
    $staffNumber = $input['staffNumber'];
    $department = $input['department'];
    $sum = $input['sum'];

    $sql = "UPDATE External_User SET userName='$userName', userContact='$userContact', department='$department', sum='$sum' WHERE staffNumber='$userContact'";

    if ($mysql->query($sql) === true) {
        $response = array("message" => "1");
        echo json_encode($response);
    } else {
        $response = array("message" => "0");
        echo json_encode($response);
    }
}

function addNewInternalUser($input)
{
    global $mysql;

    $staffNumber = $input['staffNumber'];
    $userName = $input['userName'];
    $userContact = $input['userContact'];
    $userEmail = $input['userEmail'];
    $department = $input['department'];

    if ($staffNumber != null) {
        $sql = "INSERT INTO Internal_User(staffNumber, userName, userContact, userEmail, department) VALUES ('$staffNumber', '$userName', '$userContact', '$userEmail', '$department')";

        if ($mysql->query($sql) === true) {
            $response = array("message" => "1");
            echo json_encode($response);
        } else {
            $response = array("message" => "0");
            echo json_encode($response);
        }
    } else {
        $response = array("message" => "0");
        echo json_encode($response);
    }
}

function addNewExternalUser($input)
{
    global $mysql;

    $staffNumber = $input['staffNumber'];
    $userName = $input['userName'];
    $userContact = $input['userContact'];
    $department = $input['department'];

    if ($userContact != null) {
        $sql = "INSERT INTO External_User(staffNumber, userName, userContact, department) VALUES ('$staffNumber', '$userName', '$userContact', '$department')";

        if ($mysql->query($sql) === true) {
            $response = array("message" => "1");
            echo json_encode($response);
        } else {
            $response = array("message" => "0");
            echo json_encode($response);
        }
    } else {
        $response = array("message" => "0");
        echo json_encode($response);
    }
}

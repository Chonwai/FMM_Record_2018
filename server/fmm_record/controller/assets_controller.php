<?php

include_once "../config/config.php";

function getAllAssets()
{
    // echo json_encode("Hello!");
    global $mysql;

    $sql = "SELECT * FROM Assets";

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

function editAssets($input)
{
    global $mysql;

    // var_dump($input);

    $ID = $input['ID'];
    $Item = $input['Item'];
    $Description = $input['Description'];
    $Category = $input['Category'];
    $State = $input['State'];
    $Acquired_Date = $input['Acquired_Date'];
    $Purchase_Price = $input['Purchase_Price'];
    $Current_Value = $input['Current_Value'];
    $Location = $input['Location'];
    $Manufacturer = $input['Manufacturer'];
    $Model = $input['Model'];
    $Comments = $input['Comments'];
    $Owner = $input['Owner'];
    $ID_Number = $input['ID_Number'];
    $Attachments = $input['Attachments'];
    $Retired_Date = $input['Retired_Date'];

    $sql = "UPDATE Assets SET Item='$Item', Description='$Description', Category='$Category', State='$State', Acquired_Date='$Acquired_Date', Purchase_Price='$Purchase_Price', Current_Value='$Current_Value', Location='$Location', Manufacturer='$Manufacturer', Model='$Model', Comments='$Comments',
            Owner='$Owner', Retired_Date='$Retired_Date', ID_Number = '$ID_Number' WHERE ID='$ID'";

    if ($mysql->query($sql) === true) {
        $response = array("message" => "1");
        echo json_encode($response);
    } else {
        $response = array("message" => "0");
        echo json_encode($response);
    }
}

<?php
 
    $servername = "localhost:8080";
    $username = "root";
    $password = "";
    $dbname = "dictionary";
    $table = "dictionary"; 
    // we will get actions from the app to do operations in the database...
	
	/*$connect = new mysqli("localhost", "root", "", "homestead"); 
	if($connect){} else{ echo "Connection Failed"; exit(); } 
    $action = $_POST["action"];*/
    // Create Connection
	
	$connect = new mysqli("localhost", "root", "", "dictionary"); 
	//if($connect){echo "Connection success";} else{ echo "Connection Failed"; exit(); } 
	if($connect){} else{ echo "Connection Failed"; exit(); } 
	
    //$conn = new mysqli($servername, $username, $password, $dbname);
	//$action = $_POST["action"]
	
    // Check Connection
    if($conn->connect_error){
        die("Connection Failed: " . $conn->connect_error);
        return;
    }
    // Get all data from the database
        $db_data = array();
        $sql = "SELECT * from $table ORDER BY id DESC";
        $result = $connect->query($sql);
        if($result->num_rows > 0){
            while($row = $result->fetch_assoc()){
                $db_data[] = $row;
            }
            // Send back the complete records as a json
            echo json_encode($db_data);
			print_r($db_data);die;
        }else{
            echo "error";
        }
        $conn->close();
        return;
		

?>
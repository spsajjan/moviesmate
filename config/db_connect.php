<?php

//-- Database Variables
$db_servername = "localhost";
$db_username = "root";
$db_password = "";
$db_database = "db_moviesmate";
//-- Create a connection
$conn = new mysqli($db_servername, $db_username, $db_password, $db_database);
if ($conn->connect_errno) {
	echo "Failed to connect to MySQL: " . $mysqli->connect_error;
	exit();
}
return $conn;

<?php

	// Connecting to the Database
	$db_servername = "localhost";
	$db_username = "root";
	$db_password = "";
	$db_database = "db_moviesmate";

	// Create a connection
	$conn = mysqli_connect($db_servername, $db_username, $db_password, $db_database);

	// Die if connection was not successful
	if (!$conn){
		die("Sorry we failed to connect: ". mysqli_connect_error());
	}
	else{
		// Return $conn variable
		return $conn;
	}

<?php
	$conn = new mysqli('localhost', 'diego', 'diego123', 'apsystem');

	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	}
	
?>
<?php

	// connect to the database
	$conn = mysqli_connect('localhost', 'root', '', 'movie_database');

	// check connection
	if(!$conn){
		die('Connection error: '. mysqli_connect_error());
	}

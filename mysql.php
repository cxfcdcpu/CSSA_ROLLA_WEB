<?php
//The code below is modified by me(Xiaofei Cao). The original code is from THE book effortless E-commerce and php


// Set the database access information as constants:
DEFINE ('DB_USER', 'root');
DEFINE ('DB_PASSWORD', '');
DEFINE ('DB_HOST', 'localhost');
DEFINE ('DB_NAME', 'crd');

// Make the connection:
$dbc = mysqli_connect (DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);

// Set the character set:
mysqli_set_charset($dbc, 'utf8');

// Function for escaping and trimming form data.
// Takes one argument: the data to be treated (string).
// Returns the treated data (string).
function escape_data ($data) { 

	global $dbc; // Database connection.
	
	// Strip the slashes if Magic Quotes is on:
	if (get_magic_quotes_gpc()) $data = stripslashes($data);
	
	// Apply trim() and mysqli_real_escape_string():
	return mysqli_real_escape_string ($dbc, trim ($data));
	
} // End of the escape_data() function.

// This function returns the hashed version of a password.
// It takes the user's password as its one argument.
// It returns a binary version of the password, already escaped to use in a query.
function get_password_hash($password) {
	
	// Need the database connection:
	global $dbc;
	
	// Return the escaped password:
	return mysqli_real_escape_string ($dbc, hash_hmac('sha256', $password, 'c#haRl891', true));
	
} // End of get_password_hash() function.

// Omit the closing PHP tag to avoid 'headers already sent' errors!
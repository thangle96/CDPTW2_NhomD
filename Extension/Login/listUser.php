<?php 
session_start();

include('functions.php');
$query = "SELECT * FROM mssv";
$results = mysqli_query($conn, $query); 
var_dump($results);
?>

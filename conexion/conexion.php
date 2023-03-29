<?php

// $databaseHost = 'localhost';//or localhost
// $databaseName = 'hola'; // your db_name
// $databaseUsername = 'root'; // root by default for localhost 
// $databasePassword = 'dibicar2023';  // by defualt empty for localhost 
$databaseHost = 'localhost';//or localhost
$databaseName = 'pruebadesis'; // your db_name
$databaseUsername = 'root'; // root by default for localhost 
$databasePassword = '';  // by defualt empty for localhost 

$mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName);

?>
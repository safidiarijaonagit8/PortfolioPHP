<?php
/*$hostName = "localhost";
$userName = "root";
$password = "root";
$databaseName = "portfolio";*/
$hostName = "mysql-safidyarijaona.alwaysdata.net";
$userName = "310527";
$password = "safidyitrealbase";
$databaseName = "safidyarijaona_portfolio";
$conn = new mysqli($hostName, $userName, $password, $databaseName);

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
mysqli_set_charset($conn,"utf8");
?>

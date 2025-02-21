<?php

$serverName = "localhost";
$userName = "root";
$password = "";
$database = "db_puskesmas";

// Buat koneksi
$connection = new mysqli($serverName, $userName, $password, $database);

// Cek koneksi
if ($connection->connect_error) {
    die("Koneksi ke database gagal: " . $connection->connect_error);
}

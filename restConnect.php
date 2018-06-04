<?php
# Definicja zmiennych danych połączenia
$db_name = "mibbdb";
$mysql_username = "root";
$mysql_password = "";
$server_name = "localhost";

# Utworzenie połączenia
$conn = mysqli_connect($server_name, $mysql_username, $mysql_password, $db_name);

# Weryfikacja połączenia
if ($conn->connect_error) {
	die("Connection failed: " . $conn->connect_error);
} 

# Zdefiniowanie kodowania połączenia
mysqli_set_charset($conn, "utf8");
?>
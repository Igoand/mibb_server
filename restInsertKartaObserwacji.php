<?php
require "restConnect.php";

# Deklaracja zmiennych otrzymanych poprzez komunikacjê POST
$tabela = $_POST["kartaobserwacji"];
$obserwator = $_POST["obserwator"];
$email = $_POST["email"];
$telefon = $_POST["telefon"];
$wojewodztwo = $_POST["miejscowosc"];
$powiat = $_POST["powiat"];
$gmina = $_POST["gmina"];
$data_obserwacji = $_POST["data_obserwacji"];
$numer_Karty = $_POST["numer_Karty"];

# Przygotowanie zapytania SQL
$sql = "insert into '$kartaobserwacji' (daneObserwatora, emailObserwatora, telefonObserwatora,	wojewodztwo, powiat,	gmina,	dataRejestracjiKarty,	numerKarty) values ('$obserwator', '$email', '$telefon', '$wojewodztwo', '$powiat', '$gmina', '$data_obserwacji', '$numer_Karty')";

# Przechwycenie wyniku wykonania zapytania do zmiennej
$wynik = $conn->query($sql);

# Obs³uga wyników
if (mysqli_query($conn, $mysql_zapytanie)){
	echo "Pomyslnie zapisano dane na zdalnej bazie danych.";
}
else{
	echo "B³ad wysy³ania danych na zdaln¹ bazê danych: \n" . $conn->error;
}
$conn->close();
?>
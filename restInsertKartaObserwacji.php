<?php
require "restConnect.php";

# Deklaracja zmiennych otrzymanych poprzez komunikacjê POST
$obserwator = $_POST["obserwator"];
$email = $_POST["email"];
$telefon = $_POST["telefon"];
$wojewodztwo = $_POST["wojewodztwo"];
$powiat = $_POST["powiat"];
$gmina = $_POST["gmina"];
$data_obserwacji = $_POST["data_obserwacji"];
$data_obserwacji = date("Y-m-d");
$czasLoga = date("h:i:s");

# Zdefiniowanie kodowania po³¹czenia
mysqli_set_charset($conn, "utf8");

# Przygotowanie zapytania SQL sprawdzaj¹cego numer ostatni numer karty w danej gminie
$sqlSprawdzNrKarty = "select numerKarty from obserwacja where gmina like '%$gmina%' order by idKarty desc limit 1";

# Przechwycenie wyniku wykonania zapytania do zmiennej
$numerKarty = $conn->query($sqlSprawdzNrKarty);

# Obs³uga wyniku numeru karty
if ($numerKarty!=null){
	while($wiersz = mysqli_fetch_array($numerKarty)){
		# Przypisanie zmiennej numerGniazda cyfry z ostatnio zapisanej nazwaGniazda pod katem nazwy miejscowosci
		$wyznaczonyNumerKarty = (int) filter_var($wiersz['numerKarty'], FILTER_SANITIZE_NUMBER_INT);

		# Logowowanie
		error_log($czasLoga."	Zczytane z bazy: ". $wyznaczonyNumerKarty." - ".$gmina."\n", 3, 'temperroro.log');
		
		(int)$wyznaczonyNumerKarty = (int)$wyznaczonyNumerKarty + 1;
		# Logowanie
		error_log($czasLoga."	Wyliczone: ". $wyznaczonyNumerKarty." - ".$gmina."\n", 3, 'temperroro.log');
	}
}else{
	$wyznaczonyNumerKarty = 1;
	# Logowanie
	error_log($czasLoga."	Nowa karta: ". $wyznaczonyNumerKarty." - ".$gmina."\n", 3, 'temperroro.log');
}


# Przygotowanie zapytania SQL do wprowadznie danych karty obserwacji na baze
$sqlInsert = "insert into kartaobserwacji (daneObserwatora, emailObserwatora, telefonObserwatora,	wojewodztwo, powiat,	gmina,	dataRejestracjiKarty, numerKarty) values ('$obserwator', '$email', '$telefon', '$wojewodztwo', '$powiat', '$gmina', '$data_obserwacji', '$wyznaczonyNumerKarty')";

# Przechwycenie wyniku wykonania zapytania do zmiennej
$wynik = $conn->query($sqlInsert);

# Obs³uga wyników
if (mysqli_query($conn, $sqlInsert)){
	echo "Pomyslnie zapisano dane na zdalnej bazie danych.";
}
else{
	echo "B³ad wysy³ania danych na zdaln¹ bazê danych: \n" . $conn->error;
}
$conn->close();
?>
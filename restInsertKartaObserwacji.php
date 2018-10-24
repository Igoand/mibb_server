<?php
header('Content-Type: text/html; charset=utf-8');
require "restConnect.php";

# Deklaracja zmiennych otrzymanych poprzez komunikację POST
$obserwator = $_POST["obserwator"];
$email = $_POST["email"];
$telefon = $_POST["telefon"];
$wojewodztwo = $_POST["wojewodztwo"];
$powiat = $_POST["powiat"];
$gmina = $_POST["gmina"];
$data_obserwacji = date("Y-m-d");
$czasLoga = date("h:i:s");

# Przygotowanie zapytania SQL sprawdzającego numer ostatni numer karty w danej gminie
$sqlSprawdzNrKarty = "select numerKarty from kartaobserwacji where gmina like '%$gmina%' order by idKarty desc limit 1";

# Przechwycenie wyniku wykonania zapytania do zmiennej
$numerKarty = $conn->query($sqlSprawdzNrKarty);

# Obsługa wyniku numeru karty
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

$nowyNumerKarty=(string)$gmina.(string)$wyznaczonyNumerKarty;
error_log($czasLoga."	nowyNumerKarty: ". $nowyNumerKarty."\n", 3, 'temperroro.log');
# Przygotowanie zapytania SQL do wprowadznie danych karty obserwacji na baze
$sqlInsert = "insert into kartaobserwacji (daneObserwatora, emailObserwatora, telefonObserwatora,	wojewodztwo, powiat,	gmina,	dataRejestracjiKarty, numerKarty) values ('$obserwator', '$email', '$telefon', '$wojewodztwo', '$powiat', '$gmina', '$data_obserwacji', '$nowyNumerKarty')";

# Przechwycenie wyniku wykonania zapytania do zmiennej
#$wynik = $conn->query($sqlInsert);

# Obsługa wyników
if (mysqli_query($conn, $sqlInsert)){
	echo $nowyNumerKarty;
}else{
	echo "Bład wysyłania danych na zdalną bazęanych: \n" . $conn->error;
}
$conn->close();
?>
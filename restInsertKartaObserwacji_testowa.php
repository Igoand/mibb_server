<?php
require "restConnect.php";

# Deklaracja zmiennych otrzymanych poprzez komunikacjꡐOST
$gmina = "Górowo Iławeckie";

# Przygotowanie zapytania SQL sprawdzajڣego numer ostatni numer karty w danej gminie
$sqlSprawdzNrKarty = "select numerKarty from obserwacja where gmina like '%$gmina%' order by idKarty desc limit 1";

# Przechwycenie wyniku wykonania zapytania do zmiennej
$numerKarty = $conn->query($sqlSprawdzNrKarty);

# ObsԵga wyniku numeru karty
if ($numerKarty!=null){
	while($wiersz = mysqli_fetch_array($numerKarty)){
		# Przypisanie zmiennej numerGniazda cyfry z ostatnio zapisanej nazwaGniazda pod katem nazwy miejscowosci
		$wyznaczonyNumerKarty = (int) filter_var($wiersz['numerKarty'], FILTER_SANITIZE_NUMBER_INT);
		(int)$wyznaczonyNumerKarty = (int)$wyznaczonyNumerKarty + 1;
	}
}else{
	$wyznaczonyNumerKarty = 1;
}
	echo $gmina;
$conn->close();
?>
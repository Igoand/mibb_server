<?php
require "restConnect.php";

# Deklaracja zmiennych otrzymanych poprzez komunikację POST
$gmina = $_POST["gmina"];
#$miejscowosc = "Olsztyn";

# Przygotowanie zapytania SQL
$sql = "select numerKarty from obserwacja where gmina like '%$gmina%' order by idKarty desc limit 1";

# Przechwycenie wyniku wykonania zapytania do zmiennej
$wynik = $conn->query($sql);

# Obsługa wyników
if ($wynik!=null){
	while($wiersz = mysqli_fetch_array($wynik)){
		# Przypisanie zmiennej numerGniazda cyfry z ostatnio zapisanej nazwaGniazda pod katem nazwy miejscowosci
		$numerKarty = (int) filter_var($wiersz['numerKarty'], FILTER_SANITIZE_NUMBER_INT);
		echo $numerKarty;
	}
}else{
		echo "Brak wyników";}
$conn->close();
?>
<?php
require "restConnect.php";

# Deklaracja zmiennych otrzymanych poprzez komunikację POST
$miejscowosc = $_POST["miejscowosc"];

# Przygotowanie zapytania SQL
$sql = "select nazwaGniazda from obserwacja where nazwaGniazda like '%$miejscowosc%' order by idGniazda desc limit 1";

# Przechwycenie wyniku wykonania zapytania do zmiennej
$wynik = $conn->query($sql);

# Obsługa wyników
if ($wynik!=null){
	while($wiersz = mysqli_fetch_array($wynik)){
		# Przypisanie zmiennej numerGniazda cyfry z ostatnio zapisanej nazwaGniazda pod katem nazwy miejscowosci
		$numerGniazda = (int) filter_var($wiersz['nazwaGniazda'], FILTER_SANITIZE_NUMBER_INT);
		echo $numerGniazda;
	}
}else{
		echo "Brak wyników";}
$conn->close();
?>
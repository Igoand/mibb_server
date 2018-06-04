<?php
require "restConnect.php";

# Deklaracja zmiennych otrzymanych poprzez komunikację POST
$nazwaGniazda = $_POST["nazwaGniazda"];
$lokalizacjaGniazda = $_POST["lokalizacjaGniazda"];
$usytuowanieGniazda = $_POST["usytuowanieGniazda"];
$platformaGniazda = $_POST["platformaGniazda"];
$efektLegu = $_POST["efektLegu"];
$stanGniazda = $_POST["stanGniazda"];
$obecnoscObraczki = $_POST["obecnoscObraczki"];
$uwagi = $_POST["uwagi"];
$idZdjecia = $_POST["idZdjecia"];
$fkKartaObserwacji = $_POST["fkKartaObserwacji"];

# Przygotowanie zapytania SQL
$mysql_zapytanie = "insert into obserwacja (nazwaGniazda, lokalizacjaGniazda, usytuowanieGniazda, platformaGniazda, efektLegu, stanGniazda, idZdjecia, obecnoscObraczki, uwagi, fkKartaObserwacji) values ('$nazwaGniazda', '$lokalizacjaGniazda', '$usytuowanieGniazda', '$platformaGniazda', '$efektLegu', '$stanGniazda', '$idZdjecia' ,'$obecnoscObraczki' ,'$uwagi', '$fkKartaObserwacji');";


# Obsługa wyników
if (mysqli_query($conn, $mysql_zapytanie)){
	echo "Pomyslnie zapisano dane na zdalnej bazie danych.";
}
else{
	echo "Bład wysyłania danych na zdalną bazę danych: \n" . $conn->error;
}
$conn->close();
?>
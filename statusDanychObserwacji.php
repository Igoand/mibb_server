<?php
require "restConnect.php";
$tabela = $_POST["nazwaTabeli"];

$mysql_zapytanie = "select * from $tabela;";

$result = mysqli_query($conn, $mysql_zapytanie);



if (!$result){
	echo "Nie udało się uzyskać odpowiedzi!";}
else{
	if(mysqli_num_rows($result) > 0){
		echo "<br>Są jakieś dane!";
	}else{
		echo "<br>Brak danych!";
	}
}
?>
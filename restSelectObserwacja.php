<?php
require "restConnect.php";

$idKartaObserwacji=$_POST["idKartaObserwacji"];
$nazwaGminy=$_POST['nazwaGminy'];
#$idKartaObserwacji="49";

# Przygotowanie zapytania SQL
$sqlSelectObserwacje="SELECT * FROM obserwacja where fkKartaObserwacji = '$idKartaObserwacji' and nazwaGminy = '$nazwaGminy'";

# Wykonanie zapytania i otrzymanie wyniku
$result=mysqli_query($conn, $sqlSelectObserwacje);

#Osługa wyników
if($result){
	while($row=mysqli_fetch_array($result)){
		$data[]=$row;
	}
	print(json_encode($data));
}
$conn->close();
?>
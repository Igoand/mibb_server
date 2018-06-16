<?php
require "restConnect.php";

# Przygotowanie zapytania SQL
$sqlSelectKarta="SELECT * FROM kartaobserwacji order by idKarty desc";

# Wykonanie zapytania i otrzymanie wyniku
$result=mysqli_query($conn, $sqlSelectKarta);

#Osługa wyników
if($result){
	while($row=mysqli_fetch_array($result)){
		$data[]=$row;
	}
	print(json_encode($data));
}
$conn->close();
?>
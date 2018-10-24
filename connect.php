<?php

$user = 'root';
$pass = '';

$db = 'bociania_wies_zywkowo';

$db = new mysqli('192.168.0.2', $user, $pass, $db) or die("Unable to connect");

echo "Great work";

?>﻿

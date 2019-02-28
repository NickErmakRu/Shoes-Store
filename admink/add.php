<?php
	$host = 'localhost'; // адрес сервера 
	$database = 'krossovki'; // имя базы данных
	$user = 'root'; // имя пользователя
	$password = ''; // пароль

	$link = mysqli_connect($host, $user, $password, $database) 
	    or die("Ошибка " . mysqli_error($link));

	mysqli_set_charset($link,"utf8");
	echo "<link rel='stylesheet' href='../oform/style.css'>";

	$add_query = "INSERT INTO models VALUES(0,	'".$_POST["brand_name"]."',
											  	'".$_POST["model_name"]."',
											  ".$_POST["number"].",
											  ".$_POST["id_brand"].",
											  ".$_POST["id_type"].",
											  	'".$_POST["img_link"]."')";
	$add = mysqli_query($link, $add_query);

	echo $add_query;

	mysqli_close($link);
	header('location: ../admin.php');
?>
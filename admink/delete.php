<?php
	$host = 'localhost'; // адрес сервера 
	$database = 'krossovki'; // имя базы данных
	$user = 'root'; // имя пользователя
	$password = ''; // пароль

	$link = mysqli_connect($host, $user, $password, $database) 
	    or die("Ошибка " . mysqli_error($link));

	mysqli_set_charset($link,"utf8");
	echo "<link rel='stylesheet' href='../oform/style.css'>";

	$delete_query = "DELETE FROM models WHERE id=".$_POST["id"];
	$delete = mysqli_query($link, $delete_query);

	echo $delete_query;

	mysqli_close($link);
	header('location: ../admin.php');

?>
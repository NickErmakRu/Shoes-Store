<?php

	$host = 'localhost'; // адрес сервера 
	$database = 'krossovki'; // имя базы данных
	$user = 'root'; // имя пользователя
	$password = ''; // пароль

	$link = mysqli_connect($host, $user, $password, $database) 
	    or die("Ошибка " . mysqli_error($link));

	mysqli_set_charset($link,"utf8");
	echo "<link rel='stylesheet' href='oform/style.css'>";

	$needle=$_POST["needle"];

	$models_query = "SELECT * FROM `models` WHERE (`brand_name` LIKE '%$needle%') OR (`model_name` LIKE '%$needle%') OR (`number` LIKE '%$needle%')";
	$all_models = mysqli_query($link, $models_query);

	mysqli_close($link);

	echo "<center><h2>Найденные модели:</h2><hr></center>";
	foreach ($all_models as $models) {
				echo("<a href=model.php?id_model=".$models['id'].">
						<div class='models' style='background-image:url(".$models['img_link']."')>
							 ".$models['brand_name']."<br>".$models['model_name']." (".$models['number'].")
						</div>
					  </a>");
			} 

			?>

	<html><hr><center><a href="index.php">на главную</a></center></html>


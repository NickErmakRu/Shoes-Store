<?php
	include("header.html");
	$host = 'localhost'; // адрес сервера 
	$database = 'krossovki'; // имя базы данных
	$user = 'root'; // имя пользователя
	$password = ''; // пароль

	$link = mysqli_connect($host, $user, $password, $database) 
	    or die("Ошибка " . mysqli_error($link));

	mysqli_set_charset($link,"utf8");
	echo "<link rel='stylesheet' href='oform/style.css'>";

	$models_query = "SELECT * FROM `models` WHERE id_type=".$_GET['id'];
	$mod = mysqli_query($link, $models_query);


	mysqli_close($link);
?>

<html>
	<div>
		<div class="name">
			<center>Кроссы данного типа:</center>
		</div>
		<center><?php  
			foreach ($mod as $models) {
				echo("<a href=hero.php?id_hero=".$models['id'].">
						<div class='models' style='background-image:url(".$models['img_link']."')>
							 ".$models['brand_name']."<br>".$models['model_name']." (".$models['number'].")
						</div>
					  </a>");
			}
		?></center>
	</div><hr width="70%">

	<center>Здесь поиск:<br><br>
<form method="POST" action="result.php">
		<input type="text" name="needle" placeholder="Кроссовки ждут...">
		<input type="submit" class="submit" value="Найти">
	</form></center>

		<hr width="70%"><center><a href="index.php">на главную</a></center>
</html>
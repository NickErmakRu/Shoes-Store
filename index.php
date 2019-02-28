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

//В переменную planet пишем получение всех планет 
$type_query = "SELECT * FROM `type`";
$types = mysqli_query($link, $type_query);


mysqli_close($link);

?>

<html>
	<div class="types">
		<center><?php  
			foreach ($types as $type) {
				echo("<a href=models.php?id=".$type['id'].">
						<div class='type' style='background-image:url(".$type['img_link']."')> 
						".$type['name']."
						</div>
					  </a>");
			}
		?></center>
	</div>

<center>Здесь поиск:<br><br>
<form method="POST" action="result.php">
		<input type="text" name="needle" placeholder="Кроссовки ждут...">
		<input type="submit" class="submit" value="Найти">
	</form></center><hr width="70%">

<center><a href="spisok.php">Все товары</a></center>

<!-- <br><center><form method="POST" action="admin.php">
		<input type="submit" class="submit" value="Админка">
	</form></center> --> <!-- кнопка для перехода на панель администратора -->


</html>
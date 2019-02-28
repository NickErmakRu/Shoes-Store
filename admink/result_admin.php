<?php
	include("../header.html");
	$host = 'localhost'; // адрес сервера 
	$database = 'krossovki'; // имя базы данных
	$user = 'root'; // имя пользователя
	$password = ''; // пароль

	$link = mysqli_connect($host, $user, $password, $database) 
	    or die("Ошибка " . mysqli_error($link));

	mysqli_set_charset($link,"utf8");
	echo "<link rel='stylesheet' href='../oform/style.css'>";

	$needle=$_POST["needle"];

	$models_query = "SELECT * FROM `models` WHERE (`brand_name` LIKE '%$needle%') OR (`model_name` LIKE '%$needle%') OR (`number` LIKE '%$needle%')";
	$all_models = mysqli_query($link, $models_query);

	mysqli_close($link);

	echo "<center><h2>Найденные модели:</h2><hr></center>";
	foreach ($all_models as $models) {
				echo("<tr>
					
					<div class='models' 
						style='background-image:url(".$models['img_link']."')>
							 ".$models['brand_name']."<br>".$models['model_name']." (".$models['number'].")
							 <br>"."type "."".$models['id_type']."
							 <br><br><br><br><br><br><br>"."id="."".$models['id']."
					
					

					<form method='POST' action='delete.php'>
					<input type='hidden' value='".$models['id']."' name='id'>
					<input type='submit' value='Delete'>
					</form>

					</div>
				
					</tr>");
			} 

			?>

<html>
	
	<div>

		<div class="name">
			Обновить информацию о модели (по номеру id):
		</div>
		<form  action="update.php" method="POST">
			
			<div>id (будет обновлена информация о кроссовках с указанным номером): <input type="text" name="chek_id"></div><br><br>
			<div>Наименование бренда: <input type="text" name="upd_brand"></div><br>
			<div>Наименование модели: <input type="text" name="upd_model"></div><br>
			<div>Номер на складе: <input type="text" name="upd_number"></div><br>
			<div>Подтвердите наименование бренда: 
						<label><input type="radio" name="upd_id_brand" value="1">Adidas</label>
						<label><input type="radio" name="upd_id_brand" value="2">Nike</label>
						<label><input type="radio" name="upd_id_brand" value="3">Reebok</label>
						<label><input type="radio" name="upd_id_brand" value="4">Umbro</label>
						<label><input type="radio" name="upd_id_brand" value="5">Kappa</label>
			</div><br>
			<div>Тип: 
						<label><input type="radio" name="upd_id_type" value="1">Safety (1)</label>
						<label><input type="radio" name="upd_id_type" value="2">Sport (2)</label>
						<label><input type="radio" name="upd_id_type" value="3">Other (3)</label>
			</div><br>
			<div>Изображение: <input type="text" name="upd_img_link"></div><br>
			<input type="submit" value="Обновить">
		</form></div>

		<hr><center><a href="../admin.php">панель администатора</a></center>

</html>


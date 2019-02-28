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

	$models_query = "SELECT * FROM `models`";
	$mod = mysqli_query($link, $models_query);


	mysqli_close($link);
?>

<html>
	
	<div>
		<div class="name">
			Добавить модель:
		</div>




		<form  action="admink/add.php" method="POST">
			
			<div>Наименование бренда: <input type="text" name="brand_name"></div><br>
			<div>Наименование модели: <input type="text" name="model_name"></div><br>
			<div>Номер на складе: <input type="text" name="number"></div><br>
			<div>Подтвердите наименование бренда (будет присвоен идентификационный номер): 
						<label><input type="radio" name="id_brand" value="1">Adidas</label>
						<label><input type="radio" name="id_brand" value="2">Nike</label>
						<label><input type="radio" name="id_brand" value="3">Reebok</label>
						<label><input type="radio" name="id_brand" value="4">Umbro</label>
						<label><input type="radio" name="id_brand" value="5">Kappa</label>
			</div><br>
			<div>Тип (type): 
						<label><input type="radio" name="id_type" value="1">Safety (1)</label>
						<label><input type="radio" name="id_type" value="2">Sport (2)</label>
						<label><input type="radio" name="id_type" value="3">Other (3)</label>
			</div><br>
			<div>Изображение: <input type="text" name="img_link"></div><br>
			<input type="submit" value="Добавить">
		</form><hr>



		<div class="name">
			Обновить информацию о модели (по номеру id):
		</div>
		<form  action="admink/update.php" method="POST">
			
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
			<div>Тип (type): 
						<label><input type="radio" name="upd_id_type" value="1">Safety (1)</label>
						<label><input type="radio" name="upd_id_type" value="2">Sport (2)</label>
						<label><input type="radio" name="upd_id_type" value="3">Other (3)</label>
			</div><br>
			<div>Изображение: <input type="text" name="upd_img_link"></div><br>
			<input type="submit" value="Обновить">
		</form><hr>


		<div class="name">
			Найти и обновить/удалить:
		</div>

		<form method="POST" action="admink/result_admin.php">
		<input type="text" name="needle" placeholder="Кроссовки ждут...">
		<input type="submit" class="submit">
				</form><hr>



		<table>
			<?php
			foreach ($mod as $models) {
				echo("<tr>
					
					<div class='models' 
						style='background-image:url(".$models['img_link']."')>
							 ".$models['brand_name']."<br>".$models['model_name']." (".$models['number'].")
							 <br>"."type "."".$models['id_type']."
							 <br><br><br><br><br><br><br>"."id="."".$models['id']."
					
					

					<form method='POST' action='admink/delete.php'>
					<input type='hidden' value='".$models['id']."' name='id'>
					<input type='submit' value='Delete'>
					</form>

					</div>
				
					</tr>");
			}
			?>
		</table>
		<!-- -->
	</div>
</html>
<?php
	$host = 'localhost'; // адрес сервера 
	$database = 'krossovki'; // имя базы данных
	$user = 'root'; // имя пользователя
	$password = ''; // пароль

	$link = mysqli_connect($host, $user, $password, $database) 
	    or die("Ошибка " . mysqli_error($link));

	mysqli_set_charset($link,"utf8");
	echo "<link rel='stylesheet' href='../oform/style.css'>";

	if(isset($_POST['chek_id']) && ($_POST['upd_brand']) && isset($_POST['upd_model'])){
 
    $id = htmlentities(mysqli_real_escape_string($link, $_POST['chek_id']));
    $brand = htmlentities(mysqli_real_escape_string($link, $_POST['upd_brand']));
    $model = htmlentities(mysqli_real_escape_string($link, $_POST['upd_model']));
    $number = htmlentities(mysqli_real_escape_string($link, $_POST['upd_number']));
    $id_br = htmlentities(mysqli_real_escape_string($link, $_POST['upd_id_brand']));
    $id_t = htmlentities(mysqli_real_escape_string($link, $_POST['upd_id_type']));
    $img = htmlentities(mysqli_real_escape_string($link, $_POST['upd_img_link']));

     
    $upd_query ="UPDATE models SET brand_name='$brand', model_name='$model', number='$number',
    								id_brand='$id_br', id_type='$id_t', img_link='$img'
    																					WHERE id='$id'";
    $upd = mysqli_query($link, $upd_query) or die("Ошибка " . mysqli_error($link)); 

	}

	echo $upd_query;

	mysqli_close($link);
	header('location: ../admin.php');

?>
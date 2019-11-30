<!DOCTYPE>
<html>
<head>
<title>Registrar</title>
</head>
<body>
<?php
	
$usuario=define('DB_USER', "atrrlbdowohgjl"); // Usuario
$contraseña=define('DB_PASSWORD', "8c304d72d03d205582f0b41f1ba428b2bf12940d6dc20ae68413e41fd13c7b33"); // Password
$bd=define('DB_DATABASE', "d8eg65mufg9t31"); // Nombre de la base de datos
$server=define('DB_SERVER', "ec2-54-247-72-30.eu-west-1.compute.amazonaws.com"); //host server


$cod_coor=$_POST['txtcodigo'];
$nom_coor=$_POST['txtnombre'];
$email_coor=$_POST['txtemail'];
$cod_inst=$_POST['cmbinstitucion'];
$pass_coor=$_POST['txtpass_coor'];


$insertar="INSERT into coordinador (cod_coor,nom_coor,email_coor,cod_inst, pass_coor)
					  values('$cod_coor','$nom_coor','$email_coor','$cod_inst', '$pass_coor')";



require("registrar.php");
?>


</form>

</body>

</html>

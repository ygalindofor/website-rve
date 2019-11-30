<?php
$usuario=define('DB_USER', "atrrlbdowohgjl"); // Usuario
$contraseña=define('DB_PASSWORD', "8c304d72d03d205582f0b41f1ba428b2bf12940d6dc20ae68413e41fd13c7b33"); // Password
$bd=define('DB_DATABASE', "d8eg65mufg9t31"); // Nombre de la base de datos
$server=define('DB_SERVER', "ec2-54-247-72-30.eu-west-1.compute.amazonaws.com"); //host server


$conexion=mysqli_connect($server,$usuario,$contraseña,$bd);



$usuario=$_POST['usuario'];
$clave=$_POST['clave'];

$resultado= mysqli_query($conexion,"SELECT * FROM coordinador WHERE email_coor='$usuario' and pass_coor='$clave'")
or die ("Error al traer los datos");

if($proceso = mysqli_fetch_array($resultado)){


	header("location:index2.html");

}else{

	header("location:login.php");
}

?>

<?php

$server="localhost";
$usuario="root";
$contraseña="";
$bd="proyecto";

$conexion=mysqli_connect($server,$usuario,$contraseña,$bd)
or die ("Error de la conexion");

$codigo=$_POST['txtcodigo1'];

mysqli_query($conexion,"DELETE from profesor where cod_prof='$codigo'")
or die("Error al eliminar los datos");

mysqli_close($conexion);
require("registrar.php");




?>

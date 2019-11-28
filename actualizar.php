<?php

$server="localhost";
$usuario="root";
$contraseña="";
$bd="proyecto";

$conexion=mysqli_connect($server,$usuario,$contraseña,$bd)
or die ("Error de la conexion");

$codigo=$_POST['txtcodigo'];
$nombre=$_POST['txtnombre'];
$email=$_POST['txtemail'];
$inst=$_POST['cmbinstitucion'];


mysqli_query($conexion,"UPDATE profesor set nom_prof='$nombre',email_prof='$email', cod_inst='$inst' where cod_prof='$codigo'")
or die ("Error al Actualizar");

mysqli_close($conexion);
require("modificarprof.php");


?>

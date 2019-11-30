<!DOCTYPE>
<html>
<head>
<title>Registrar</title>
</head>
<body>
<?php
$server="localhost";
$usuario="root";
$contraseña="";
$bd="proyecto";

$conexion=mysqli_connect($server,$usuario,$contraseña,$bd)
or die ("Error de la conexion");

$cod_coor=$_POST['txtcodigo'];
$nom_coor=$_POST['txtnombre'];
$email_coor=$_POST['txtemail'];
$cod_inst=$_POST['cmbinstitucion'];
$pass_coor=$_POST['txtpass_coor'];


$insertar="INSERT into coordinador (cod_coor,nom_coor,email_coor,cod_inst, pass_coor)
					  values('$cod_coor','$nom_coor','$email_coor','$cod_inst', '$pass_coor')";

$resultado=mysqli_query($conexion,$insertar)
or die("error al Insertar los Registros".mysqli_error($conexion));

mysqli_close($conexion);

require("registrar.php");
?>


</form>

</body>

</html>

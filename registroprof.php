<!DOCTYPE>
<html>
<head>
<title>Registrar</title>
</head>
<body>
<?php
$server="remotemysql.com";
$usuario="ENvB84Gsj0";
$contraseña="QqmXK82D4x";
$bd="ENvB84Gsj0";

$conexion=mysqli_connect($server,$usuario,$contraseña,$bd)
or die ("Error de la conexion");

$cod_prof=$_POST['txtcodigo'];
$nom_prof=$_POST['txtnombre'];
$email_prof=$_POST['txtemail'];
$cod_inst=$_POST['cmbinstitucion'];
$pass_prof=$_POST['txtpass_prof'];


$insertar="INSERT into profesor (cod_prof,nom_prof,email_prof,cod_inst, pass_prof)
					  values('$cod_prof','$nom_prof','$email_prof','$cod_inst', '$pass_prof')";

$resultado=mysqli_query($conexion,$insertar)
or die("error al Insertar los Registros".mysqli_error($conexion));

mysqli_close($conexion);

require("registrarprof.php");
?>


</form>

</body>

</html>

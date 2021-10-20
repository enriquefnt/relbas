<?php
include __DIR__ . '/conect.php';

?>



<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Datos</title>
  <link rel="stylesheet" type="text/css" href="estilo.css">
</head>
<body>
  <div>
    <fieldset>
      <legend>Datos personales</legend>
<form action="" method="post">
  
  <label for="Nombre">Nombre:</label><br>
  <input type="text" required="required" id="Nombre" name="Nombre" autocomplete="off" value=""><br><br>
  <label for="Apellido">Apellido:</label><br>
  <input type="text" required="required" id="Apellido" name="Apellido" autocomplete="off" value=""><br><br>
  <label for="Sexo">Sexo:</label><br>
  <select name="Sexo" id="Sexo" value="">
    <option value='1'>Masculino</option>
    <option value='2'>Femenino</option>
    <option value='3'>No determinado</option>
    </select>
    <br><br>
  <label for="Nacimiento">Fecha de Nacimiento:</label><br>
  <input type="date" id="Nacimiento" name="Nacimiento" value=""><br><br>
  <label for="AOP">Area Operativa:</label><br>

<select name="AOP" required="required" id="AOP">
<option value=0>Seleccione AOP</option>
<?php
$aop = [];
  foreach ($result as $aop) {
 echo '<option value=' .  $aop['idaop'].'>' . $aop['areaoperativa'] .'</option>';
  }
?>
</select><br><br>
  <input type="submit" value="Cargar">
</fieldset>
</div>


<div>
<a href="index.html">Volver</a>
<br>
<a href="cargaControl.php">Cargar control</a>
<br>
<a href="verlista.php">Ver Cargas</a>
</div>

</body>
</html>



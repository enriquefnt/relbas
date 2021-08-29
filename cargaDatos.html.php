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
  <input type="text" required="required" id="Nombre" name="Nombre" value=""><br><br>
  <label for="Apellido">Apellido:</label><br>
  <input type="text" required="required" id="Apellido" name="Apellido" value=""><br><br>
  <label for="Nacimiento">Fecha de Nacimiento:</label><br>
  <input type="date" id="Nacimiento" name="Nacimiento" value=""><br><br>
  <label for="AOP">Area Operativa:</label>

<select name="AOP" required="required" id="AOP">
<option value=0>Seleccione AOP</option>
<?php
$aop = [];
  foreach ($result as $aop) {
 echo '<option value=' .  $aop[idaop].'>' . $aop['areaoperativa'] .'</option>';
  }
?>
</select>
  <input type="submit" value="Cargar">
</form> 

</fieldset>
</div>

<div>
    <fieldset>
      <legend>Control</legend>
<form action="" method="post">
  
   
  <input type="hidden" name="idPersona" id=<?php$_POST['idPersona']?> 
  <label for="FechaControl">Fecha de control:</label><br>
  <input type="date" id="FechaControl" name="FechaControl" value=""><br><br>
  <label for="Peso">Peso</label><br>
 <input type="number" step="0.01" id="Peso" name="Peso" value=""><br><br>
 <label for="Peso">Talla</label><br>
 <input type="number" step="0.01" id="Talla" name="Talla" value=""><br><br>
 <label for="Observaciones">Observaciones:</label><br>
<textarea id="Observaciones" name="Observaciones" rows="3" cols="40">
</textarea>


<input type="submit" value="Cargar">

</form> 

</fieldset>
</div>





<div>
<a href="index.html">Volver</a>
<br>
<a href="verlista.php">Ver</a>
</div>
</body>
</html>



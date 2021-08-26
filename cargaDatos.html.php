<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Datos</title>
</head>
<body>
<form action="" method="post">
  
  <label for="Nombre">Nombre:</label><br>
  <input type="text" id="Nombre" name="Nombre" value=""><br><br>
  <label for="Apellido">Apellido:</label><br>
  <input type="text" id="Apellido" name="Apellido" value=""><br><br>
  <label for="Nacimiento">Fecha de Nacimiento:</label><br>
  <input type="date" id="Nacimiento" name="Nacimiento" value=""><br><br>


<label for="AOP">Area Operativa:</label>

<select name="AOP" id="AOP">
<option value=0></option>
<?php
$aop = [];
  foreach ($result as $aop) {
 echo '<option value=' .  $aop[idaop].'>' . $aop['areaoperativa'] .'</option>';
  }
?>
</select>





  <input type="submit" value="Submit">
</form> 
	
</form>
</body>
</html>



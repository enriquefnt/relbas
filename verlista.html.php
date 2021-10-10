<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="estilo.css">
	<title>Lista</title>
</head>
<body>
	<div>
		<p>
<?php
$caso = [];
	foreach ($casos as $caso) {
 echo $caso['Nombre'] . ' ' . $caso['Apellido'] .' ' .  $caso['Sexo'] .' ' .  $caso['areaoperativa'] .' ' .$caso['años'] .'A ' . $caso['meses'] .'M ' . $caso['dias'] .'D ' .
 	' ' . $caso['Peso'].' ' . $caso['Talla'].' ' . $caso['ZPE'].' ' . $caso['ZTE'].' ' . $caso['ZIMC'].'<br> ' 
 ;
	}
?>

</p>
</div>
<div>
<a href="index.html">Volver</a>
<br><br>
<a href="cargaDatos.php">Cargar</a>
</div>
</body>
</html>


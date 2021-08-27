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
	foreach ($result as $caso) {
 echo $caso['Nombre'] . ' ' . $caso['Apellido'] .' ' . 
 	 $caso['Nacimiento'] .' ' .
 			$caso['AOP'] .'<br>' ;
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


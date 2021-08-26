<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="estilo.css">
	<title>Lista</title>
</head>
<body>
	<div><p>
<?php
$caso = [];
	foreach ($result as $caso) {
 echo $caso['Nombre'] . ' ' . $caso['Apellido'] . '<br>' ;
	}
?>
</p></div>
</body>
</html>


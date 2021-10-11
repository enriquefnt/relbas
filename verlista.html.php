<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="estilo.css">
	<title>Lista</title>
</head>
<body>




<div>
	<table>
		<thead>
			<tr>
				<th>Nombre</th>
				<th>Area Operativa Nombre</th>
				<th>Edad (AMD)</th>
				<th>Fecha Control</th>
				<th>Peso</th>
				<th>Talla</th>
				<th>Z Peso/Edad</th>
				<th>Z Talla/Edad</th>
				<th>Z IMC/Edad</th>
			</tr>
		</thead>


<?php
$caso = [];
	foreach ($casos as $caso): ?>

		<tbody>
			<tr>
				<td><?= htmlspecialchars($caso['Nombre'] . ' ' . $caso['Apellido'], ENT_QUOTES, 'UTF-8'); ?></td>
				<td><?= htmlspecialchars($caso['areaoperativa'], ENT_QUOTES, 'UTF-8'); ?></td>
				<td><?= htmlspecialchars($caso['años'] .'A ' . $caso['meses'] .'M ' . $caso['dias'] .'D ', ENT_QUOTES, 'UTF-8'); ?></td>
				<td><?= htmlspecialchars($caso['FechaControl'], ENT_QUOTES, 'UTF-8'); ?></td>
				<td><?= htmlspecialchars($caso['Peso'], ENT_QUOTES, 'UTF-8'); ?></td>
				<td><?= htmlspecialchars($caso['Talla'], ENT_QUOTES, 'UTF-8'); ?></td>
				<td><?= htmlspecialchars($caso['ZPE'], ENT_QUOTES, 'UTF-8'); ?></td>
				<td><?= htmlspecialchars($caso['ZTE'], ENT_QUOTES, 'UTF-8'); ?></td>
				<td><?= htmlspecialchars($caso['ZIMC'], ENT_QUOTES, 'UTF-8'); ?></td>

			</tr>
	<?php endforeach; ?>
		</tbody>
	</table>
</div>




<!--

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
-->

<div>
<a href="index.html">Volver</a>
<br><br>
<a href="cargaDatos.php">Cargar</a>
</div>
</body>
</html>


<?php
include __DIR__ . '/conect.php';
include __DIR__ . '/funciones.php';

$result = findAll($pdo, 'persona');

$caso = [];
	foreach ($result as $caso) {
 echo $caso['Nombre'] . '<br>' . '<br>';

	}



<?php
include __DIR__ . '/conect.php';
include __DIR__ . '/funciones.php';


if (isset($_POST['Nombre'])) {

$record = [
	 							'Nombre' => $_POST['Nombre'],
							 	'Apellido' => $_POST['Apellido'],
							 	'Nacimiento' =>$_POST['Nacimiento'],
							    'AOP' =>$_POST['AOP']];
insert($pdo, 'persona', $record);
		 

}

if (isset($_POST['FechaControl'])) {

	$control=[
		'FechaControl'=> $_POST['FechaControl'],
		'Peso' => $_POST['Peso'],
		'Talla' => $_POST['Talla'],
		'Observaciones' => $_POST['Observaciones']];

insert($pdo, 'control', $control);
}

$result = findAll($pdo, 'aopzonas');
	

		include  __DIR__ . '/cargaDatos.html.php';

	




<?php
include __DIR__ . '/conect.php';
include __DIR__ . '/funciones.php';


//	if (isset($_POST['Nombre'])) {

$record = [
 							'Nombre' => $_POST['Nombre'],
						  'Apellido' => $_POST['Apellido'],
						  'Nacimiento' =>$_POST['Nacimiento']];
insert($pdo, 'persona', $record);

					 
	//	header('location: jokes.php');  
//}
	

		include  __DIR__ . '/cargaDatos.html.php';

	

//include  __DIR__ . '/../templates/layout.html.php';
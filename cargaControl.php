
<?php
include __DIR__ . '/conect.php';
include __DIR__ . '/funciones.php';


if (isset($_POST['FechaControl'])) {

$record = [
	 							'FechaControl' => $_POST['FechaControl'],
							 	'Peso' => $_POST['Peso'],
							 	'Talla' =>$_POST['Talla'],
							    'Observaciones' =>$_POST['Observaciones']];
insert($pdo, 'control', $record);
		 

}


	

		include  __DIR__ . '/cargaControl.html.php';




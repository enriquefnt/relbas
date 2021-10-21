

<?php
include __DIR__ . '/conect.php';
include __DIR__ . '/funciones.php';



if ((isset($_POST['Nombre'])) && $row != 0) {
	echo "Registro repetido, controle";
}


if (isset($_POST['Nombre'])) {

$record = [
	 							'Nombre' => $_POST['Nombre'],
							 	'Apellido' => $_POST['Apellido'],
							 	'Nacimiento' =>$_POST['Nacimiento'],
							 	'Sexo' =>$_POST['Sexo'],
							    'AOP' =>$_POST['AOP']];
insert ($pdo, 'persona', $record);
session_unset();
header('Location: mensaje_secargo.html.php')	;	 

}
else {
	session_unset();

}

$query = query($pdo,'SELECT COUNT(*) FROM persona WHERE Nombre="torres" ');
	$row = $query->fetch();
   

$result = findAll($pdo, 'aopzonas');
	

		include  __DIR__ . '/cargaDatos.html.php';

	


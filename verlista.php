<?php
include __DIR__ . '/conect.php';
include __DIR__ . '/funciones.php';

//$result = findAll($pdo, 'persona');

//$caso = [];
//	foreach ($result as $caso) {
// echo $caso['Nombre'] . '<br>' . '<br>';

//	}
?>


<?php
      try {
            
      $sql='SELECT * FROM persona
inner join control on persona.idPersona=control.idPersona';

$casos = $pdo->query($sql);

  }

    catch (PDOException $e) {
      $error = 'Error en la base:' . $e->getMessage() . ' en la linea ' .
      $e->getFile() . ':' . $e->getLine();
    }
   
?>
<?php  
include __DIR__ . '/verlista.html.php';
?>
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

$sql='call lista_simple;';

$casos = $pdo->query($sql);

  }

    catch (PDOException $e) {
      $error = 'Error en la base:' . $e->getMessage() . ' en la linea ' .
      $e->getFile() . ':' . $e->getLine();
    }
   
?>
<?php  
include __DIR__ . '/vercontrol.html.php';
?>
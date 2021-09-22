<?php
include __DIR__ . '/conect.php';

// (B) DO SEARCH
$data = [];

    $stmt = $pdo->prepare("SELECT CONCAT(Nombre,' ',Apellido) as nomApe, idPersona FROM persona WHERE CONCAT(Nombre,' ',Apellido) LIKE ? ");
    $stmt->execute(["%" . $_POST['search'] . "%"]);
    while ($row = $stmt->fetch(PDO::FETCH_NAMED)) { 
      $data[] = [
        "D" => $row['nomApe'],
        "dTel" => $row['idPersona']
          ]; 
    }
    ;


// (C) RETURN RESULTS
if (count($data)==0) { $data = null; }
echo json_encode($data);
$stmt = null;
$pdo = null;


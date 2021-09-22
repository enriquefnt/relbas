<?php
include __DIR__ . '/conect.php';

// (B) DO SEARCH
$data = [];

    $stmt = $pdo->prepare("SELECT * FROM `persona` WHERE `apellido` LIKE ?");
    $stmt->execute(["%" . $_POST['search'] . "%"]);
    while ($row = $stmt->fetch(PDO::FETCH_NAMED)) { 
      $data[] = [
        "D" => $row['Apellido'],
        "dTel" => $row['idPersona']
          ]; 
    }
    ;


// (C) RETURN RESULTS
if (count($data)==0) { $data = null; }
echo json_encode($data);
$stmt = null;
$pdo = null;


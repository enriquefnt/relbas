<?php
// (A) CONNECT TO DATABASE
// ! CHANGE SETTINGS TO YOUR OWN !
$dbhost = '127.0.0.1';
$dbname = 'autocom';
$dbchar = 'utf8';
$dbuser = 'enriquefnt';
$dbpass = 'enfi7625';
$pdo = new PDO(
	"mysql:host=$dbhost;dbname=$dbname;charset=$dbchar", 
  $dbuser, $dbpass
);

// (B) DO SEARCH
$data = [];
/* switch ($_POST['type']) {
  // (B1) INVALID SEARCH TYPE
  default: break;

  // (B2) SEARCH FOR USER NAME (SINGLE FIELD AUTOCOMPLETE)
  case "name":
    $stmt = $pdo->prepare("SELECT `name` FROM `users` WHERE `name` LIKE ?");
    $stmt->execute(["%" . $_POST['search'] . "%"]);
    while ($row = $stmt->fetch()) { $data[] = $row['name']; }
    break;

  // (B3) SEARCH BY USER EMAIL (MULTIPLE FIELDS AUTOCOMPLETE)
  case "email": */
    $stmt = $pdo->prepare("SELECT * FROM `users` WHERE `email` LIKE ?");
    $stmt->execute(["%" . $_POST['search'] . "%"]);
    while ($row = $stmt->fetch(PDO::FETCH_NAMED)) { 
      $data[] = [
        "D" => $row['email'],
        "dName" => $row['name'],
        "dTel" => $row['phone']
      ]; 
  //  }
  //  break;
}

// (C) RETURN RESULTS
if (count($data)==0) { $data = null; }
echo json_encode($data);
$stmt = null;
$pdo = null;
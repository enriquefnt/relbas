<?php

try {
$pdo = new PDO('mysql:host=localhost;dbname=baserel;charset=utf8', 'baseuser', 'baseuser');
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
$output = 'Unable to connect to the database server: ' . $e;
}


<?php
$pdo = new PDO('mysql:host=localhost;dbname=baserel;charset=utf8', 'baseuser', 'baseuser');
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
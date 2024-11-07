<?php
$servername = getenv('DB_HOST');
$username = getenv('DB_USER');
$password = getenv('DB_PASSWORD');
$dbname = getenv('DB_NAME');

$pdo=new PDO('mysql:host='. $servername .';port=3306;dbname='. $dbname . ',$username, $password);
?>
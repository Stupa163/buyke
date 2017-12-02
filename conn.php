<?php
$dsn = 'mysql:dbname=buyke;host:127.0.0.1';
$user = 'root';
$pass = '';
try{
    $bdd = new PDO($dsn, $user, $pass);
}catch (Exception $e){
    echo $e->getMessage();
}
?>
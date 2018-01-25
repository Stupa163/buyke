<?php
session_start();
var_dump($_POST);
var_dump($_SESSION);
include 'fonctions.php';
if(verif_modif($_POST)){
    echo 'wech';
}
echo 'php??';
?>
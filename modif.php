<?php
session_start();
include 'conn.php';
include 'fonctions.php';
if(verif_modif($_POST)){
    $ins=$bdd->prepare(create_update($_POST));
    $ins->execute();
}else{
    echo('nope');
}
?>
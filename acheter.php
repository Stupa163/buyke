<?php
session_start();
var_dump($_POST);
var_dump($_SESSION);
include 'conn.php';
include 'fonctions.php';
if(verif_modif($_POST)){
    $q_dispo='UPDATE annonces SET DISPO=0 WHERE';
    foreach($_SESSION['TEMP'] as $a){
        $q_dispo.=' ID_ANN='.$a.' OR';
        $u_commannde=$bdd->prepare("INSERT INTO commande values()")
    }
    $q_dispo=trim($q_dispo,'  OR');
    $q_dispo.=';';
    echo $q_dispo;
    $u_dispo=$bdd->prepare($q_dispo);
    $u_dispo->execute();
}
?>
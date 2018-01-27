<?php
session_start();
include 'conn.php';
include 'fonctions.php';
$q_disp=$bdd->prepare("SELECT annonces.* from annonces,pannier where annonces.ID_ANN=pannier.ID_ANN and pannier.ID_USR=".$_SESSION['ID'].";");
$q_disp->execute();
$disp=$q_disp->fetchAll();
$compt=1;
foreach($disp as $one){
    include'disp_annonce.php';
    $compt++;
}
?>
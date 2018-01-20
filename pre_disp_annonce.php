<?php
session_start();
include 'conn.php';
include 'fonctions.php';
$q_disp=$bdd->prepare("SELECT annonces.* from annonces,panier where annonces.ID_ANN=panier.ID_ANN and panier.ID_USR=".$_SESSION['ID'].";");
$q_disp->execute();
$disp=$q_disp->fetchAll();
$compt=1;
foreach($disp as $one){
    include'disp_annonce.php';
    $compt++;
}
?>
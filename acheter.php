<?php
session_start();
include 'conn.php';
include 'fonctions.php';
if(verif_modif($_POST)){
    $q_dispo='UPDATE annonces SET DISPO=0 WHERE';
    $q_pannier='REMOVE FROM pannier WHERE (';
    foreach($_SESSION['TEMP'] as $a){
        $q_dispo.=' ID_ANN='.$a.' OR';
        $q_pannier.='ID_ANN='.$a.' OR ';
        $u_commande=$bdd->prepare("INSERT INTO commande (ID_USR,ID_ANN) values (:id_usr,:id_ann);");
        //$u_commande->execute([':id_usr'=>$_SESSION['ID'],':id_ann'=>$a]);

    }
    $q_dispo=trim($q_dispo,'  OR');
    $q_dispo.=';';
    echo $q_pannier;
    $q_pannier=trim($q_pannier,'  OR ');
    $q_pannier.=') AND ID_USR='.$_SESSION['ID'].';';
    echo $q_pannier;
    $u_dispo=$bdd->prepare($q_dispo);
    $u_pannier=$bdd->prepare($q_pannier);
    $u_dispo->execute();
    $u_pannier->execute();
}
?>
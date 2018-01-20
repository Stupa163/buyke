<?php
include 'conn.php';
session_start();
if(isset($_SESSION['ID'])){
    $q_ajout=$bdd->prepare("INSERT INTO panier VALUES (:id_usr,:id_ann);");
    $q_ajout->execute([
        ':id_usr'=>$_SESSION['ID'],
        ':id_ann'=>$_POST['article']
    ]);   
}else{
    echo 'pas_co';
}
?>
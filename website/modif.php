<?php
session_start();
include 'conn.php';
include 'fonctions.php';
if(verif_modif($_POST)){
    $verif=verif_modif2($_POST);
    if(in_array(false,$verif)){
        echo json_encode($verif);
    }else{
        $ins=$bdd->prepare(create_update($_POST));
        $ins->execute();
    }
}else{
    echo('1');
}
?>
<?php
session_start();
include'conn.php';
if(isset($_SESSION['ID'])){
    $del=$bdd->prepare("DELETE FROM pannier WHERE ID_USR=".$_SESSION['ID']." and ID_ANN=".$_POST['id'].";");
    $del->execute();
}else{
    echo 'pas_co';
}
?>
<?php
session_start();
include 'conn.php';
$sel=$bdd->prepare("SELECT PSEUDO,MAIL,ADRESSE,VILLE,CODE_POSTAL,PAYS,NOM,PRENOM,CARTE,PORTABLE FROM users WHERE ID_USR=".$_SESSION['ID'].";");
$sel->execute();
echo json_encode($sel->fetch());
?>
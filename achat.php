<?php
include 'conn.php';
include 'navbar.php';
$q_sel='SELECT TITRE,PRIX from annonces WHERE ';
foreach($_POST as $a){
    $q_sel.='ID_ANN='.$a.' OR ';
}
$q_sel=trim($q_sel,'OR ');
$q_sel.=';';
$sel=$bdd->prepare($q_sel);
$sel->execute();
foreach($sel->fetchAll() as $b){
    echo $b['TITRE'];
}
include 'footbar.php';
?>
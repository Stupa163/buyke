<?php
include 'conn.php';
session_start();
if(isset($_POST['titre']) && isset($_POST['categorie']) && isset($_POST['description']) && isset($_POST['prix']) && isset($_FILES['photo1'])){
    $query=$bdd->prepare("INSERT INTO annonces(TITRE,PRIX,DESCRIPTION,CATEGORIE,ID_USR) values(:titre,:prix,:description,:categorie,:id_usr);");
    $query->execute([
        ':titre'=>htmlentities($_POST['titre']),
        ':prix'=>$_POST['prix'],
        ':description'=>htmlentities($_POST['description']),
        ':categorie'=>$_POST['categorie'],
        ':id_usr'=>$_SESSION['ID']
    ]);
    echo 'ok';
}else{
    echo 'Une erreur est survenue, merci de réessayer';
}
?>
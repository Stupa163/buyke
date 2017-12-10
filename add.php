<?php
include 'conn.php';
include 'simpleimage.php';
include 'fonctions.php';
session_start();
if(isset($_POST['titre']) && isset($_POST['categorie']) && isset($_POST['description']) && isset($_POST['prix'])){
    if($_FILES['photo1']['name']!=''){
        $id_query=$bdd->prepare("SELECT ID_ANN from annonces ORDER BY ID_ANN DESC LIMIT 1;");
        $id_query->execute();
        $id=$id_query->fetch();
        $chemin='images_annonces/'.md5($_FILES['photo1']['name']).'ann'.$id['ID_ANN'].'&user'.$_SESSION['ID'].'.'.preg_split('/\./',$_FILES['photo1']['name'])[(count(preg_split('/\./',$_FILES['photo1']['name'])))-1];
        $chemin_mini=store_uploaded_image('photo1',400,300,$id['ID_ANN']);
        move_uploaded_file($_FILES['photo1']['tmp_name'],$chemin);
        $query=$bdd->prepare("INSERT INTO annonces(TITRE,PRIX,DESCRIPTION,CATEGORIE,PHOTO,MINI,ID_USR) values(:titre,:prix,:description,:categorie,:photo,:mini,:id_usr);");
        $query->execute([
            ':titre'=>htmlentities($_POST['titre']),
            ':prix'=>$_POST['prix'],
            ':description'=>htmlentities($_POST['description']),
            ':categorie'=>$_POST['categorie'],
            ':photo'=>base64_encode($chemin),
            ':mini'=>base64_encode($chemin_mini),
            ':id_usr'=>$_SESSION['ID']
        ]);
    }else{
        $query=$bdd->prepare("INSERT INTO annonces(TITRE,PRIX,DESCRIPTION,CATEGORIE,ID_USR) values(:titre,:prix,:description,:categorie,:id_usr);");
        $query->execute([
            ':titre'=>htmlentities($_POST['titre']),
            ':prix'=>$_POST['prix'],
            ':description'=>htmlentities($_POST['description']),
            ':categorie'=>$_POST['categorie'],
            ':id_usr'=>$_SESSION['ID']
        ]);
    }
    echo 'ok';
}else{
    echo 'Une erreur est survenue, merci de réessayer';
}
?>
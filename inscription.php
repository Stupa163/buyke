<?php
include 'conn.php';
if (!preg_match("#^[a-z0-9A-Z]+$#", $_POST['password'])){
    echo 'Votre mot de passe ne peut contenir que des lettres et des chiffres';
}else{
    if (!preg_match("#^[a-z0-9A-Z_]+$#", $_POST['pseudo'])){
        echo 'Votre nom d\'utilisateur ne peut contenir que des lettres, des chiffres et "_"';
    }else{
        $verif=$bdd->prepare("SELECT ID_USR from users where PSEUDO like '".$_POST['pseudo']."';");
        $verif->execute();
        if($verif->fetchAll()==null){
            $verif2=$bdd->prepare("SELECT ID_USR from users where MAIL like '".$_POST['mail']."';");
            $verif2->execute();
            if($verif2->fetchAll()==null){
                $ins=$bdd->prepare("INSERT INTO users (PSEUDO,MAIL,PASSWORD) values (:pseudo,:mail,:password);");
                $ins->execute([
                    ':pseudo'=>htmlentities($_POST['pseudo']),
                    ':mail'=>$_POST['mail'],
                    ':password'=>password_hash($_POST['password'],PASSWORD_DEFAULT)
                ]);
                session_start();
                $get_id=$bdd->prepare("SELECT ID_USR, PSEUDO from users where PSEUDO like '".$_POST['pseudo']."';");
                $get_id->execute();
                $id=$get_id->fetch();
                $_SESSION['ID']=$id['ID_USR'];
                $_SESSION['PSEUDO']=$id['PSEUDO'];
                echo 'ok';
            }else{
                echo 'Cette adresse mail est déjà utilisée';
            }
        }else{
            echo 'Ce nom d\'utilisateur est déjà utilisé';
        }
    }
}
?>
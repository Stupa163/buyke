<?php
include 'conn.php';
if (!preg_match("#^[a-z0-9A-Z_]+$#", $_POST['pseudo'])){
    echo 'Cet utilisateur n\'est pas enregistré';
}else{
    $get=$bdd->prepare("SELECT * from users where PSEUDO like '".$_POST['pseudo']."';");
    $get->execute();
    $temp_val=$get->fetch();
    if($temp_val!=null){
        if(password_verify($_POST['password'],$temp_val['PASSWORD'])){
            session_start();
            $get_id=$bdd->prepare("SELECT ID_USR, PSEUDO from users where PSEUDO like '".$_POST['pseudo']."';");
            $get_id->execute();
            $id=$get_id->fetch();
            $_SESSION['ID']=$id['ID_USR'];
            $_SESSION['PSEUDO']=$id['PSEUDO'];
            echo 'ok';
        }else{
            echo 'Le mot de passe est incorrect';
        }
    }else{
        echo 'Cet utilisateur n\'est pas enregistré';
    }
}
?>
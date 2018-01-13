<?php
var_dump($_POST);
include 'conn.php';
include 'fonctions.php';
$go=1;
(isset($_POST['pseudo']))?($_POST['pseudo']!=''&&!preg_match("#^[a-z0-9A-Z]+$#",$_POST['pseudo']))?$go=0:null:null;
(isset($_POST['carte']))?($_POST['carte']!=''&&luhn($_POST['carte'])==false)?$go=0:null:null;
(isset($_POST['password']))?($_POST['password']!=''&&!preg_match("#^[a-z0-9A-Z]+$#",$_POST['password']))?$go=0:null:null;
(isset($_POST['mail']))?($_POST['mail']!=''&&!filter_var($_POST['mail'],FILTER_VALIDATE_EMAIL))?$go=0:null:null;
(isset($_POST['telephone']))?($_POST['telephone']!=''&&(int)$_POST['telephone']&&strlen($_POST['telephone'])!=10)?$go=0:null:null;
echo $go;
?>
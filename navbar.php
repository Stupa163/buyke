<?php
include 'conn.php';
session_start();
echo '<link rel="stylesheet" href="styles/style_navbar.css">';
if(isset($_SESSION['ID'])){
    echo '<div id="nav">
            <img src="images_systeme/logo.png" alt="" id="logo">
            <a href="index.php">Accueil</a>
            <a href="annonces.php">Annonces</a>
            <a href="">Mon Profil</a>
            <a href="ajout_annonce.php">Passer une Annonce</a>
            <a href="deco.php">Se deconnecter</a>
            <form id="search" action="search.php" method="post">
                <input type="text" name="res">
                <button id="loupe"><img src="images_systeme/loupe.png"></button>
            </form>
            <img src="images_systeme/buyke.png" id="buyke">
        </div>';
}else{
    echo '<div id="nav">
            <img src="images_systeme/logo.png" alt="" id="logo">
            <a href="index.php">Accueil</a>
            <a href="annonces.php">Annonces</a>
            <a href="login.php">Connexion/Inscription</a>
            <form id="search" action="search.php" method="post">
                <input type="text" name="res">
                <button id="loupe"><img src="images_systeme/loupe.png"></button>
            </form>
            <img src="images_systeme/buyke.png" id="buyke">
        </div>';
}
?>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="scripts/script_navbar.js"></script>
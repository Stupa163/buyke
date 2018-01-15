<?php
include 'conn.php';
session_start();
echo '<link rel="stylesheet" href="styles/style_navbar.css">';
if(isset($_SESSION['ID'])){
    echo '<div id="nav">
            <img src="images_systeme/logo.png" alt="" id="logo">
            <img src="images_systeme/burger.png" id="img_burger">
            <a href="index.php">Accueil</a>
            <a href="annonces.php">Annonces</a>
            <a href="infos.php">Mon Compte</a>
            <a href="ajout_annonce.php">Passer une Annonce</a>
            <a href="deco.php">Se deconnecter</a>
            <form id="search" action="annonces.php" method="get">
                <input type="text" name="search">
                <button id="loupe"><img src="images_systeme/loupe.png"></button>
            </form>
            <img src="images_systeme/buyke.png" id="buyke">
        </div>';
    echo '<div id="burger">
            <div id="burger_content">
                <a href="index.php">Accueil</a>
                <a href="annonces.php">Annonces</a>
                <a href="infos.php">Mon Compte</a>
                <a href="ajout_annonce.php">Passer une Annonce</a>
                <a href="deco.php">Se deconnecter</a>
            </div>
        </div>';
}else{
    echo '<div id="nav">
            <img src="images_systeme/logo.png" alt="" id="logo">
            <img src="images_systeme/burger.png" id="img_burger">
            <a href="index.php">Accueil</a>
            <a href="annonces.php">Annonces</a>
            <a href="login.php">Connexion/Inscription</a>
            <form id="search" action="annonces.php" method="get">
                <input type="text" name="search">
                <button id="loupe"><img src="images_systeme/loupe.png"></button>
            </form>
            <img src="images_systeme/buyke.png" id="buyke">
        </div>';
    echo '<div id="burger">
            <div id="burger_content">
                <a href="index.php">Accueil</a>
                <a href="annonces.php">Annonces</a>
                <a href="login.php">Connexion/Inscription</a>
            </div>
        </div>';
}
echo '<div id="block"></div>';
?>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="scripts/script_navbar.js"></script>
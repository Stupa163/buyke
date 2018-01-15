<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
        <link rel="stylesheet" href="styles/style_annonce.css">
        <link rel="icon" href="images_systeme/icon.ico">
        <?php
        include 'conn.php';
        $q_titre=$bdd->prepare("SELECT TITRE from annonces where ID_ANN=".$_GET['id'].";");
        $q_titre->execute();
        $titre=$q_titre->fetch();
        echo '<title>'.$titre['TITRE'].'</title>';
        ?>
    </head>
    <body>
        <?php
        include'navbar.php';
        $q_infos=$bdd->prepare("SELECT * FROM annonces where ID_ANN = ".$_GET['id'].";");
        $q_infos->execute();
        $infos=$q_infos->fetch();
        ?>
        <div id="main">
            <div id="photo">
                <img src="<?php echo base64_decode($infos['PHOTO']); ?>" alt="">
            </div>
        </div>
        <script type="text/javascript" src="scripts/jquery-3.2.1.min.js"></script>
        <script type="text/javascript" src="scripts/script_annonce.js"></script>
    </body>
</html>
<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
        <link rel="stylesheet" href="styles/style_annonce.css">
        <link rel="icon" href="images_systeme/icon.ico">
        <?php
        include 'conn.php';
        include 'fonctions.php';
        $q_titre=$bdd->prepare("SELECT TITRE from annonces where ID_ANN=".$_GET['id'].";");
        $q_titre->execute();
        $titre=$q_titre->fetch();
        echo '<title>'.$titre['TITRE'].'</title>';
        ?>
    </head>
    <body>
        <?php
        include'navbar.php';
        $q_infos=$bdd->prepare("SELECT annonces.*,users.PSEUDO FROM annonces,users where annonces.ID_ANN = ".$_GET['id']." and annonces.ID_USR=users.ID_USR;");
        $q_infos->execute();
        $infos=$q_infos->fetch();
        ?>
        <div id="main">
            <div id="photo">
                <img src="<?php echo base64_decode($infos['PHOTO']); ?>" alt="">
            </div>
            <div id="infos">
                <div id="prix"><?php echo $infos['PRIX']; ?>€</div>
                <div id="titre"><?php echo $infos['TITRE']; ?></div>
                <div id="categorie">
                    <h4><?php echo nom_categorie((int)$infos['CATEGORIE']); ?></h4>
                </div>
                <div id="desc"><?php echo $infos['DESCRIPTION']; ?></div>
                <div id="vendeur"><?php echo $infos['PSEUDO']; ?></div>
                <div id="achat">
                    <form action="achat.php" method="post" id="first">
                        <input type="hidden" name="article" value="<?php echo $infos['ID_ANN'] ?>">
                        <button type="submit">Acheter maintenant</button>
                    </form>
                    <form action="" id="panier">
                        <input type="hidden" name="article" value="<?php echo $infos['ID_ANN'] ?>">
                        <button type="submit">Ajouter au panier</button>
                    </form>
                </div>
                <div id="erreur">Vous n'êtes pas connecté</div>
            </div>
        </div>
        <?php include 'footbar.php'; ?>
        <script type="text/javascript" src="scripts/jquery-3.2.1.min.js"></script>
        <script type="text/javascript" src="scripts/script_annonce.js"></script>
    </body>
</html>
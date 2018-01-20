<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
        <link rel="icon" href="images_systeme/icon.ico">
        <link rel="stylesheet" href="styles/style_panier.css">
        <title>Panier</title>
    </head>
    <body>
        <?php 
        include 'navbar.php'; 
        include 'fonctions.php';
        $q_disp=$bdd->prepare("SELECT annonces.* from annonces,panier where annonces.ID_ANN=panier.ID_ANN and panier.ID_USR=".$_SESSION['ID'].";");
        $q_disp->execute();
        $disp=$q_disp->fetchAll();
        echo '<div id="main"><div id="fir"></div><form action="achat.php" method="post">';
        $compt=1;
        foreach($disp as $one){
            include 'disp_annonce.php';
            $compt++;
        }
        echo '<button type="submit">Confirmer</button></form><div id="somme">lol</div></div>';
        ?>
        <?php include 'footbar.php'; ?>
        <script type="text/javascript" src="scripts/jquery-3.2.1.min.js"></script>
        <script type="text/javascript" src="scripts/script_panier.js"></script>
    </body>
</html>
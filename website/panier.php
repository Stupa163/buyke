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
        echo(!isset($_SESSION['ID']))?'<script>window.location.replace(\'login.php\');</script>':null;
        include 'fonctions.php';
        $q_disp=$bdd->prepare("SELECT annonces.* from annonces,pannier where annonces.ID_ANN=pannier.ID_ANN and pannier.ID_USR=".$_SESSION['ID'].";");
        $q_disp->execute();
        $disp=$q_disp->fetchAll();
        echo '<div id="main"><div id="fir"></div><form action="achat.php" method="post" id="form_foireux"><div id="pour_ann">';
        $compt=1;
        foreach($disp as $one){
            include 'disp_annonce.php';
            $compt++;
        }
        echo '</form></div><div id="somme"><div id="confirm"><h2>Payer</h2></div><div id="change"></div></div></div>';
        ?>
        <?php include 'footbar.php'; ?>
        <script type="text/javascript" src="scripts/jquery-3.2.1.min.js"></script>
        <script type="text/javascript" src="scripts/script_panier.js"></script>
    </body>
</html>
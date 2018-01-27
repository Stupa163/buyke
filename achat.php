<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
        <link rel="stylesheet" href="styles/style_achat.css">
        <link rel="icon" href="images_systeme/icon.ico">
        <title>Document</title>
    </head>
    <body>
        <?php
        include 'conn.php';
        include 'navbar.php';
        echo(!isset($_SESSION['ID']))?'<script>window.location.replace(\'login.php\');</script>':null;
        include 'fonctions.php';
        $q_sel='SELECT * from annonces WHERE ';
        $q_tot='SELECT SUM(PRIX) from annonces WHERE ';
        foreach($_POST as $a){
            $q_sel.='ID_ANN='.$a.' OR ';
            $q_tot.='ID_ANN='.$a.' OR ';
        }
        $q_sel=trim($q_sel,'OR ');
        $q_tot=trim($q_tot,'OR ');
        $q_sel.=';';
        $q_tot.=';';
        $sel=$bdd->prepare($q_sel);
        $l_tot=$bdd->prepare($q_tot);
        $q_selut=$bdd->prepare("SELECT NOM,PRENOM,ADRESSE,VILLE,CODE_POSTAL,PAYS,CARTE FROM users WHERE ID_USR=".$_SESSION['ID'].";");
        $sel->execute();
        $q_selut->execute();
        $l_tot->execute();
        $ut=$q_selut->fetch();
        $dat=$sel->fetchAll();
        $tot=$l_tot->fetch();
        $compt=0;
        ?>
        <div id="conf" class="double">
            <p>Nombre d'article : <span class="nbr"><?php echo sizeof($_POST); ?></span></p><br><br>
            <p>Livraison : <span class="livraison">Gratuite</span></p>
            <p id="tot">Total : <span class="s_tot"><?php echo $tot['SUM(PRIX)']; ?>€</span></p>
            <div class="payer"><h1>Confirmer et payer</h1></div>
        </div>
        <div id="main">
            <div id="livre">
                <p>Résumé des achats :</p>
                <div id="fir"></div>
                <?php
                $_SESSION['TEMP']=[];
                foreach($dat as $one){
                    include 'disp_annonce.php';
                    array_push($_SESSION['TEMP'],$one['ID_ANN']);
                    $compt++;                    
                }
                ?>
            </div>
            <div id="addr">
                <p>Adresse de livraison :</p>
                <form action="" class="ok" id="only_one">
                    <label for="nom">Nom :</label>
                    <input type="text" name="nom" id="nom" value="<?php echo $ut['NOM']; ?>"><br><br>
                    <label for="nom">Prénom :</label>
                    <input type="text" name="prenom" id="prenom" value="<?php echo $ut['PRENOM']; ?>"><br><br>
                    <label for="adresse">Adresse :</label>
                    <input type="text" name="adresse" id="adresse" value="<?php echo $ut['ADRESSE']; ?>"><br><br>
                    <label for="ville">Ville :</label>
                    <input type="text" name="ville" id="ville" value="<?php echo $ut['VILLE']; ?>"><br><br>
                    <label for="code_postal">Code postal :</label>
                    <input type="text" name="code_postal" id="code_postal" value="<?php echo $ut['CODE_POSTAL']; ?>"><br><br>
                    <label for="pays">Pays :</label>
                    <input type="text" name="pays" id="pays" value="<?php echo $ut['PAYS']; ?>"><br><br>
                    <p>Paiement :</p>
                    <label for="carte">Numéro de carte de crédit :</label>
                    <input type="text" name="carte" id="carte" value="<?php echo $ut['CARTE']; ?>"><br><br>
                    <label for="date_exp">Date d'expiration :</label>
                    <input type="text" name="date_exp" id="date_exp"><br><br>
                    <label for="crypt">Cryptogramme de sécurité :</label>
                    <input type="text" name="crypt" id="cart"><br><br>
                </form>
            </div>
        </div>
        <div id="conf2" class="double">
            <p>Nombre d'article : <span class="nbr"><?php echo sizeof($_POST); ?></span></p><br><br>
            <p>Livraison : <span class="livraison">Gratuite</span></p>
            <p id="tot">Total : <span class="s_tot"><?php echo $tot['SUM(PRIX)']; ?>€</span></p>
            <div class="payer"><h1>Confirmer et payer</h1></div>
        </div>
        <div id="apres">
            <p>
                Félicitation ! <br>
                Votre commande sera traitée dans les plus bref delais <br>
                <a href="index.php">Cliquez ici pour retourner à l'accueil</a>
            </p>
        </div>
        <?php include 'footbar.php'; ?>
        <script type="text/javascript" src="scripts/jquery-3.2.1.min.js"></script>
        <script type="text/javascript" src="scripts/fonctions.js"></script>
        <script type="text/javascript" src="scripts/script_achat.js"></script>
    </body>
</html>
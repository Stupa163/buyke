<!DOCTYPE html>
<html lang="en">
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
        include 'fonctions.php';
        $q_sel='SELECT * from annonces WHERE ';
        foreach($_POST as $a){
            $q_sel.='ID_ANN='.$a.' OR ';
        }
        $q_sel=trim($q_sel,'OR ');
        $q_sel.=';';
        $sel=$bdd->prepare($q_sel);
        $sel->execute();
        $q_selut=$bdd->prepare("SELECT NOM,PRENOM,ADRESSE,VILLE,CODE_POSTAL,PAYS FROM users WHERE ID_USR=".$_SESSION['ID'].";");
        $q_selut->execute();
        $ut=$q_selut->fetch();
        echo '<div id="main"><div id="livre"><p>Résumé des achats :</p></div><div id="fir"></div>';
        $compt=0;
        foreach($sel->fetchAll() as $one){
            include 'disp_annonce.php';
            $compt++;
        }
        echo '';
        ?>
        <div id="addr">
            <p>Adresse de livraison :</p>
            <form action="">
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
            </form>
        </div>
        <?php

        echo '</div>';
        include 'footbar.php';
        ?>
    </body>
</html>
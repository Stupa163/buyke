<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
        <link rel="stylesheet" href="styles/style_profil.css">
        <link rel="icon" href="images_systeme/icon.ico">
        <title>Mon Compte</title>
    </head>
    <body>
        <?php
        include 'conn.php';
        include 'navbar.php';
        $q_infos=$bdd->prepare("SELECT MAIL,PSEUDO,ADRESSE,VILLE,CODE_POSTAL,PAYS,NOM,PRENOM,CARTE,PORTABLE from users where ID_USR = ".$_SESSION['ID'].";");
        $q_infos->execute();
        $infos=$q_infos->fetch();
        ?>
        <div id="main">
            <div id="compte">
                <h2>Informations du compte</h2>
                <p>Pseudo : <?php echo $infos['PSEUDO']; ?></p>
                <p>Mot de passe : 	&#9899;&#9899;&#9899;&#9899;&#9899;&#9899;&#9899;&#9899;&#9899;&#9899;</p>
                <p>Numéro de carte de crédit : <?php echo $infos['CARTE']; ?></p>
            </div>
            <div id="contact">
                <h2>Informations de contact</h2>
                <p>Adresse e-mail : <?php echo $infos['MAIL']; ?></p>
                <p>Téléphone : <?php echo $infos['PORTABLE']; ?></p>
            </div>
            <div id="livraison">
                <h2>Informations de livraison</h2>
                <p>Adresse : <?php echo $infos['ADRESSE']; ?></p>
                <p>Code postal : <?php echo $infos['CODE_POSTAL']; ?></p>
                <p>Ville : <?php echo $infos['VILLE']; ?></p>
                <p>Pays : <?php echo $infos['PAYS']; ?></p>
            </div>
        </div>
    </body>
</html>
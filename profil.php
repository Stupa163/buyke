<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="styles/style_profil.css">
        <title><?php echo $_GET['pseudo']; ?> | Profil du site Buyke</title>
    </head>
    <body>
        <?php
        include 'conn.php';
        include 'navbar.php';
        $q_infos=$bdd->prepare("SELECT MAIL from users where PSEUDO like '".$_GET['pseudo']."';");
        $q_infos->execute();
        $infos=$q_infos->fetch();
        var_dump($infos);
        ?>
    </body>
</html>
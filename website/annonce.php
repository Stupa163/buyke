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
            <table id="labonne">
                <tr id="tr_labonne">
                    <td id="photo">
                        <img src="<?php echo base64_decode($infos['PHOTO']); ?>" alt="">
                    </td>
                    <td id="info">
                        <div id="titre"><p><?php echo $infos['TITRE']; ?></p></div>
                        <br>
                        <div id="categorie">Catégorie:&nbsp;<b><?php echo nom_categorie((int)$infos['CATEGORIE']); ?></b></div>
                        <br>
                        <hr>
                        <br>
                        <div id="desc"><?php echo substr($infos['DESCRIPTION'], -(strlen($infos['DESCRIPTION'])),100).'...'; ?></div>
                        <br>
                        <div id="vendeur">Vendeur:&nbsp;<b><?php echo $infos['PSEUDO']; ?></b></div>
                        <hr>
                        <div id="prix"><?php echo $infos['PRIX']; ?>&nbsp;€</div>
                        <div id="achat">
                            <table>
                                <tr>
                                    <td>
                                        <form action="achat.php" method="post" id="first">
                                            <input type="hidden" name="article" value="<?php echo $infos['ID_ANN'] ?>">
                                            <button type="submit">Acheter maintenant</button>
                                        </form>
                                    </td>
                                    <td id="td2">
                                        <form action="" id="panier">
                                            <input type="hidden" name="article" value="<?php echo $infos['ID_ANN'] ?>">
                                            <button type="submit" id="pro">Ajouter au panier</button>
                                        </form>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </td>          
                </tr>   
            </table> 
        </div>
        <?php include 'footbar.php'; ?>
        <script type="text/javascript" src="scripts/jquery-3.2.1.min.js"></script>
        <script type="text/javascript" src="scripts/script_annonce.js"></script>
    </body>
</html>
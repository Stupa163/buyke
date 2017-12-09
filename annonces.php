<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="styles/style_annonces.css">
        <link rel="icon" href="images_systeme/icon.ico">
        <title>Annonces</title>
    </head>
    <body>
        <?php include 'navbar.php';?>
        <div id="main">
            <?php
            include 'fonctions.php';
            if(!isset($_GET['cat'])){
                $disp=$bdd->prepare("SELECT * from annonces order by DATE desc LIMIT 20;");
            }else{
                $disp=$bdd->prepare("SELECT * from annonces where CATEGORIE = ".$_GET['cat']."  order by DATE desc LIMIT 20;");   
            }
            $disp->execute();
            $annonces=$disp->fetchAll();
            foreach($annonces as $one){
                $get_user=$bdd->prepare("SELECT PSEUDO from users where ID_USR = :id_usr;");
                $get_user->execute([':id_usr'=>$one['ID_USR']]);
                $user=$get_user->fetch();
                echo '<a href="annonce.php&id='.$one['ID_ANN'].'" class="pas_lien"><div class="ann">
                        <img src="'.base64_decode($one['MINI']).'">
                        <div class="date">
                            <p>'.date_lisible($one['DATE']).'</p>
                        </div>
                        <div class="tout">
                            <div class="titre">
                                <h2>'.$one['TITRE'].'</h2>
                            </div>
                            <div class="categorie">
                                <h4>'.nom_categorie((int)$one['CATEGORIE']).'</h4>
                            </div>
                            <div class="description">
                                <p>'.substr($one['DESCRIPTION'],0,100).'...</p>
                            </div>
                        </div>
                    </div></a>';
            }
            ?>
        </div>
    </body>
</html>
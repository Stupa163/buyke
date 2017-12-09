<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="styles/style_annonces.css">
        <link rel="icon" href="images_systeme/icon.ico">
        <title>Annonces</title>
    </head>
    <body>
        <div id="main">
            <?php
            include 'navbar.php';
            if(!isset($_GET['cat'])){
                $disp=$bdd->prepare("SELECT * from annonces order by DATE desc;");
            }else{
                $disp=$bdd->prepare("SELECT * from annonces where CATEGORIE = ".$_GET['cat']."  order by DATE desc;");   
            }
            $disp->execute();
            $annonces=$disp->fetchAll();
            foreach($annonces as $one){
                $get_user=$bdd->prepare("SELECT PSEUDO from users where ID_USR = :id_usr;");
                $get_user->execute([':id_usr'=>$one['ID_USR']]);
                $user=$get_user->fetch();
                echo '<div class="ann">
                        <div class="titre">
                            <h3>'.$one['TITRE'].'</h3>
                        </div>
                        <div class="description">
                            <p>'.$one['DESCRIPTION'].'</p>
                        </div>
                        <div class="info">
                            <p>Annonce faite par : '.$user['PSEUDO'].' le : '.$one['DATE'].'</p>
                        </div>
                    </div><br>';
            }
            ?>
        </div>
    </body>
</html>
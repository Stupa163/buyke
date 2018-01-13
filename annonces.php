<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
        <link rel="stylesheet" href="styles/style_annonces.css">
        <link rel="icon" href="images_systeme/icon.ico">
        <title>Annonces</title>
    </head>
    <body>
        <?php include 'navbar.php';?>
        <div id="main">
            <div id="fir"></div>
            <?php
            include 'fonctions.php';
            if(!isset($_GET['page'])){
                $_GET['page']=1;
            }
            $_GET['page']-=1;
            $dis=20;
            if(!isset($_GET['cat'])){
                $disp=$bdd->prepare('SELECT * from annonces order by DATE desc LIMIT '.(int)$_GET['page']*$dis.','.$dis.';');
            }else{
                $disp=$bdd->prepare('SELECT * from annonces where CATEGORIE = '.$_GET['cat'].' order by DATE desc LIMIT 20;');   
            }
            $disp->execute();
            $annonces=$disp->fetchAll();
            foreach($annonces as $one){
                $get_user=$bdd->prepare("SELECT PSEUDO from users where ID_USR = :id_usr;");
                $get_user->execute([':id_usr'=>$one['ID_USR']]);
                $user=$get_user->fetch();
                echo '<a href="annonce.php?id='.$one['ID_ANN'].'" class="pas_lien"><div class="ann">
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
                                <p>'.substr($one['DESCRIPTION'],0,75).'...</p>
                            </div>
                            <div class="prix">
                                <h2>'.$one['PRIX'].' €</h2>
                            </div>
                        </div>
                    </div></a>';
            }
            if(!isset($_GET['cat'])){
                $q_count=$bdd->prepare("SELECT COUNT(*) from annonces;");
            }else{
                $q_count=$bdd->prepare("SELECT COUNT(*) from annonces where CATEGORIE = ".$_GET['cat'].";");
            }
            $q_count->execute();
            $count=$q_count->fetch();
            echo '<div id="navig">';
            $prev=(int)$_GET['page'];
            $next=((($count['COUNT(*)'])-(((int)$_GET['page']+1)*$dis))/$dis);
            $prev=($prev<5)?$prev:5;
            $next=($next<5)?$next:5;
            if($prev>0){
                if(!isset($_GET['cat'])){
                    echo (((int)$_GET['page']+1)!=1)?'<a href="annonces.php?page=1" class="abold"><<</a>':'';
                }else{
                    echo (((int)$_GET['page']+1)!=1)?'<a href="annonces.php?page=1&cat='.$_GET['cat'].'" class="abold"><<</a>':'';
                }
            }
            for($i=-$prev;$i<$next+1;$i++){
                echo '<a href="annonces.php?page='.((int)$_GET['page']+$i+1);
                echo (isset($_GET['cat']))?'&cat='.$_GET['cat'].'"':'"';
                echo (((int)$_GET['page']+$i)==(int)$_GET['page'])?' id="cur">':'>';
                echo ((int)$_GET['page']+$i+1).'</a>';
            }
            if($next>0){
                if(!isset($_GET['cat'])){
                    echo (((int)$_GET['page']+1)!=(ceil(($count['COUNT(*)'])/$dis)))?'<a href="annonces.php?page='.(ceil(($count['COUNT(*)'])/$dis)).'" class="abold">>></a>':''; 
                }else{
                    echo (((int)$_GET['page']+1)!=(ceil(($count['COUNT(*)'])/$dis)))?'<a href="annonces.php?page='.(ceil(($count['COUNT(*)'])/$dis)).'&cat='.$_GET['cat'].'" class="abold">>></a>':''; 
                }
            }
            echo '</div>';
            echo '<br>';
            ?>
        </div>
        <?php include 'footbar.php'; ?>
    </body>
</html>
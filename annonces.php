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
            $q_disp='SELECT * FROM annonces ';
            if(isset($_GET['cat'])){
                $q_disp.='WHERE CATEGORIE='.$_GET['cat'].' ';
            }
            $q_disp.='ORDER BY DATE DESC LIMIT '.(int)$_GET['page']*$dis.','.$dis.';';
            $disp=$bdd->prepare($q_disp);
            echo $q_disp;
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
            $q_count='SELECT COUNT(*) from annonces';
            if(isset($_GET['cat'])){
                $q_count.=' WHERE CATEGORIE = '.$_GET['cat'];
            }
            $q_count.=';';
            $qe_count=$bdd->prepare($q_count);
            $qe_count->execute();    
            $count=$qe_count->fetch();
            echo '<div id="navig">';
            $prev=(int)$_GET['page'];
            $next=((($count['COUNT(*)'])-(((int)$_GET['page']+1)*$dis))/$dis);
            $prev=($prev<5)?$prev:5;
            $next=($next<5)?$next:5;
            if($prev>0){
                $q_next='<a href="annonces.php?page=1';
                if(isset($_GET['cat'])){
                    $q_next.='&cat='.$_GET['cat'];
                }
                if(isset($_GET['search'])){
                    $q_next.='&search='.$_GET['search'];
                }
                $q_next.='" class="abold"><<</a>';
                echo $q_next;
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
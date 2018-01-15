<!DOCTYPE html>
<html lang="fr">
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
            (!isset($_GET['page']))?$_GET['page']=1:null;
            $_GET['page']-=1;
            $dis=20;
            $q_disp='SELECT * FROM annonces WHERE';
            $q_disp.=(isset($_GET['cat']))?' CATEGORIE='.$_GET['cat'].' and ':'';
            $q_disp.=(isset($_GET['search']))?' TITRE like \'%'.$_GET['search'].'%\' and ':'';
            $q_disp.=' DISPO=1 ORDER BY DATE DESC LIMIT '.(int)$_GET['page']*$dis.','.$dis.';';
            $disp=$bdd->prepare($q_disp);
            $disp->execute();
            $annonces=$disp->fetchAll();
            foreach($annonces as $one){
                $get_user=$bdd->prepare("SELECT PSEUDO from users where ID_USR = :id_usr;");
                $get_user->execute([':id_usr'=>$one['ID_USR']]);
                $user=$get_user->fetch();
                include'disp_annonce.php';
            }
            $q_count='SELECT COUNT(*) from annonces WHERE';
            $q_count.=(isset($_GET['cat']))?' CATEGORIE = '.$_GET['cat'].' and ':'';
            $q_count.=(isset($_GET['search']))?' TITRE like \'%'.$_GET['search'].'%\' and ':'';
            $q_count.=' DISPO=1;';
            $qe_count=$bdd->prepare($q_count);
            $qe_count->execute();    
            $count=$qe_count->fetch();
            echo '<div id="navig">';
            $prev=(int)$_GET['page'];
            $next=((($count['COUNT(*)'])-(((int)$_GET['page']+1)*$dis))/$dis);
            $prev=($prev<5)?$prev:5;
            $next=($next<5)?$next:5;
            if($prev>0){
                $q_prev='<a href="annonces.php?page=1';
                $q_prev.=(isset($_GET['cat']))?'&cat='.$_GET['cat']:'';
                $q_prev.=(isset($_GET['search']))?'&search='.$_GET['search']:'';
                $q_prev.='" class="abold"><<</a>';
                echo $q_prev;
            }
            for($i=-$prev;$i<$next+1;$i++){
                echo '<a href="annonces.php?page='.((int)$_GET['page']+$i+1);
                echo (isset($_GET['cat']))?'&cat='.$_GET['cat']:'';
                echo (isset($_GET['search']))?'&search='.$_GET['search']:'';
                echo '"';
                echo (((int)$_GET['page']+$i)==(int)$_GET['page'])?' id="cur">':'>';
                echo ((int)$_GET['page']+$i+1).'</a>';
            }
            if($next>0&&((int)$_GET['page']+1)!=(ceil(($count['COUNT(*)'])/$dis))){
                $q_next='<a href="annonces.php?page='.(ceil(($count['COUNT(*)'])/$dis));
                $q_next.=(isset($_GET['cat']))?'&cat='.$_GET['cat']:'';                    
                $q_next.=(isset($_GET['search']))?'&search='.$_GET['search']:'';
                $q_next.='" class="abold">>></a>';
                echo $q_next;
            }
            echo '</div>';
            echo '<br>';
            ?>
        </div>
        <?php include 'footbar.php'; ?>
    </body>
</html>
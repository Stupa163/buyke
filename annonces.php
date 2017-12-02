<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Annonces</title>
    </head>
    <body>
        <?php
        include 'navbar.php';
        if(!isset($_GET['cat'])){
            $disp=$bdd->prepare("SELECT * from annonces");
        }else{
            
        }
        ?>
    </body>
</html>
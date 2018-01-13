<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
        <link rel="stylesheet" href="styles/style_index.css">
        <link rel="icon" href="images_systeme/icon.ico">
        <title>Buyke</title>
    </head>
    <body>
        <?php include 'navbar.php'; ?>
        <div id="main">
            <div id="otop">
                <a href="">
                    <img src="images_systeme/winter_cyclist.jpg" alt="Winter Cyclist">
                    <p></p>
                </a>
            </div>
            <div id="pres_all">
                <div id="titre">
                    <img src="images_systeme/fleche_r.png" alt="" id="rf">
                    <img src="images_systeme/fleche_l.png" alt="" id="lf">
                    <h2 class="fancy">Consultez les annonces par catégories</h2>
                </div>
                <div class="min">
                    <a href="annonces.php?cat=1">
                        <p>Route</p>
                        <img src="images_systeme/velo_route.png" alt="">   
                    </a>
                </div>
                <div class="min">
                    <a href="annonces.php?cat=2">
                        <p>VTT</p>
                        <img src="images_systeme/VTT.png" alt="">
                    </a>
                </div>
                <div class="min">
                    <a href="annonces.php?cat=3">
                        <p>Vetements</p>
                        <img src="images_systeme/vetements.png" alt="">
                    </a>
                </div> 
                <div class="min">
                    <a href="annonces.php?cat=4">               
                        <p>Cadres</p>
                        <img src="images_systeme/cadre.png" alt="">
                    </a>      
                </div>  
                <div class="min">
                    <a href="annonces.php?cat=5">        
                        <p>Roues</p>
                        <img src="images_systeme/roue.png" alt="">
                    </a>
                </div>      
                <div class="min">
                    <a href="annonces.php?cat=6">          
                        <p>Autres pièces</p>
                        <img src="images_systeme/pieces.png" alt="">
                    </a>
                </div>            
            </div>
        </div>
        <?php include 'footbar.php'; ?>
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
        <script type="text/javascript" src="scripts/script_index.js"></script>
    </body>
</html>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
        <link rel="stylesheet" href="styles/style_ajout_annonce.css">
        <link rel="icon" href="images_systeme/icon.ico">
        <title>Ajouter un annonce</title>
    </head>
    <body>
        <?php
        include 'navbar.php';
        ?>
        <form id="ajout" enctype="multipart/form-data">
            <label for="titre">Titre de l'annonce</label><br>
            <input type="text" name="titre" required><br><br>
            <label for="categorie">Catégorie :</label><br>
            <select name="categorie" id="sel_cat">
                <option value="0">Choisissez une catégorie</option>
                <option value="1">Vélos de route</option>
                <option value="2">VTT</option>
                <option value="3">Vetements</option>
                <option value="4">Cadres</option>
                <option value="5">Roues</option>
                <option value="6">Autre pièces</option>
            </select><br><br>
            <label for="description">Description :</label><br>
            <textarea name="description" id="" cols="30" rows="10" required></textarea><br><br>
            <label for="prix">Prix (€) :</label><br>
            <input type="text" name="prix" required><br><br>
            <label for="photo">Ajoutez des photos :</label><br>
            <input type="file" accept="image/jpeg, image/png" name="photo1"><br><br>
            <button type="submit">Passer l'annonce</button>
        </form>
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
        <script type="text/javascript" src="scripts/script_ajout_annonce.js"></script>
    </body>
</html>
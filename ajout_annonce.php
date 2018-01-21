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
        <div id="bg_ajout">
            <form id="ajout" enctype="multipart/form-data">
                <div id="titre"><label for="titre">Titre de l'annonce</label><br></div>
                <input id ="input_titre" type="text" name="titre" required><br><br>
                <div id="categorie"><label for="categorie">Catégorie</label><br></div>
                <select name="categorie" id="sel_cat">
                    <option value="0">Choisissez une catégorie</option>
                    <option value="1">Vélos de route</option>
                    <option value="2">VTT</option>
                    <option value="3">Vetements</option>
                    <option value="4">Cadres</option>
                    <option value="5">Roues</option>
                    <option value="6">Autre pièces</option>
                </select><br><br>
                <div id="desc"><label for="description">Description</label><br></div>
                <textarea name="description" id="" cols="30" rows="10" required ></textarea><br><br>
                <div id="prix"><label for="prix">Prix (€)</label><br></div>
                <input id ="input_prix" type="text" name="prix" required><br><br>
                <div id="photo"><label for="photo">Ajoutez des photos</label></div>
                <table>
                    <tr>
                        <td>
                            <input id="choixphoto" type="file" accept="image/jpeg, image/png" name="photo1">
                            <label id="btn_file" for="choixphoto">Choisir un fichier...</label>
                        </td>
                        <td>
                            <button id="submit_annonce" type="submit">Passer l'annonce</button>
                        </td>
                    </tr>
                </table>         
            </form>
        </div>
        <script type="text/javascript" src="scripts/jquery-3.2.1.min.js"></script>
        <script type="text/javascript" src="scripts/script_ajout_annonce.js"></script>
    </body>
</html>
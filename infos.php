<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
        <link rel="stylesheet" href="styles/style_infos.css">
        <link rel="icon" href="images_systeme/icon.ico">
        <title>Mon Compte</title>
    </head>
    <body>
        <?php
        include 'conn.php';
        include 'navbar.php';
        $q_infos=$bdd->prepare("SELECT MAIL,PSEUDO,ADRESSE,VILLE,CODE_POSTAL,PAYS,NOM,PRENOM,CARTE,DATE_EXP,CRYPT,PORTABLE from users where ID_USR = ".$_SESSION['ID'].";");
        $q_infos->execute();
        $infos=$q_infos->fetch();
        ?>
        <div id="main">
            <div id="compte">
                <h2>Informations du compte</h2>
                <button type="button" id="b_compte" class="modif">Modifier</button>
                <div id="infos_compte">
                    <p>Pseudo : <span id="s_pseudo"><?php echo $infos['PSEUDO']; ?></span></p>
                    <p>Numéro de carte de crédit : <span id="s_carte"><?php echo($infos['CARTE']==null)?'Non renseigné':$infos['CARTE']; ?></span></p>
                    <p>Date d'expiration : <span id="s_date_exp"><?php echo ($infos['DATE_EXP']==null)?'Non renseigné':substr($infos['DATE_EXP'],0,2).'/'.substr($infos['DATE_EXP'],2,2); ?></span></p>
                    <p>Cryptogramme visuel : <span id="s_crypt"><?php echo ($infos['CRYPT']==null)?'Non renseigné':$infos['CRYPT']; ?></span></p>
                    <p>Mot de passe : <span id="rond">&#9899;&#9899;&#9899;&#9899;&#9899;&#9899;&#9899;&#9899;&#9899;&#9899;</span></p>
                </div>
                <form action="" id="form_compte" class="f_modif">
                    <label for="pseudo">Pseudo : </label>
                    <input type="text" name="pseudo" id="pseudo" value="<?php echo $infos['PSEUDO']; ?>" autocomplete="off"><br><br>
                    <label for="carte">Numéro de carte de crédit : </label>
                    <input type="text" name="carte" id="carte" value="<?php echo $infos['CARTE']; ?>" autocomplete="off"><br><br>
                    <label for="date_exp">Date d'expiration : </label>
                    <input type="text" name="date_exp" id="date_exp" value="<?php echo substr($infos['DATE_EXP'],0,2).'/'.substr($infos['DATE_EXP'],2,2); ?>" autocomplete="off"><br><br>
                    <label for="crypt">Cryprogramme visuel : </label>
                    <input type="text" name="crypt" id="crypt" value="<?php echo $infos['CRYPT']; ?>" autocomplete="off"><br><br>
                    <label for="password">Mot de passe : </label>
                    <input type="password" name="password" id="password" placeholder="&#9899;&#9899;&#9899;&#9899;&#9899;&#9899;&#9899;&#9899;&#9899;&#9899;" autocomplete="off"><br><br>
                    <button type="submit">Enregistrer</button>
                </form>
            </div>
            <div id="contact">
                <h2>Informations de contact</h2>
                <button type="button" id="b_contact" class="modif">Modifier</button>
                <div id="infos_contact">
                    <p>Adresse e-mail : <span id="s_mail"><?php echo($infos['MAIL']==null)?'Non renseigné':$infos['MAIL']; ?></span></p>
                    <p>Téléphone : <span id="s_telephone"><?php echo($infos['PORTABLE']==null)?'Non renseigné':$infos['PORTABLE']; ?></span></p>
                </div>
                <form action="" id="form_contact" class="f_modif">
                    <label for="mail">Adresse e-mail : </label>
                    <input type="email" name="mail" id="mail" value="<?php echo $infos['MAIL']; ?>" autocomplete="off"><br><br>
                    <label for="telephone">Téléphone : </label>
                    <input type="text" name="telephone" id="telephone" value="<?php echo $infos['PORTABLE'] ?>" autocomplete="off"><br><br>
                    <button type="submit">Enregistrer</button>
                </form>
            </div>
            <div id="livraison">
                <h2>Informations de livraison</h2>
                <button type="button" id="b_livraison" class="modif">Modifier</button>
                <div id="infos_livraison">
                    <p>Nom : <span id="s_nom"><?php echo($infos['NOM']==null)?'Non renseigné':$infos['NOM']; ?></span></p>
                    <p>Prenom : <span id="s_prenom"><?php echo($infos['PRENOM']==null)?'Non renseigné':$infos['PRENOM']; ?></span></p>
                    <p>Adresse : <span id="s_adresse"><?php echo($infos['ADRESSE']==null)?'Non renseigné':$infos['ADRESSE']; ?></span></p>
                    <p>Code postal : <span id="s_code_postal"><?php echo($infos['CODE_POSTAL']==null)?'Non renseigné':$infos['CODE_POSTAL']; ?></span></p>
                    <p>Ville : <span id="s_ville"><?php echo($infos['VILLE']==null)?'Non renseigné':$infos['VILLE']; ?></span></p>
                    <p>Pays : <span id="s_pays"><?php echo($infos['PAYS']==null)?'Non renseigné':$infos['PAYS']; ?></span></p>
                </div>
                <form action="" id="form_livraison" class="f_modif">
                    <label for="nom">Nom : </label>
                    <input type="text" name="nom" id="nom" value="<?php echo $infos['NOM']; ?>" autocomplete="off"><br><br>
                    <label for="prenom">Prenom : </label>
                    <input type="text" name="prenom" id="prenom" value="<?php echo $infos['PRENOM']; ?>" autocomplete="off"><br><br>
                    <label for="adresse">Adresse : </label>
                    <input type="text" name="adresse" id="adresse" value="<?php echo $infos['ADRESSE']; ?>" autocomplete="off"><br><br>
                    <label for="code_postal">Code postal : </label>
                    <input type="text" name="code_postal" id="code_postal" value="<?php echo $infos['CODE_POSTAL']; ?>" autocomplete="off"><br><br>
                    <label for="ville">Ville : </label>
                    <input type="text" name="ville" id="ville" value="<?php echo $infos['VILLE']; ?>" autocomplete="off"><br><br>
                    <label for="pays">Pays : </label>
                    <input type="text" name="pays" id="pays" value="<?php echo $infos['PAYS']; ?>" autocomplete="off"><br><br>
                    <button type="submit">Enregistrer</button>
                </form>
            </div>
        </div>
        <?php include 'footbar.php'; ?>
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
        <script type="text/javascript" src="scripts/script_infos.js"></script>
    </body>
</html>
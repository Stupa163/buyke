<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
        <title>Login</title>
        <link rel="icon" href="images_systeme/icon.ico">
        <link rel="stylesheet" href="styles/style_login.css">
    </head>
    <body>
        <div id="myModal" class="modal">
            <?php include 'navbar.php'; ?>
            <div class="modal-content">
                <form action="" method="post" id="log">
                    Nom d'utilisateur :<br>
                    <input type="text" name="pseudo" required><br><br>
                    Mot de passe :<br>
                    <input type="password" name="password" required><br><br>
                    <div class="change"><p>Inscription</p></div>
                    <button type="submit">Connexion</button>
                </form>
                <form action="" method="post" id="sign">
                    Nom d'utilisateur :<br>
                    <input type="text" name="pseudo" required><br><br>
                    Adresse mail :<br>
                    <input type="email" name="mail" required><br><br>
                    Mot de passe :<br>
                    <input type="password" name="password" required><br><br>
                    <div class="change"><p>Connexion</p></div>
                    <button type="submit">Inscription</button>
                </form>
            </div>
        </div>
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
        <script type="text/javascript" src="scripts/script_login.js"></script>
    </body>
</html>
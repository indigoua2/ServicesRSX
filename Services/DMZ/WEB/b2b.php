<?php
	$connexion = mysqli_connect('ip', 'username', 'password', 'db_wt') or die('Erreur de connexion');
	#Précise l'ip sur laquelle aller chercher la DB + le port si nécessaire, le nom de l'utilisateur qui possède des permissions ainsi que son mot de passe, et le nom de la DB
	#Par soucis de sécurité, les informations confidentielles ne sont pas divulguées ici, juste la structure utilisée
?>
<html>
    <head>
    </head>
    <body>
        <h1> B2B </h1>
        <?php
            $requete1 = mysqli_query($connexion,'SELECT * FROM jeux;');
	    #requete1 contient la reponse de la requête faite à la DB
            while($result = mysqli_fetch_row($requete1)) {
                print '<div>Titre : '.$result[0].'. Prix : '.$result[1].'</div>';
            };

            mysqli_close($connexion);

        ?>
    </body>
</html>

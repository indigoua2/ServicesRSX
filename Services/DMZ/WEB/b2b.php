<?php
	$connexion = mysqli_connect('51.210.44.174:3306', 'wtl2-1', 'vps-ikram', 'db_wt') or die('Erreur de connexion');

?>
<html>
	<head>

	</head>
        <body>
                <h1> B2B </h1>
			<?php
			        $requete1 = mysqli_query($connexion,'SELECT * FROM jeux;');
				while($result = mysqli_fetch_row($requete1)) {
					 print '<div>Titre : '.$result[0].'. Prix : '.$result[1].'</div>';
				};

				 mysqli_close($connexion);

			?>
        </body>
</html>

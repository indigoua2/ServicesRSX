cryptage='$6$'
echo "INSERT INTO mail.utilisateurs (id_domaine, mdp , email, dossier) VALUES ('1', ENCRYPT('$2', CONCAT('$cryptage', SUBSTRING(SHA(RAND()), -16))), '$1@l2-1.ephec-ti.be', 'l2-1.ephec-ti.be/$1/');" > ajout_utilisateur.sql
mysql -u root < ajout_utilisateur.sql

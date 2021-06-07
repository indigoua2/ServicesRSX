echo "DELETE FROM mail.utilisateurs WHERE email = '$1@l2-1.ephec-ti.be';" > suppression_utilisateur.sql
mysql -u root < suppression_utilisateur.sql

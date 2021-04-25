#Création des différents (5) utilisateurs qui pourront accéder à la DB (on ne voit ici que la structure utilisée, par soucis de sécurité on ne voit pas les informations confidentielles)
CREATE USER 'username'@'address' IDENTIFIED BY 'password';

#Création DB
CREATE DATABASE db_wt;

#Distribution des permissions à ces différents utilisateurs (seule la permission de lecture est accordée) (ce sont les mêmes adresses que précisées ci-dessus, mais encore une fois nous ne mettons que la strucure utlisée par soucis de sécurité)
GRANT SELECT ON db_wt.*  TO 'username'@'address';

#Lorsque les utilisateurs veulent accéder à la DB, ils accèdent directement à la bonne DB.
USE db_wt;

#Données injectées dans la DB
CREATE TABLE jeux(
    id_jeu INTEGER NOT NULL AUTO_INCREMENT,
    nom_jeu CHAR(40) NOT NULL,
    prix DECIMAL(5,2) NOT NULL,
    PRIMARY KEY(id_jeu)
);

INSERT INTO jeux (nom_jeu, prix)
VALUES ("cheval en bois", 32.50),
       ("guitarre", 43.00),
       ("arc a fleches", 9.99);

                                                             

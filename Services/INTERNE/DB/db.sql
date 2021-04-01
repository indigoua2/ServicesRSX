CREATE USER 'wtl2-1'@'localhost' IDENTIFIED BY 'vps-ikram';
CREATE USER 'wtl2-1'@'172.16.0.1' IDENTIFIED BY 'vps-ikram';
CREATE USER 'wtl2-1'@'51.210.44.174' IDENTIFIED BY 'vps-ikram';
CREATE USER 'wtl2-1'@'172.16.0.3' IDENTIFIED BY 'vps-ikram';
CREATE DATABASE db_wt;

GRANT ALL PRIVILEGES ON *.*  TO 'wtl2-1'@'172.16.0.1';
GRANT ALL PRIVILEGES ON *.*  TO 'wtl2-1'@'localhost';
GRANT ALL PRIVILEGES ON *.*  TO 'wtl2-1'@'51.210.44.174';
GRANT ALL PRIVILEGES ON *.*  TO 'wtl2-1'@'172.16.0.3';
USE db_wt;

CREATE TABLE jeux(
	id_jeu INTEGER NOT NULL AUTO_INCREMENT,
	nom_jeu CHAR(40) NOT NULL,
	prix DECIMAL(5,2) NOT NULL,
	PRIMARY KEY(id_jeu)
	
);

INSERT INTO jeux (nom_jeu, prix)
VALUES ("cheval en bois", 32.50),
       ("guitarre", 43.00),
       ("arc à flèches", 9.99);


USE db_wt;

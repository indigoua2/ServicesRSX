create database mail;

GRANT ALL PRIVILEGES ON mail.* to 'mail'@'localhost' identified by 'root';

FLUSH PRIVILEGES;

use mail;

CREATE TABLE `domaine` (
`id` INT NOT NULL AUTO_INCREMENT,
`nom_domaine` VARCHAR(50) NOT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `utilisateurs` (
`id` INT NOT NULL AUTO_INCREMENT,
`id_domaine` INT NOT NULL,
`mdp` VARCHAR(106) NOT NULL,
`email` VARCHAR(120) NOT NULL,
`dossier` VARCHAR(120) NOT NULL,
PRIMARY KEY (`id`),
UNIQUE KEY `email` (`email`),
FOREIGN KEY (id_domaine) REFERENCES domaine(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

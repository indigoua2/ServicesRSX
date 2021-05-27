
INSERT INTO `mail`.`domaine`
(`id` ,`nom_domaine`)
VALUES
('1', 'l2-1.ephec-ti.be');

INSERT INTO `mail`.`utilisateurs`
(`id`, `id_domaine`, `mdp` , `email`, `dossier`)
VALUES
('1', '1', ENCRYPT(*****, CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'ikram@l2-1.ephec-ti.be', 'l2-1.ephec-ti.be/ikram/');

INSERT INTO `mail`.`utilisateurs`
(`id`, `id_domaine`, `mdp` , `email`, `dossier`)
VALUES
('2', '1', ENCRYPT(*****, CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'julie@l2-1.ephec-ti.be', 'l2-1.ephec-ti.be/julie/');

INSERT INTO `mail`.`utilisateurs`
(`id`, `id_domaine`, `mdp` , `email`, `dossier`)
VALUES
('3', '1', ENCRYPT(*****, CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'clem@l2-1.ephec-ti.be', 'l2-1.ephec-ti.be/clem/');

INSERT INTO `mail`.`utilisateurs`
(`id`, `id_domaine`, `mdp` , `email`, `dossier`)
VALUES
('4', '1', ENCRYPT(*****, CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'b2b@l2-1.ephec-ti.be', 'l2-1.ephec-ti.be/b2b/');

INSERT INTO `mail`.`utilisateurs`
(`id`, `id_domaine`, `mdp` , `email`, `dossier`)
VALUES
('5', '1', ENCRYPT(*****, CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'contact@l2-1.ephec-ti.be', 'l2-1.ephec-ti.be/contact/');

INSERT INTO `mail`.`utilisateurs`
(`id`, `id_domaine`, `mdp` , `email`, `dossier`)
VALUES
('6', '1', ENCRYPT(*****, CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'atelier@l2-1.ephec-ti.be', 'l2-1.ephec-ti.be/atelier/');

INSERT INTO `mail`.`utilisateurs`
(`id`, `id_domaine`, `mdp` , `email`, `dossier`)
VALUES
('7', '1', ENCRYPT(*****, CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'commerciaux@l2-1.ephec-ti.be', 'l2-1.ephec-ti.be/commerciaux/');

INSERT INTO `mail`.`utilisateurs`
(`id`, `id_domaine`, `mdp` , `email`, `dossier`)
VALUES
('8', '1', ENCRYPT(*****, CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'comptabilite@l2-1.ephec-ti.be', 'l2-1.ephec-ti.be/comptabilite/'); 

INSERT INTO `mail`.`utilisateurs`
(`id`, `id_domaine`, `mdp` , `email`, `dossier`)
VALUES
('9', '1', ENCRYPT(*****, CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'direction@l2-1.ephec-ti.be', 'l2-1.ephec-ti.be/direction/');

CREATE TABLE `cooking`.`client` (
  `id` INTEGER(5) NOT NULL,
  `nomC` VARCHAR(20) NOT NULL,
  `tel` VARCHAR(20) NOT NULL,
  `solde` INTEGER(10) NOT NULL,
  `mdp` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`) );
    
  CREATE TABLE `cooking`.`cdr` (
  `nomCdR` VARCHAR(20) NOT NULL,
  `mdpCdR` VARCHAR(20),
  `id` INTEGER(5) NOT NULL,
  PRIMARY KEY (`nomCdR`),
  CONSTRAINT `idClient` FOREIGN KEY (`id`)
		REFERENCES `cooking`.`client` (`id`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION );
  
  CREATE TABLE `cooking`.`recette` (
  `nomR` VARCHAR(20) NOT NULL,
  `type` VARCHAR(20) NOT NULL,
  `descriptif` VARCHAR(50) NOT NULL,
  `prix` INTEGER(5) NOT NULL,
  `nomCdR` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`nomR`),
  CONSTRAINT `createur` FOREIGN KEY (`nomCdR`)
		REFERENCES `cooking`.`cdr` (`nomCdR`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION );
  
  CREATE TABLE `cooking`.`produit` (
  `nomP` VARCHAR(20) NOT NULL,
  `categorie` VARCHAR(20) NOT NULL,
  `stockA` INTEGER(10) NOT NULL,
  `stockMin` INTEGER(10) NOT NULL,
  `stockMax` INTEGER(10) NOT NULL,
  `date_peremption` DATE NOT NULL,
  `nomFournisseur` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`nomP`) );
  
	CREATE TABLE `cooking`.`fournisseur` (
  `nomF` VARCHAR(20) NOT NULL,
  `telF` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`nomF`) );
  
   CREATE TABLE `cooking`.`composer` (
   `nomR` VARCHAR(20) NOT NULL,
   `nomP`VARCHAR(20) NOT NULL,
   `qteI` INTEGER(5) NOT NULL,
  PRIMARY KEY (`nomR`, `nomP`),
  CONSTRAINT `nomRComposer` FOREIGN KEY (`nomR`)
		REFERENCES `cooking`.`recette` (`nomR`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
  CONSTRAINT `nomPComposer` FOREIGN KEY (`nomP`)
		REFERENCES `cooking`.`produit` (`nomP`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION );
        
   CREATE TABLE `cooking`.`commander` (
   `num_commande` INTEGER(15) NOT NULL,
   `date` DATE NOT NULL,
   `qteR` INTEGER(5) NOT NULL,
   `id` INTEGER(5) NOT NULL,
   `nomR` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`num_commande`),
  CONSTRAINT `idClientCommande` FOREIGN KEY (`id`)
		REFERENCES `cooking`.`client` (`id`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
  CONSTRAINT `NomRRecette` FOREIGN KEY (`nomR`)
		REFERENCES `cooking`.`recette` (`nomR`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION );


INSERT INTO `cooking`.`client` (`id`,`nomC`,`tel`,`solde`,`mdp`) VALUES (1,'Gabot','06123456789',5,'snoopydoggy');
INSERT INTO `cooking`.`client` (`id`,`nomC`,`tel`,`solde`,`mdp`) VALUES (2,'Fernandes','06987654321',5,'dems');

INSERT INTO `cooking`.`fournisseur` (`nomF`,`telF`) VALUES('Auchan', '0123456852');

INSERT INTO `cooking`.`produit` (`nomP`,`categorie`,`stockA`,`stockMin`,`stockMax`,`date_peremption`,`nomFournisseur`) VALUES ('pate','glucide',10,0,20,'2021-01-01','Auchan');
INSERT INTO `cooking`.`produit` (`nomP`,`categorie`,`stockA`,`stockMin`,`stockMax`,`date_peremption`,`nomFournisseur`) VALUES ('riz','glucide',10,0,20,'2021-01-02','Auchan');
INSERT INTO `cooking`.`produit` (`nomP`,`categorie`,`stockA`,`stockMin`,`stockMax`,`date_peremption`,`nomFournisseur`) VALUES ('sucre','sucre',10,0,20,'2021-01-03','Auchan');
INSERT INTO `cooking`.`produit` (`nomP`,`categorie`,`stockA`,`stockMin`,`stockMax`,`date_peremption`,`nomFournisseur`) VALUES ('farine','glucide',10,0,20,'2021-01-04','Auchan');
INSERT INTO `cooking`.`produit` (`nomP`,`categorie`,`stockA`,`stockMin`,`stockMax`,`date_peremption`,`nomFournisseur`) VALUES ('œuf','proteine',10,0,20,'2021-01-05','Auchan');
INSERT INTO `cooking`.`produit` (`nomP`,`categorie`,`stockA`,`stockMin`,`stockMax`,`date_peremption`,`nomFournisseur`) VALUES ('lait','proteine',10,0,20,'2021-01-06','Auchan');
INSERT INTO `cooking`.`produit` (`nomP`,`categorie`,`stockA`,`stockMin`,`stockMax`,`date_peremption`,`nomFournisseur`) VALUES ('tomate','legume',10,0,20,'2021-01-07','Auchan');
INSERT INTO `cooking`.`produit` (`nomP`,`categorie`,`stockA`,`stockMin`,`stockMax`,`date_peremption`,`nomFournisseur`) VALUES ('oignon','legume',10,0,20,'2021-01-08','Auchan');
INSERT INTO `cooking`.`produit` (`nomP`,`categorie`,`stockA`,`stockMin`,`stockMax`,`date_peremption`,`nomFournisseur`) VALUES ('huile','lipide',10,0,20,'2021-01-09','Auchan');
INSERT INTO `cooking`.`produit` (`nomP`,`categorie`,`stockA`,`stockMin`,`stockMax`,`date_peremption`,`nomFournisseur`) VALUES ('carotte','legume',10,0,20,'2021-01-10','Auchan');
INSERT INTO `cooking`.`produit` (`nomP`,`categorie`,`stockA`,`stockMin`,`stockMax`,`date_peremption`,`nomFournisseur`) VALUES ('courgette','legume',10,0,20,'2021-01-11','Auchan');
INSERT INTO `cooking`.`produit` (`nomP`,`categorie`,`stockA`,`stockMin`,`stockMax`,`date_peremption`,`nomFournisseur`) VALUES ('pomme de terre','glucide',10,0,20,'2021-01-12','Auchan');
INSERT INTO `cooking`.`produit` (`nomP`,`categorie`,`stockA`,`stockMin`,`stockMax`,`date_peremption`,`nomFournisseur`) VALUES ('asperge','legume',10,0,20,'2021-01-13','Auchan');
INSERT INTO `cooking`.`produit` (`nomP`,`categorie`,`stockA`,`stockMin`,`stockMax`,`date_peremption`,`nomFournisseur`) VALUES ('salade','legume',10,0,20,'2021-01-14','Auchan');
INSERT INTO `cooking`.`produit` (`nomP`,`categorie`,`stockA`,`stockMin`,`stockMax`,`date_peremption`,`nomFournisseur`) VALUES ('radis','legume',10,0,20,'2021-01-15','Auchan');
INSERT INTO `cooking`.`produit` (`nomP`,`categorie`,`stockA`,`stockMin`,`stockMax`,`date_peremption`,`nomFournisseur`) VALUES ('poulet','proteine',10,0,20,'2021-01-16','Auchan');
INSERT INTO `cooking`.`produit` (`nomP`,`categorie`,`stockA`,`stockMin`,`stockMax`,`date_peremption`,`nomFournisseur`) VALUES ('bœuf','proteine',10,0,20,'2021-01-17','Auchan');
INSERT INTO `cooking`.`produit` (`nomP`,`categorie`,`stockA`,`stockMin`,`stockMax`,`date_peremption`,`nomFournisseur`) VALUES ('veau','proteine',10,0,20,'2021-01-18','Auchan');
INSERT INTO `cooking`.`produit` (`nomP`,`categorie`,`stockA`,`stockMin`,`stockMax`,`date_peremption`,`nomFournisseur`) VALUES ('lapin','proteine',10,0,20,'2021-01-19','Auchan');
INSERT INTO `cooking`.`produit` (`nomP`,`categorie`,`stockA`,`stockMin`,`stockMax`,`date_peremption`,`nomFournisseur`) VALUES ('poulpe','proteine',10,0,20,'2021-01-20','Auchan');
INSERT INTO `cooking`.`produit` (`nomP`,`categorie`,`stockA`,`stockMin`,`stockMax`,`date_peremption`,`nomFournisseur`) VALUES ('saumon','proteine',10,0,20,'2021-01-21','Auchan');
INSERT INTO `cooking`.`produit` (`nomP`,`categorie`,`stockA`,`stockMin`,`stockMax`,`date_peremption`,`nomFournisseur`) VALUES ('thon','proteine',10,0,20,'2021-01-22','Auchan');
INSERT INTO `cooking`.`produit` (`nomP`,`categorie`,`stockA`,`stockMin`,`stockMax`,`date_peremption`,`nomFournisseur`) VALUES ('daurade','proteine',10,0,20,'2021-01-23','Auchan');
INSERT INTO `cooking`.`produit` (`nomP`,`categorie`,`stockA`,`stockMin`,`stockMax`,`date_peremption`,`nomFournisseur`) VALUES ('piment','lipide',10,0,20,'2021-01-24','Auchan');
INSERT INTO `cooking`.`produit` (`nomP`,`categorie`,`stockA`,`stockMin`,`stockMax`,`date_peremption`,`nomFournisseur`) VALUES ('poivron','legume',10,0,20,'2021-01-25','Auchan');
INSERT INTO `cooking`.`produit` (`nomP`,`categorie`,`stockA`,`stockMin`,`stockMax`,`date_peremption`,`nomFournisseur`) VALUES ('moutarde','lipide',10,0,20,'2021-01-26','Auchan');
INSERT INTO `cooking`.`produit` (`nomP`,`categorie`,`stockA`,`stockMin`,`stockMax`,`date_peremption`,`nomFournisseur`) VALUES ('orange','glucide',10,0,20,'2021-01-27','Auchan');
INSERT INTO `cooking`.`produit` (`nomP`,`categorie`,`stockA`,`stockMin`,`stockMax`,`date_peremption`,`nomFournisseur`) VALUES ('citron','glucide',10,0,20,'2021-01-28','Auchan');
INSERT INTO `cooking`.`produit` (`nomP`,`categorie`,`stockA`,`stockMin`,`stockMax`,`date_peremption`,`nomFournisseur`) VALUES ('pomme','glucide',10,0,20,'2021-01-29','Auchan');
INSERT INTO `cooking`.`produit` (`nomP`,`categorie`,`stockA`,`stockMin`,`stockMax`,`date_peremption`,`nomFournisseur`) VALUES ('porc','proteine',10,0,20,'2021-01-30','Auchan');
INSERT INTO `cooking`.`produit` (`nomP`,`categorie`,`stockA`,`stockMin`,`stockMax`,`date_peremption`,`nomFournisseur`) VALUES ('poireau','legume',10,0,20,'2021-01-31','Auchan');

INSERT INTO `cooking`.`cdr` (`nomCdR`,`mdpCdR`,`id`) VALUES('GabotCuisto', 'azerty2', 1);
INSERT INTO `cooking`.`cdr` (`nomCdR`,`mdpCdR`,`id`) VALUES('Danio5', 'abcde', 4);

INSERT INTO `cooking`.`recette` (`nomR`,`type`,`descriptif`,`prix`,`nomCdR`) VALUES('Tiramisu', 'dessert', 'Mascarpone, biscuit et cacao', 5, 'GabotCuisto');
INSERT INTO `cooking`.`composer` (`nomR`,`nomP`,`qteI`) VALUES('Tiramisu', 'sucre', 1);
INSERT INTO `cooking`.`recette` (`nomR`,`type`,`descriptif`,`prix`,`nomCdR`) VALUES('Carbonara', 'plat', 'Pate, porc, creme', 5, 'GabotCuisto');
INSERT INTO `cooking`.`composer` (`nomR`,`nomP`,`qteI`) VALUES('Carbonara', 'pate', 1);
INSERT INTO `cooking`.`composer` (`nomR`,`nomP`,`qteI`) VALUES('Carbonara', 'porc', 1);
INSERT INTO `cooking`.`composer` (`nomR`,`nomP`,`qteI`) VALUES('Carbonara', 'oeuf', 1);

INSERT INTO `cooking`.`commander` (`num_commande`,`date`,`qteR`,`id`,`nomR`) VALUES(1452,'2021-05-08',2,1,'Tiramisu');






























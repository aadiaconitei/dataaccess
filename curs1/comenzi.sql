CREATE DATABASE demo;
USE demo;

CREATE TABLE `demo`.`studenti` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT , 
    `nume` VARCHAR(100) NOT NULL , 
    `prenume` VARCHAR(100) NOT NULL , 
    `telefon` CHAR(10) NOT NULL , 
    `email` VARCHAR(200) NOT NULL , 
    `data_adaugare` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
    PRIMARY KEY (`id`)
)
    ENGINE = InnoDB 
    CHARSET=utf8 COLLATE utf8_general_ci;

    ALTER TABLE `studenti` CHANGE `email` `email` VARCHAR(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;


    ALTER TABLE `demo`.`studenti` ADD UNIQUE `email_unic` (`email`);


    INSERT INTO `studenti` (`id`, `nume`, `prenume`, `telefon`, `email`, `data_adaugare`) 
    VALUES 
    (NULL, 'Popescu', 'Dan', '0722222222', 'popescu@dan.ro', current_timestamp()), 
    (NULL, 'Popescu', 'Dan', '0750000000', 'popescu@dan.com', current_timestamp());


UPDATE `studenti` SET `email` = 'popescu@dan.com.ro' WHERE `studenti`.`id` = 2;
UPDATE `studenti` SET `prenume` = 'Adrian' WHERE `studenti`.`id` = 1;
UPDATE `studenti` SET `nume` = 'Popescu-Ionescu', `prenume` = 'Dan Mihai' WHERE `studenti`.`id` = 2;

SELECT * FROM `studenti` WHERE id =2;
DELETE  FROM `studenti` WHERE id =1;
SELECT nume, prenume FROM `studenti` WHERe id =2
CREATE  TABLE `Renewable_Energy_Lab`.`article_type` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `type_name` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`id`) );
  
INSERT INTO article_type VALUES
( 1, 'Articole' ),
( 2, 'Contracte internaţionale-responsabil'),
( 3, 'Contracte naţionale-director'),
( 4, 'Contracte internaţionale-membru'),
( 5, 'Contracte naţionale-membru'),
( 6, 'Brevete de invenţie');
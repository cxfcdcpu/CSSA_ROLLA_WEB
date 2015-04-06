--create tables.

--create the user table.
CREATE TABLE `USER`(
`userID` INT UNSIGNED NOT NULL AUTO_INCREMENT,  
`userName` VARCHAR(20) NOT NULL,  
`userType` ENUM('admin','partnar','member') NOT NULL,  
`email` VARCHAR(30) NOT NULL,  
`road` VARCHAR(50),     
`city` VARCHAR(30),   
`state` VARCHAR(4),  
`ZIP` INT,   
`phone` INT,   
`pass` VARCHAR(20) NOT NULL,  
`firstName` VARCHAR(20) NOT NULL,  
`lastName` VARCHAR(40) NOT NULL,  
`credit` INT NOT NULL DEFAULT 0,  
`date_expire` DATE NOT NULL,  
`date_create` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,  
`date_modified` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',   
PRIMARY KEY(`userID`),  
UNIQUE KEY `username`(`username`),  
UNIQUE KEY `email`(`email`)  
) DEFAULT CHARSET=utf8;  

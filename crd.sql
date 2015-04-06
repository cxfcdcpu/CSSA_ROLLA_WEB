--create tables.

--create the user table.
--user can be a member, a partnar or admin.
--admin can modify all information.
--partnar can modify specific categories' pages and messages.
--members can only modify their own products and messages.

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

--create categories table for food market
--right now there are 'sauce', 'dry food' and 'other' 
--later we may have more categories.

CREATE TABLE `categories`(
`CID` INT UNSIGNED NOT NULL AUTO_INCREMENT,
`category` VARCHAR(30) NOT NULL,
PRIMARY KEY(`CID`),
UNIQUE KEY`category`(`category`)
)DEFAULT CHARSET=utf8;  

--create products table for all products


CREATE TABLE `products`(
`PID` INT UNSIGNED NOT NULL AUTO_INCREMENT,
`PName` VARCHAR(30) NOT NULL,
`img` VARCHAR(30) NOT NULL,
`category` VARCHAR(30) NOT NULL,
`discription`  TINYTEXT NOT NULL,

`price` INT UNSIGNED NOT NULL,
`stock` INT UNSIGNED NOT NULL,
`sold` INT UNSIGNED NOT NULL DEFAULT 0,
`create_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
`date_modified` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
`date_expire` DATE NOT NULL,
PRIMARY KEY(`PID`),
KEY `date_create`(`date_create`),
KEY `category`(`category`)
)DEFAULT CHARSET=utf8;

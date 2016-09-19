DROP TABLE IF EXISTS `customers`;
    CREATE TABLE `customers` (
    `id` varchar(255) NOT NULL,
    `nama` varchar(255) NOT NULL,
    `date` varchar(255) NOT NULL,
    `gender` varchar(255) NOT NULL,
    `phone` varchar(255) NOT NULL,
    PRIMARY KEY (`id`))
ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `c_security_permission` (
`id` VARCHAR(255) NOT NULL,
`permission_label` VARCHAR(255) NOT NULL,
`permission_value` VARCHAR(255) NOT NULL,
PRIMARY KEY(`id`),
UNIQUE KEY `UK_hjanbgxcv54ftgh78jhnbmkla` (`permission_value`))
ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `c_security_role`(
`id` VARCHAR(255) NOT NULL,
`name` VARCHAR(255) NOT NULL,
`description` VARCHAR(255) NOT NULL,
PRIMARY KEY(`id`),
UNIQUE KEY `UK_indahnuralifah` (`name`))
ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `c_security_role_permission` (
`id_role` VARCHAR(255) NOT NULL,
`id_permission` VARCHAR(255) NOT NULL,
PRIMARY KEY (`id_role`, `id_permission`),
KEY `FK_F453hgbcnklmsdz6gbxmncjd0` (`id_permission`),
CONSTRAINT `FK_F453hgbcnklmsdz6gbxmncjd0` FOREIGN KEY(`id_permission`) REFERENCES `c_security_permission` (`id`),
CONSTRAINT `FK_nmckjf87hsjakzmnb12hg4jkd` FOREIGN KEY(`id_role`) REFERENCES `c_security_role` (`id`)) 
ENGINE = InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `c_security_user`(
`id` VARCHAR(255) NOT NULL,
`username` VARCHAR(255) NOT NULL,
`password` VARCHAR(255) NOT NULL,
`active` VARCHAR(255) NOT NULL,
`id_role` VARCHAR(255) NOT NULL,
PRIMARY KEY(`id`),
UNIQUE KEY `UK_asdf456klkjhgfdsasdfghjkl` (`username`),
KEY `FK_astgdhbnhcygfrtads232bhnj` (`id_role`),
CONSTRAINT `FK_astgdhbnhcygfrtads232bhnj` FOREIGN KEY (`id_role`) REFERENCES `c_security_role` (`id`))
ENGINE=InnoDB DEFAULT CHARSET=latin1;
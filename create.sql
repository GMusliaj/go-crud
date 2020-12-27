DROP DATABASE IF EXISTS `goblog`;
DROP TABLE IF EXISTS `Employee`;
CREATE DATABASE `goblog`;
USE `goblog`;
CREATE TABLE `Employee` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

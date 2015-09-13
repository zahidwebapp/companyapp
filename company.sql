/*
MySQL Data Transfer
Source Host: localhost
Source Database: company
Target Host: localhost
Target Database: company
Date: 9/13/2015 6:54:27 PM
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for companies
-- ----------------------------
DROP TABLE IF EXISTS `companies`;
CREATE TABLE `companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `director` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `companies` VALUES ('1', 'aa', 'Baridhara1', 'Dhaka', 'BD', 'zahid@bjit.com', '12345', null);
INSERT INTO `companies` VALUES ('2', 'BJIT1', 'Baridhara1', 'Dhaka', 'BD', '', '12345', null);
INSERT INTO `companies` VALUES ('3', 'BJIT1', 'Baridhara1', 'Dhaka', 'BD', 'zahid@bjit.com', '12345', null);
INSERT INTO `companies` VALUES ('6', 'ZCOM', 'Banasree', 'Dhaka', 'BD', 'zahidhchowdhury@gmail.com', '01712150289', null);
INSERT INTO `companies` VALUES ('7', 'ZCOM', 'Banasree', 'Dhaka', 'BD', '', '01712150289', null);
INSERT INTO `companies` VALUES ('8', 'ZCOM', 'Banasree', 'Dhaka', 'BD', '', '01712150289', null);
INSERT INTO `companies` VALUES ('9', 'ZCOM', 'Banasree', 'Dhaka', 'BD', '', '01712150289', null);
INSERT INTO `companies` VALUES ('10', 'ZCOM', 'Banasree', 'Dhaka', 'BD', '', '01712150289', null);
INSERT INTO `companies` VALUES ('11', 'ZCOM', 'Banasree', 'Dhaka', 'BD', null, '01712150289', null);
INSERT INTO `companies` VALUES ('12', 'ZCOM', 'Banasree', 'Dhaka', 'BD', null, '01712150289', null);
INSERT INTO `companies` VALUES ('13', 'ZCOM', 'Banasree', 'Dhaka', 'BD', null, '01712150289', null);
INSERT INTO `companies` VALUES ('14', 'ZCOM', 'Banasree', 'Dhaka', 'BD', null, '01712150289', null);
INSERT INTO `companies` VALUES ('15', 'ZCOM', 'Banasree', 'Dhaka', 'BD', null, '01712150289', null);
INSERT INTO `companies` VALUES ('16', 'ZCOM', 'Banasree', 'Dhaka', 'BD', null, '01712150289', null);
INSERT INTO `companies` VALUES ('17', 'ZCOM', 'Banasree', 'Dhaka', 'BD', null, '01712150289', null);
INSERT INTO `companies` VALUES ('18', 'ZCOM', 'Banasree', 'Dhaka', 'BD', null, '01712150289', null);
INSERT INTO `companies` VALUES ('19', 'ZCOM', 'Banasree', 'Dhaka', 'BD', null, '01712150289', null);
INSERT INTO `companies` VALUES ('20', 'ZCOM', 'Banasree', 'Dhaka', 'BD', null, '01712150289', null);
INSERT INTO `companies` VALUES ('21', 'ZCOM', 'Banasree', 'Dhaka', 'BD', null, '01712150289', null);
INSERT INTO `companies` VALUES ('22', 'ZCOM', 'Banasree', 'Dhaka', 'BD', null, '01712150289', null);
INSERT INTO `companies` VALUES ('23', 'ZCOM', 'Banasree', 'Dhaka', 'BD', null, '01712150289', null);
INSERT INTO `companies` VALUES ('24', 'ZCOM', 'Banasree', 'Dhaka', 'BD', null, '01712150289', null);
INSERT INTO `companies` VALUES ('25', 'ZCOM', 'Banasree', 'Dhaka', 'BD', null, '01712150289', null);
INSERT INTO `companies` VALUES ('26', 'ZCOM', 'Banasree', 'Dhaka', 'BD', null, '01712150289', null);
INSERT INTO `companies` VALUES ('27', 'ZCOM', 'Banasree', 'Dhaka', 'BD', '', '01712150289', null);
INSERT INTO `companies` VALUES ('28', 'ZCOM', 'Banasree', 'Dhaka', 'BD', '', '01712150289', null);
INSERT INTO `companies` VALUES ('29', 'ZCOM', 'Banasree', 'Dhaka', 'BD', '', '01712150289', 'mithila,raid');
INSERT INTO `companies` VALUES ('30', 'ZCOM', 'Banasree', 'Dhaka', 'BD', '', '01712150289', 'zahid,raid');

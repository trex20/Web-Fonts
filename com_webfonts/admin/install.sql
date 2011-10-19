DROP TABLE IF EXISTS `#__webfonts`;

CREATE TABLE IF NOT EXISTS `#__webfonts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `selector` varchar(300) NOT NULL COMMENT 'css selector',
  `fallBack` VARCHAR( 150 ) NOT NULL COMMENT 'Fall back fontstack',
  `vendor` varchar(60) NOT NULL,
  `fontId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=0 ;

DROP TABLE IF EXISTS `#__webfonts_vendor`;

CREATE TABLE IF NOT EXISTS `#__webfonts_vendor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `properties` text COMMENT 'vendor specific properties',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=0;

INSERT INTO `#__webfonts_vendor` (`id`, `name`, `properties`) VALUES (1, 'Fonts.com', '{"account":{"email":"","firstName":"","lastName":""},"key":"","designers":{},"foundries":{},"classifications":{},"languages":{},"wfspid":""}');

DROP TABLE IF EXISTS `#__webfonts_webfonts`;

CREATE TABLE IF NOT EXISTS `#__webfonts_fontscom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProjectID` varchar(150) NOT NULL,
  `FontID` int(11) NOT NULL,
  `font` text CHARACTER SET utf8 NOT NULL COMMENT 'json encoded font info',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=0 ;
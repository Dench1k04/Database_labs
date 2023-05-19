SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `categories` (`id`, `name`) VALUES
(5,	'economics'),
(3,	'fashion'),
(1,	'politics'),
(2,	'science'),
(4,	'sql');

DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `comment_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `comment_text` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `news_id` int(4) unsigned NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `comments` (`comment_id`, `comment_text`, `news_id`) VALUES
(1,	'That\'s was super interesting science article!',	1),
(2,	'this article was so bored',	1);

DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `text` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(4) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `news` (`id`, `title`, `text`, `category_id`) VALUES
(1,	'Updated DNA map better reflects human diversity',	'Scientists have produced an updated map of all human DNA which could help to transform medical research.\r\n\r\nThe original human genome, published 20 years ago, is mostly from one person, and does not represent human diversity.\r\n\r\nThe latest version - dubbed the pangenome - is made up of data from 47 people from Africa, Asia, the Americas and Europe.\r\n\r\nIt is hoped it will lead to new drugs and treatments that work for a much wider range of people.\r\n\r\nAccording to Dr Eric Green, who is director for the National Human Genome Research Institute in Bethesda Maryland, the research, which has been published in the journal Nature, has the potential to transform medical research.\r\n\r\n\"This represents a tremendous scientific achievement. A pangenome that better reflects the diversity of the human population will enable scientists to better understand how genetic variation influences health and disease and moves us to a future in which genomic medicine benefits everyone\".\r\n\r\nGene sequence\r\nIMAGE SOURCE,RICHARD JONES/SCIENCE PHOTO LIBRARY\r\nImage caption,\r\nThe genes that make up human DNA are made up of of sequences of chemicals.\r\nThe pangenome consists of 47 separate DNA maps of the people from different ancestries, which can also be combined and compared with new software tools to find important genetic differences.\r\n\r\nThe aim is to develop more effective treatments for more people, but genetic scientists are aware that the research has the potential to be misused. Prof Muzlifah Haniffa, of the Sanger Institute in Newcastle, who was not part of the research team, said that the science should not be misinterpreted,\r\n\r\n\"Genetic information about diversity should be used responsibly and not to provide evidence of differences in race, which is a social construct. We have to understand what it shows and, importantly, what it doesn\'t show. We have to make sure that taking information very superficially to establish false racial characteristics does not happen\".\r\n\r\nThe human genome was largely completed in 2003. It is a map of the basic chemical building blocks that make up human DNA. Researchers use it to identify genes involved in diseases so as to develop better treatments. It has led to improved cancer therapies and the development of tests to predict the onset of inherited conditions, such as Huntington\'s disease.\r\n\r\nGene sequencing Machines\r\nIMAGE SOURCE,DAVID PARKER/SCIENCE PHOTO LIBRARY\r\nImage caption,\r\nIt took hundreds of machines 13 years to read all the DNA that makes a human\r\nBut the downside is that 70% of the genome came from a single individual: an American man with European and African ancestry. This therefore misses important genetic differences that play an important part in diseases in people from other backgrounds, according to Dr Karen Miga of the university of California in Santa Cruz.\r\n\r\n\"Having one map of a single human genome cannot adequately represent all of humanity. This reboot can be the foundation for the scientific community to have more equitable healthcare in the future\".\r\n\r\nAlthough the map of the human genome currently used by researchers has a lot of African DNA in it, counterintuitively it is the population that is one of the most lacking, according to Dr Ewan Birney, deputy Director General of the European Molecular Biology Lab near Cambridge.\r\n\r\n\"The most important place in the World to get genomes from is sub-Saharan Africa. It is where we started as a species, and it has the greatest genetic diversity. So, one African American genome is not enough to represent that diversity\".\r\n\r\nBetter treatments\r\nDr Zamin Iqbal, a senior researcher at EMBL\'s European Bioinformatics Institute near Cambridge, believes that a more representative genome will lead to better treatments for more people.\r\n\r\n\"Expanding the range of populations present in the human reference genome will reduce a long-standing implicit bias in studies of human genetics. Humans are diverse, and it\'s important that our analytical methods incorporate that.\r\n\r\nTwo recent studies in the US and in the UK and Ireland found that children of European ancestry were twice as likely to be diagnosed with genetic tests than those of African ancestry.\r\n\r\nDr Alexander Arguello, who is the programme director at at the National Human Genome Research Institute, says the aim of the new project was to change those outcomes.\r\n\r\n\"The hope is that once you capture sufficient diversity you will get the same diagnostic results whatever the population\".\r\n\r\nThe new pangenome is made up from 47 people, half of whom have ancestry from sub-Saharan Africa, a third from the Americas, 13% from China and 2% from Europe, with representation of indigenous people.\r\n\r\nBut this is just the start of an ambitious programme to better represent the diversity of the world\'s population. The initial aim is to increase the number to 350. After that the scientists leading the largely US programme plan to increase numbers and diversity further by working with organisations from other countries in what they hope will become phase two of the human genome project.\r\n\r\n',	5);

DROP TABLE IF EXISTS `rating`;
CREATE TABLE `rating` (
  `rating_id` int(4) NOT NULL AUTO_INCREMENT,
  `rating_value` int(1) NOT NULL,
  `news_id` int(4) NOT NULL,
  `ip_adress` int(11) unsigned NOT NULL,
  PRIMARY KEY (`rating_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `rating` (`rating_id`, `rating_value`, `news_id`, `ip_adress`) VALUES
(1,	5,	2,	1921680200),
(2,	2,	1,	1921680100),
(3,	3,	4,	192168050),
(4,	4,	3,	19216801),
(5,	5,	5,	192168801);

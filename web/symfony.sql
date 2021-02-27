/*
SQLyog Professional v13.1.1 (64 bit)
MySQL - 10.4.11-MariaDB : Database - symfony
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`symfony` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `symfony`;

/*Table structure for table `about` */

DROP TABLE IF EXISTS `about`;

CREATE TABLE `about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pagetitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `maxtext` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `about` */

insert  into `about`(`id`,`img`,`title`,`text`,`pagetitle`,`maxtext`) values 
(1,'/img/about.jpg','2600','TOTAL','Lorem ipsum dolor sit amet elit.','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium animi atque dolor eligsimilique sint sit vel?similique sint sit vel?similique sint sit vel?similique sint sit vel?similique sint sit vel?similique sint sit vel?similique sint sit vel?similique sint sit vel?endi et exercitationem expedita maxime nobis officiis quam, quasi quod sapiente sed similique sint sit vel? Aliquam architecto id illum ipsa, ipsam labore nihil peLorem ipsum dolor sit amet id illum ipsa, ipsam labore nihil peLorem ipsum dolor sit amet id illum ipsa, ipsam labore nihil peLorem ipsum dolor sit amet id illum ipsa, ipsam labore nihil peLorem ipsum dolor sit ametid illum ipsa, ipsam labore nihil peLorem ipsum dolor sit amet dolor sit amet dolor sit amet dolor sit amet'),
(2,NULL,'2450','CASES',NULL,NULL),
(3,NULL,'1000','WORKERS',NULL,NULL),
(4,NULL,'1600','PARTNERS',NULL,NULL);

/*Table structure for table `about_translation` */

DROP TABLE IF EXISTS `about_translation`;

CREATE TABLE `about_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `about_translation_idx` (`locale`,`object_id`,`field`),
  KEY `IDX_107BB9AE232D562B` (`object_id`),
  CONSTRAINT `FK_107BB9AE232D562B` FOREIGN KEY (`object_id`) REFERENCES `about` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `about_translation` */

insert  into `about_translation`(`id`,`object_id`,`locale`,`field`,`content`) values 
(1,1,'ru','pagetitle','Идейные соображения высшего порядка.'),
(2,1,'ru','text','Специалистов'),
(3,1,'ru','maxtext','Идейные соображения высшего порядка, а также укрепление и развитие структуры позволяет выполнять важные задания по разработке новых предложений. Не следует, однако забывать, что консультация с широким активом позволяет выполнять важные задания по разработке дальнейших направлений развития. С другой стороны дальнейшее развитие различных форм деятельности позволяет оценить значение дальнейших направлений развития. Равным образом консультация с широким активом играет важную роль в формировании форм развития. Разнообразный и богатый опыт рамки и место обучения кадров играет важную роль в формировании систем массового участия. Товарищи! постоянный количественный рост и сфера нашей активности обеспечивает широкому кругу (специалистов) участие в формировании систем массового участия.\r\n\r\nРазнообразный и богатый опыт рамки и место обучения кадров влечет за собой процесс внедрения и модернизации дальнейших направлений развития. Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности играет важную роль в формировании форм развития.'),
(4,2,'ru','pagetitle',NULL),
(5,2,'ru','text','Выигранных Дел'),
(6,2,'ru','maxtext',NULL),
(7,3,'ru','pagetitle',NULL),
(8,3,'ru','text','Товарищи'),
(9,3,'ru','maxtext',NULL),
(10,4,'ru','pagetitle',NULL),
(11,4,'ru','text','Партнеров'),
(12,4,'ru','maxtext',NULL),
(13,1,'am','pagetitle','Բարձրագույն կարգի գաղափարական նկատառումներ'),
(14,1,'am','text','Մասնագետներ'),
(15,1,'am','maxtext','Բարձր մակարդակի գաղափարական նկատառումները, ինչպես նաև կառուցվածքի ամրապնդումն ու զարգացումը մեզ թույլ են տալիս իրականացնել կարևոր առաջադրանքներ նոր առաջարկների մշակման գործում: Այնուամենայնիվ, չպետք է մոռանալ, որ լայն ակտիվի հետ խորհրդակցելը թույլ է տալիս իրականացնել կարևոր առաջադրանքներ ՝ զարգացման հետագա ոլորտները զարգացնելու համար: Մյուս կողմից, գործունեության տարբեր ձևերի հետագա զարգացումը մեզ թույլ է տալիս գնահատել զարգացման հետագա ուղղությունների նշանակությունը: Նմանապես, լայն ակտիվի հետ խորհրդակցությունը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում: Շրջանակների և վերապատրաստման վայրի բազմազան և հարուստ փորձը կարևոր դեր է խաղում զանգվածային մասնակցության համակարգերի ձևավորման գործում: Ընկերներ: մշտական ​​քանակական աճը և մեր գործունեության շրջանակը ապահովում են զանգվածային մասնակցության համակարգերի ձևավորմանը մասնակցության լայն շրջանակ (մասնագետներ): Շրջանակի բազմազան և հարուստ փորձը և կադրերի պատրաստման վայրը ենթադրում են զարգացման հետագա ոլորտների իրականացման և արդիականացման գործընթաց: Մշտական ​​քանակական աճի բազմազան և հարուստ փորձ և մեր գործունեության շրջանակը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում:'),
(16,2,'am','pagetitle',NULL),
(17,2,'am','text','Հաղթանակած գործերը'),
(18,2,'am','maxtext',NULL),
(19,3,'am','pagetitle',NULL),
(20,3,'am','text','Աշխատակիցներ'),
(21,3,'am','maxtext',NULL),
(22,4,'am','pagetitle',NULL),
(23,4,'am','text','Գործընկերներ'),
(24,4,'am','maxtext',NULL);

/*Table structure for table `carousel` */

DROP TABLE IF EXISTS `carousel`;

CREATE TABLE `carousel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `li1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `li2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `li3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `carousel` */

insert  into `carousel`(`id`,`title`,`li1`,`li2`,`li3`) values 
(1,'Legal support in Armenia','Advice on the choice of legal form of doing business.','Opening and registration of a legal entity.','Lorem ipsum dolor sit amet dolor sit amet.'),
(2,'Transaction support, participation  .','As part of the provision of legal services to companies.','We are directly involved in negotiating.','Note that those who consider the participation .'),
(3,'Representation  in Armenia','As part of the provision of legal services to companies .','We are directly involved in negotiating .','Note that those who consider the participation .');

/*Table structure for table `carousel_translation` */

DROP TABLE IF EXISTS `carousel_translation`;

CREATE TABLE `carousel_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `carousel_translation_idx` (`locale`,`object_id`,`field`),
  KEY `IDX_F5E5CAEB232D562B` (`object_id`),
  CONSTRAINT `FK_F5E5CAEB232D562B` FOREIGN KEY (`object_id`) REFERENCES `carousel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `carousel_translation` */

insert  into `carousel_translation`(`id`,`object_id`,`locale`,`field`,`content`) values 
(1,1,'ru','title','Юридическая поддержка в Армении'),
(2,1,'ru','li1','Консультации по выбору правовой формы ведения бизнеса.'),
(3,1,'ru','li2','Открытие и регистрация юридического лица.'),
(4,1,'ru','li3','Формировании систем массового участия.'),
(5,1,'am','title','Իրավաբանական աջակցություն Հայաստանում'),
(6,1,'am','li1','Խորհրդատվություն բիզնես վարելու օրինական ձևի ընտրության վերաբերյալ:'),
(7,1,'am','li2','Իրավաբանական անձի բացում և գրանցում:'),
(8,1,'am','li3','Զանգվածային մասնակցության համակարգերի ձևավորում:'),
(9,2,'ru','title','Юридическая поддержка в Армении'),
(10,2,'ru','li1','Консультации по выбору правовой формы ведения бизнеса.'),
(11,2,'ru','li2','Открытие и регистрация юридического лица.'),
(12,2,'ru','li3','Формировании систем массового участия.'),
(13,2,'am','title','Իրավաբանական աջակցություն Հայաստանում'),
(14,2,'am','li1','Խորհրդատվություն բիզնես վարելու օրինական ձևի ընտրության վերաբերյալ:'),
(15,2,'am','li2','Իրավաբանական անձի բացում և գրանցում:'),
(16,2,'am','li3','Զանգվածային մասնակցության համակարգերի ձևավորում:'),
(17,3,'am','title','Իրավաբանական աջակցություն Հայաստանում'),
(18,3,'am','li1','Խորհրդատվություն բիզնես վարելու օրինական ձևի ընտրության վերաբերյալ:'),
(19,3,'am','li2','Իրավաբանական անձի բացում և գրանցում:'),
(20,3,'am','li3','Զանգվածային մասնակցության համակարգերի ձևավորում:'),
(21,3,'ru','title','Юридическая поддержка в Армении'),
(22,3,'ru','li1','Консультации по выбору правовой формы ведения бизнеса.'),
(23,3,'ru','li2','Открытие и регистрация юридического лица.'),
(24,3,'ru','li3','Формировании систем массового участия.');

/*Table structure for table `cont` */

DROP TABLE IF EXISTS `cont`;

CREATE TABLE `cont` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `input` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `input2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `input3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `input4` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `input5` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `messege` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `btn` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `cont` */

insert  into `cont`(`id`,`input`,`input2`,`input3`,`input4`,`input5`,`messege`,`btn`) values 
(1,'Email Address...','Name','Address','City','State','Message','Send Message');

/*Table structure for table `cont_translation` */

DROP TABLE IF EXISTS `cont_translation`;

CREATE TABLE `cont_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cont_translation_idx` (`locale`,`object_id`,`field`),
  KEY `IDX_468E091B232D562B` (`object_id`),
  CONSTRAINT `FK_468E091B232D562B` FOREIGN KEY (`object_id`) REFERENCES `cont` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `cont_translation` */

insert  into `cont_translation`(`id`,`object_id`,`locale`,`field`,`content`) values 
(1,1,'ru','input','Электронная Почта'),
(2,1,'ru','input2','Ваше Имя'),
(3,1,'ru','input3','Ваш Адрес'),
(4,1,'ru','input4','Ваш Город'),
(5,1,'ru','input5','Ваша Страна'),
(6,1,'ru','messege','Сообщение'),
(7,1,'ru','btn','Отправить Сообщение'),
(8,1,'am','input','Ձեր էլ. Փոստի հասցեն'),
(9,1,'am','input2','Ձեր Անունը'),
(10,1,'am','input3','Ձեր Հասցեն'),
(11,1,'am','input4','Ձեր Քաղաքը'),
(12,1,'am','input5','Ձեր Երկիրը'),
(13,1,'am','messege','Հաղորդագրություն'),
(14,1,'am','btn','Ուղարկել Հաղորդագրություն');

/*Table structure for table `contact` */

DROP TABLE IF EXISTS `contact`;

CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_category_id` int(11) DEFAULT NULL,
  `is_top` tinyint(1) NOT NULL,
  `contact_order` int(11) NOT NULL,
  `contact_data` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_4C62E6387CEA225C` (`contact_category_id`),
  CONSTRAINT `FK_4C62E6387CEA225C` FOREIGN KEY (`contact_category_id`) REFERENCES `contact_category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `contact` */

/*Table structure for table `contact_category` */

DROP TABLE IF EXISTS `contact_category`;

CREATE TABLE `contact_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_top` tinyint(1) NOT NULL,
  `contact_category_order` int(11) NOT NULL,
  `contact_category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `contact_category` */

/*Table structure for table `footer` */

DROP TABLE IF EXISTS `footer`;

CREATE TABLE `footer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `footer` */

insert  into `footer`(`id`,`tel`,`mail`,`address`) values 
(1,'91 48 56 85','tachat@mail.ru','Yerevan Armenia Lawyer Services');

/*Table structure for table `footer_translation` */

DROP TABLE IF EXISTS `footer_translation`;

CREATE TABLE `footer_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `footer_translation_idx` (`locale`,`object_id`,`field`),
  KEY `IDX_43979344232D562B` (`object_id`),
  CONSTRAINT `FK_43979344232D562B` FOREIGN KEY (`object_id`) REFERENCES `footer` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `footer_translation` */

insert  into `footer_translation`(`id`,`object_id`,`locale`,`field`,`content`) values 
(1,1,'ru','address','Ереван Армения Услуги Адвоката'),
(2,1,'am','address','Երևանում Իրավաբանի Ծառայություններ.');

/*Table structure for table `fos_user` */

DROP TABLE IF EXISTS `fos_user`;

CREATE TABLE `fos_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`),
  UNIQUE KEY `UNIQ_957A6479C05FB297` (`confirmation_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `fos_user` */

insert  into `fos_user`(`id`,`username`,`username_canonical`,`email`,`email_canonical`,`enabled`,`salt`,`password`,`last_login`,`confirmation_token`,`password_requested_at`,`roles`) values 
(1,'admin','admin','admin@mail.ru','admin@mail.ru',1,NULL,'$2y$13$tPP0b5xiaxwOSBYtcUgYpOYcV6Ea7hxrAJocuhQl2m4Y/wR0W.dMK','2020-02-05 14:22:08',NULL,NULL,'a:1:{i:0;s:16:\"ROLE_SUPER_ADMIN\";}');

/*Table structure for table `mail` */

DROP TABLE IF EXISTS `mail`;

CREATE TABLE `mail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `main_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `mail` */

insert  into `mail`(`id`,`main_email`) values 
(1,'arman@mail.ru');

/*Table structure for table `navbar` */

DROP TABLE IF EXISTS `navbar`;

CREATE TABLE `navbar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `navbar` */

insert  into `navbar`(`id`,`text`,`link`) values 
(1,'Home','homepage'),
(2,'Services','service'),
(3,'News','news'),
(4,'About','about'),
(5,'Our Team','team'),
(6,'Contact','contact');

/*Table structure for table `navbar_ru` */

DROP TABLE IF EXISTS `navbar_ru`;

CREATE TABLE `navbar_ru` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `navbar_ru` */

/*Table structure for table `navbar_translation` */

DROP TABLE IF EXISTS `navbar_translation`;

CREATE TABLE `navbar_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `navbar_translation_idx` (`locale`,`object_id`,`field`),
  KEY `IDX_518A3138232D562B` (`object_id`),
  CONSTRAINT `FK_518A3138232D562B` FOREIGN KEY (`object_id`) REFERENCES `navbar` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `navbar_translation` */

insert  into `navbar_translation`(`id`,`object_id`,`locale`,`field`,`content`) values 
(1,1,'ru','text','Главная'),
(2,1,'am','text','Գլխավոր'),
(3,2,'ru','text','Сервисы'),
(4,2,'am','text','Ծառայություններ'),
(5,3,'ru','text','Новости'),
(6,3,'am','text','Նորություններ'),
(7,4,'ru','text','О Нас'),
(8,4,'am','text','Մեր Մասին'),
(9,5,'ru','text','Օ Команде'),
(10,5,'am','text','Մեր Թիմը'),
(11,6,'ru','text','Связаться с нами'),
(12,6,'am','text','Հետադարձ Կապ');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `btn` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `news` */

insert  into `news`(`id`,`img`,`title`,`text`,`btn`,`img2`,`img3`) values 
(1,'/img/nws.jpg','1orem ipsum dolor sit news','Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. onsectetur maiores. Lorem ipsum dolor Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem iponsectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolorLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores.','Read More','/img/ankap.jpg','/img/about.jpg'),
(2,'/img/nws.jpg','2orem ipsum dolor sit news','Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. onsectetur maiores. Lorem ipsum dolor Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem iponsectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolorLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores.','Read More','/img/ankap.jpg','/img/about.jpg'),
(3,'/img/nws.jpg','3orem ipsum dolor sit news','Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. onsectetur maiores. Lorem ipsum dolor Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem iponsectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolorLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores.','Read More','/img/ankap.jpg','/img/about.jpg'),
(4,'/img/nws.jpg','4orem ipsum dolor sit news','Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. onsectetur maiores. Lorem ipsum dolor Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem iponsectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolorLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores.','Read More','/img/ankap.jpg','/img/about.jpg'),
(5,'/img/nws.jpg','5orem ipsum dolor sit news','Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. onsectetur maiores. Lorem ipsum dolor Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem iponsectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolorLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores.','Read More','/img/ankap.jpg','/img/about.jpg'),
(6,'/img/nws.jpg','6orem ipsum dolor sit news','Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. onsectetur maiores. Lorem ipsum dolor Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem iponsectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolorLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores.','Read More','/img/ankap.jpg','/img/about.jpg');

/*Table structure for table `news_translation` */

DROP TABLE IF EXISTS `news_translation`;

CREATE TABLE `news_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `news_translation_idx` (`locale`,`object_id`,`field`),
  KEY `IDX_9D5CF320232D562B` (`object_id`),
  CONSTRAINT `FK_9D5CF320232D562B` FOREIGN KEY (`object_id`) REFERENCES `news` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `news_translation` */

insert  into `news_translation`(`id`,`object_id`,`locale`,`field`,`content`) values 
(1,1,'ru','title','Равным образом новост!'),
(2,1,'ru','text','Идейные соображения высшего порядка, а также укрепление и развитие структуры позволяет выполнять важные задания по разработке новых предложений. Не следует, однако забывать, что консультация с широким активом позволяет выполнять важные задания по разработке дальнейших направлений развития. С другой стороны дальнейшее развитие различных форм деятельности позволяет оценить значение дальнейших направлений развития. Равным образом консультация с широким активом играет важную роль в формировании форм развития. Разнообразный и богатый опыт рамки и место обучения кадров играет важную роль в формировании систем массового участия. Товарищи! постоянный количественный рост и сфера нашей активности обеспечивает широкому кругу (специалистов) участие в формировании систем массового участия.\r\n\r\nРазнообразный и богатый опыт рамки и место обучения кадров влечет за собой процесс внедрения и модернизации дальнейших направлений развития. Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности играет важную роль в формировании форм развития.Идейные соображения высшего порядка, а также укрепление и развитие структуры позволяет выполнять важные задания по разработке новых предложений. Не следует, однако забывать, что консультация с широким активом позволяет выполнять важные задания по разработке дальнейших направлений развития. С другой стороны дальнейшее развитие различных форм деятельности позволяет оценить значение дальнейших направлений развития. Равным образом консультация с широким активом играет важную роль в формировании форм развития. Разнообразный и богатый опыт рамки и место обучения кадров играет важную роль в формировании систем массового участия. Товарищи! постоянный количественный рост и сфера нашей активности обеспечивает широкому кругу (специалистов) участие в формировании систем массового участия.\r\n\r\nРазнообразный и богатый опыт рамки и место обучения кадров влечет за собой процесс внедрения и модернизации дальнейших направлений развития. Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности играет важную роль в формировании форм развития.'),
(3,1,'ru','btn','Подробнее'),
(4,1,'am','title','Նմանապես, նոր մոդելը:'),
(5,1,'am','text','Բարձր մակարդակի գաղափարական նկատառումները, ինչպես նաև կառուցվածքի ամրապնդումն ու զարգացումը մեզ թույլ են տալիս իրականացնել կարևոր առաջադրանքներ նոր առաջարկների մշակման գործում: Այնուամենայնիվ, չպետք է մոռանալ, որ լայն ակտիվի հետ խորհրդակցելը թույլ է տալիս իրականացնել կարևոր առաջադրանքներ ՝ զարգացման հետագա ոլորտները զարգացնելու համար: Մյուս կողմից, գործունեության տարբեր ձևերի հետագա զարգացումը մեզ թույլ է տալիս գնահատել զարգացման հետագա ուղղությունների նշանակությունը: Նմանապես, լայն ակտիվի հետ խորհրդակցությունը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում: Շրջանակների և վերապատրաստման վայրի բազմազան և հարուստ փորձը կարևոր դեր է խաղում զանգվածային մասնակցության համակարգերի ձևավորման գործում: Ընկերներ: մշտական ​​քանակական աճը և մեր գործունեության շրջանակը ապահովում են զանգվածային մասնակցության համակարգերի ձևավորմանը մասնակցության լայն շրջանակ (մասնագետներ):\r\n\r\nՇրջանակի բազմազան և հարուստ փորձը և կադրերի պատրաստման վայրը ենթադրում են զարգացման հետագա ոլորտների իրականացման և արդիականացման գործընթաց: Մշտական ​​քանակական աճի բազմազան և հարուստ փորձ և մեր գործունեության ոլորտը կարևոր դեր են խաղում զարգացման ձևերի ձևավորման գործում: Բարձրագույն կարգի իդեալական նկատառումները, ինչպես նաև կառուցվածքի ամրապնդումն ու զարգացումը մեզ թույլ են տալիս իրականացնել կարևոր առաջադրանքներ նոր առաջարկների մշակման գործում: Այնուամենայնիվ, չպետք է մոռանալ, որ լայն ակտիվի հետ խորհրդակցելը թույլ է տալիս իրականացնել կարևոր առաջադրանքներ ՝ զարգացման հետագա ոլորտները զարգացնելու համար: Մյուս կողմից, գործունեության տարբեր ձևերի հետագա զարգացումը մեզ թույլ է տալիս գնահատել զարգացման հետագա ուղղությունների նշանակությունը: Նմանապես, լայն ակտիվի հետ խորհրդակցությունը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում: Շրջանակների և վերապատրաստման վայրի բազմազան և հարուստ փորձը կարևոր դեր է խաղում զանգվածային մասնակցության համակարգերի ձևավորման գործում: Ընկերներ: մշտական ​​քանակական աճը և մեր գործունեության շրջանակը ապահովում են զանգվածային մասնակցության համակարգերի ձևավորմանը մասնակցության լայն շրջանակ (մասնագետներ):\r\n\r\nՇրջանակի բազմազան և հարուստ փորձը և կադրերի պատրաստման վայրը ենթադրում են զարգացման հետագա ոլորտների իրականացման և արդիականացման գործընթաց: Մշտական ​​քանակական աճի բազմազան և հարուստ փորձ և մեր գործունեության շրջանակը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում:'),
(6,1,'am','btn','Մանրամասն'),
(7,2,'am','title','2 : Նմանապես, նոր մոդելը:'),
(8,2,'am','text','Բարձր մակարդակի գաղափարական նկատառումները, ինչպես նաև կառուցվածքի ամրապնդումն ու զարգացումը մեզ թույլ են տալիս իրականացնել կարևոր առաջադրանքներ նոր առաջարկների մշակման գործում: Այնուամենայնիվ, չպետք է մոռանալ, որ լայն ակտիվի հետ խորհրդակցելը թույլ է տալիս իրականացնել կարևոր առաջադրանքներ ՝ զարգացման հետագա ոլորտները զարգացնելու համար: Մյուս կողմից, գործունեության տարբեր ձևերի հետագա զարգացումը մեզ թույլ է տալիս գնահատել զարգացման հետագա ուղղությունների նշանակությունը: Նմանապես, լայն ակտիվի հետ խորհրդակցությունը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում: Շրջանակների և վերապատրաստման վայրի բազմազան և հարուստ փորձը կարևոր դեր է խաղում զանգվածային մասնակցության համակարգերի ձևավորման գործում: Ընկերներ: մշտական ​​քանակական աճը և մեր գործունեության շրջանակը ապահովում են զանգվածային մասնակցության համակարգերի ձևավորմանը մասնակցության լայն շրջանակ (մասնագետներ):\r\n\r\nՇրջանակի բազմազան և հարուստ փորձը և կադրերի պատրաստման վայրը ենթադրում են զարգացման հետագա ոլորտների իրականացման և արդիականացման գործընթաց: Մշտական ​​քանակական աճի բազմազան և հարուստ փորձ և մեր գործունեության ոլորտը կարևոր դեր են խաղում զարգացման ձևերի ձևավորման գործում: Բարձրագույն կարգի իդեալական նկատառումները, ինչպես նաև կառուցվածքի ամրապնդումն ու զարգացումը մեզ թույլ են տալիս իրականացնել կարևոր առաջադրանքներ նոր առաջարկների մշակման գործում: Այնուամենայնիվ, չպետք է մոռանալ, որ լայն ակտիվի հետ խորհրդակցելը թույլ է տալիս իրականացնել կարևոր առաջադրանքներ ՝ զարգացման հետագա ոլորտները զարգացնելու համար: Մյուս կողմից, գործունեության տարբեր ձևերի հետագա զարգացումը մեզ թույլ է տալիս գնահատել զարգացման հետագա ուղղությունների նշանակությունը: Նմանապես, լայն ակտիվի հետ խորհրդակցությունը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում: Շրջանակների և վերապատրաստման վայրի բազմազան և հարուստ փորձը կարևոր դեր է խաղում զանգվածային մասնակցության համակարգերի ձևավորման գործում: Ընկերներ: մշտական ​​քանակական աճը և մեր գործունեության շրջանակը ապահովում են զանգվածային մասնակցության համակարգերի ձևավորմանը մասնակցության լայն շրջանակ (մասնագետներ):\r\n\r\nՇրջանակի բազմազան և հարուստ փորձը և կադրերի պատրաստման վայրը ենթադրում են զարգացման հետագա ոլորտների իրականացման և արդիականացման գործընթաց: Մշտական ​​քանակական աճի բազմազան և հարուստ փորձ և մեր գործունեության շրջանակը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում:'),
(9,2,'am','btn','Մանրամասն'),
(10,2,'ru','title','2 ։ Равным образом новост!'),
(11,2,'ru','text','Идейные соображения высшего порядка, а также укрепление и развитие структуры позволяет выполнять важные задания по разработке новых предложений. Не следует, однако забывать, что консультация с широким активом позволяет выполнять важные задания по разработке дальнейших направлений развития. С другой стороны дальнейшее развитие различных форм деятельности позволяет оценить значение дальнейших направлений развития. Равным образом консультация с широким активом играет важную роль в формировании форм развития. Разнообразный и богатый опыт рамки и место обучения кадров играет важную роль в формировании систем массового участия. Товарищи! постоянный количественный рост и сфера нашей активности обеспечивает широкому кругу (специалистов) участие в формировании систем массового участия.\r\n\r\nРазнообразный и богатый опыт рамки и место обучения кадров влечет за собой процесс внедрения и модернизации дальнейших направлений развития. Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности играет важную роль в формировании форм развития.Идейные соображения высшего порядка, а также укрепление и развитие структуры позволяет выполнять важные задания по разработке новых предложений. Не следует, однако забывать, что консультация с широким активом позволяет выполнять важные задания по разработке дальнейших направлений развития. С другой стороны дальнейшее развитие различных форм деятельности позволяет оценить значение дальнейших направлений развития. Равным образом консультация с широким активом играет важную роль в формировании форм развития. Разнообразный и богатый опыт рамки и место обучения кадров играет важную роль в формировании систем массового участия. Товарищи! постоянный количественный рост и сфера нашей активности обеспечивает широкому кругу (специалистов) участие в формировании систем массового участия.\r\n\r\nРазнообразный и богатый опыт рамки и место обучения кадров влечет за собой процесс внедрения и модернизации дальнейших направлений развития. Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности играет важную роль в формировании форм развития.'),
(12,2,'ru','btn','Подробнее'),
(13,3,'ru','title','3 ։ Равным образом новост!'),
(14,3,'ru','text','Идейные соображения высшего порядка, а также укрепление и развитие структуры позволяет выполнять важные задания по разработке новых предложений. Не следует, однако забывать, что консультация с широким активом позволяет выполнять важные задания по разработке дальнейших направлений развития. С другой стороны дальнейшее развитие различных форм деятельности позволяет оценить значение дальнейших направлений развития. Равным образом консультация с широким активом играет важную роль в формировании форм развития. Разнообразный и богатый опыт рамки и место обучения кадров играет важную роль в формировании систем массового участия. Товарищи! постоянный количественный рост и сфера нашей активности обеспечивает широкому кругу (специалистов) участие в формировании систем массового участия.\r\n\r\nРазнообразный и богатый опыт рамки и место обучения кадров влечет за собой процесс внедрения и модернизации дальнейших направлений развития. Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности играет важную роль в формировании форм развития.Идейные соображения высшего порядка, а также укрепление и развитие структуры позволяет выполнять важные задания по разработке новых предложений. Не следует, однако забывать, что консультация с широким активом позволяет выполнять важные задания по разработке дальнейших направлений развития. С другой стороны дальнейшее развитие различных форм деятельности позволяет оценить значение дальнейших направлений развития. Равным образом консультация с широким активом играет важную роль в формировании форм развития. Разнообразный и богатый опыт рамки и место обучения кадров играет важную роль в формировании систем массового участия. Товарищи! постоянный количественный рост и сфера нашей активности обеспечивает широкому кругу (специалистов) участие в формировании систем массового участия.\r\n\r\nРазнообразный и богатый опыт рамки и место обучения кадров влечет за собой процесс внедрения и модернизации дальнейших направлений развития. Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности играет важную роль в формировании форм развития.'),
(15,3,'ru','btn','Подробнее'),
(16,4,'ru','title','4 ։ Равным образом новост!'),
(17,4,'ru','text','Идейные соображения высшего порядка, а также укрепление и развитие структуры позволяет выполнять важные задания по разработке новых предложений. Не следует, однако забывать, что консультация с широким активом позволяет выполнять важные задания по разработке дальнейших направлений развития. С другой стороны дальнейшее развитие различных форм деятельности позволяет оценить значение дальнейших направлений развития. Равным образом консультация с широким активом играет важную роль в формировании форм развития. Разнообразный и богатый опыт рамки и место обучения кадров играет важную роль в формировании систем массового участия. Товарищи! постоянный количественный рост и сфера нашей активности обеспечивает широкому кругу (специалистов) участие в формировании систем массового участия.\r\n\r\nРазнообразный и богатый опыт рамки и место обучения кадров влечет за собой процесс внедрения и модернизации дальнейших направлений развития. Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности играет важную роль в формировании форм развития.Идейные соображения высшего порядка, а также укрепление и развитие структуры позволяет выполнять важные задания по разработке новых предложений. Не следует, однако забывать, что консультация с широким активом позволяет выполнять важные задания по разработке дальнейших направлений развития. С другой стороны дальнейшее развитие различных форм деятельности позволяет оценить значение дальнейших направлений развития. Равным образом консультация с широким активом играет важную роль в формировании форм развития. Разнообразный и богатый опыт рамки и место обучения кадров играет важную роль в формировании систем массового участия. Товарищи! постоянный количественный рост и сфера нашей активности обеспечивает широкому кругу (специалистов) участие в формировании систем массового участия.\r\n\r\nРазнообразный и богатый опыт рамки и место обучения кадров влечет за собой процесс внедрения и модернизации дальнейших направлений развития. Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности играет важную роль в формировании форм развития.'),
(18,4,'ru','btn','Подробнее'),
(19,5,'ru','title','5 ։ Равным образом новост!'),
(20,5,'ru','text','Идейные соображения высшего порядка, а также укрепление и развитие структуры позволяет выполнять важные задания по разработке новых предложений. Не следует, однако забывать, что консультация с широким активом позволяет выполнять важные задания по разработке дальнейших направлений развития. С другой стороны дальнейшее развитие различных форм деятельности позволяет оценить значение дальнейших направлений развития. Равным образом консультация с широким активом играет важную роль в формировании форм развития. Разнообразный и богатый опыт рамки и место обучения кадров играет важную роль в формировании систем массового участия. Товарищи! постоянный количественный рост и сфера нашей активности обеспечивает широкому кругу (специалистов) участие в формировании систем массового участия.\r\n\r\nРазнообразный и богатый опыт рамки и место обучения кадров влечет за собой процесс внедрения и модернизации дальнейших направлений развития. Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности играет важную роль в формировании форм развития.Идейные соображения высшего порядка, а также укрепление и развитие структуры позволяет выполнять важные задания по разработке новых предложений. Не следует, однако забывать, что консультация с широким активом позволяет выполнять важные задания по разработке дальнейших направлений развития. С другой стороны дальнейшее развитие различных форм деятельности позволяет оценить значение дальнейших направлений развития. Равным образом консультация с широким активом играет важную роль в формировании форм развития. Разнообразный и богатый опыт рамки и место обучения кадров играет важную роль в формировании систем массового участия. Товарищи! постоянный количественный рост и сфера нашей активности обеспечивает широкому кругу (специалистов) участие в формировании систем массового участия.\r\n\r\nРазнообразный и богатый опыт рамки и место обучения кадров влечет за собой процесс внедрения и модернизации дальнейших направлений развития. Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности играет важную роль в формировании форм развития.'),
(21,5,'ru','btn','Подробнее'),
(22,6,'ru','title','6 ։ Равным образом новост!'),
(23,6,'ru','text','Идейные соображения высшего порядка, а также укрепление и развитие структуры позволяет выполнять важные задания по разработке новых предложений. Не следует, однако забывать, что консультация с широким активом позволяет выполнять важные задания по разработке дальнейших направлений развития. С другой стороны дальнейшее развитие различных форм деятельности позволяет оценить значение дальнейших направлений развития. Равным образом консультация с широким активом играет важную роль в формировании форм развития. Разнообразный и богатый опыт рамки и место обучения кадров играет важную роль в формировании систем массового участия. Товарищи! постоянный количественный рост и сфера нашей активности обеспечивает широкому кругу (специалистов) участие в формировании систем массового участия.\r\n\r\nРазнообразный и богатый опыт рамки и место обучения кадров влечет за собой процесс внедрения и модернизации дальнейших направлений развития. Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности играет важную роль в формировании форм развития.Идейные соображения высшего порядка, а также укрепление и развитие структуры позволяет выполнять важные задания по разработке новых предложений. Не следует, однако забывать, что консультация с широким активом позволяет выполнять важные задания по разработке дальнейших направлений развития. С другой стороны дальнейшее развитие различных форм деятельности позволяет оценить значение дальнейших направлений развития. Равным образом консультация с широким активом играет важную роль в формировании форм развития. Разнообразный и богатый опыт рамки и место обучения кадров играет важную роль в формировании систем массового участия. Товарищи! постоянный количественный рост и сфера нашей активности обеспечивает широкому кругу (специалистов) участие в формировании систем массового участия.\r\n\r\nРазнообразный и богатый опыт рамки и место обучения кадров влечет за собой процесс внедрения и модернизации дальнейших направлений развития. Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности играет важную роль в формировании форм развития.'),
(24,6,'ru','btn','Подробнее'),
(25,3,'am','title','3 : Նմանապես, նոր մոդելը:'),
(26,3,'am','text','Բարձր մակարդակի գաղափարական նկատառումները, ինչպես նաև կառուցվածքի ամրապնդումն ու զարգացումը մեզ թույլ են տալիս իրականացնել կարևոր առաջադրանքներ նոր առաջարկների մշակման գործում: Այնուամենայնիվ, չպետք է մոռանալ, որ լայն ակտիվի հետ խորհրդակցելը թույլ է տալիս իրականացնել կարևոր առաջադրանքներ ՝ զարգացման հետագա ոլորտները զարգացնելու համար: Մյուս կողմից, գործունեության տարբեր ձևերի հետագա զարգացումը մեզ թույլ է տալիս գնահատել զարգացման հետագա ուղղությունների նշանակությունը: Նմանապես, լայն ակտիվի հետ խորհրդակցությունը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում: Շրջանակների և վերապատրաստման վայրի բազմազան և հարուստ փորձը կարևոր դեր է խաղում զանգվածային մասնակցության համակարգերի ձևավորման գործում: Ընկերներ: մշտական ​​քանակական աճը և մեր գործունեության շրջանակը ապահովում են զանգվածային մասնակցության համակարգերի ձևավորմանը մասնակցության լայն շրջանակ (մասնագետներ):\r\n\r\nՇրջանակի բազմազան և հարուստ փորձը և կադրերի պատրաստման վայրը ենթադրում են զարգացման հետագա ոլորտների իրականացման և արդիականացման գործընթաց: Մշտական ​​քանակական աճի բազմազան և հարուստ փորձ և մեր գործունեության ոլորտը կարևոր դեր են խաղում զարգացման ձևերի ձևավորման գործում: Բարձրագույն կարգի իդեալական նկատառումները, ինչպես նաև կառուցվածքի ամրապնդումն ու զարգացումը մեզ թույլ են տալիս իրականացնել կարևոր առաջադրանքներ նոր առաջարկների մշակման գործում: Այնուամենայնիվ, չպետք է մոռանալ, որ լայն ակտիվի հետ խորհրդակցելը թույլ է տալիս իրականացնել կարևոր առաջադրանքներ ՝ զարգացման հետագա ոլորտները զարգացնելու համար: Մյուս կողմից, գործունեության տարբեր ձևերի հետագա զարգացումը մեզ թույլ է տալիս գնահատել զարգացման հետագա ուղղությունների նշանակությունը: Նմանապես, լայն ակտիվի հետ խորհրդակցությունը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում: Շրջանակների և վերապատրաստման վայրի բազմազան և հարուստ փորձը կարևոր դեր է խաղում զանգվածային մասնակցության համակարգերի ձևավորման գործում: Ընկերներ: մշտական ​​քանակական աճը և մեր գործունեության շրջանակը ապահովում են զանգվածային մասնակցության համակարգերի ձևավորմանը մասնակցության լայն շրջանակ (մասնագետներ):\r\n\r\nՇրջանակի բազմազան և հարուստ փորձը և կադրերի պատրաստման վայրը ենթադրում են զարգացման հետագա ոլորտների իրականացման և արդիականացման գործընթաց: Մշտական ​​քանակական աճի բազմազան և հարուստ փորձ և մեր գործունեության շրջանակը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում:'),
(27,3,'am','btn','Մանրամասն'),
(28,4,'am','title','4 : Նմանապես, նոր մոդելը:'),
(29,4,'am','text','Բարձր մակարդակի գաղափարական նկատառումները, ինչպես նաև կառուցվածքի ամրապնդումն ու զարգացումը մեզ թույլ են տալիս իրականացնել կարևոր առաջադրանքներ նոր առաջարկների մշակման գործում: Այնուամենայնիվ, չպետք է մոռանալ, որ լայն ակտիվի հետ խորհրդակցելը թույլ է տալիս իրականացնել կարևոր առաջադրանքներ ՝ զարգացման հետագա ոլորտները զարգացնելու համար: Մյուս կողմից, գործունեության տարբեր ձևերի հետագա զարգացումը մեզ թույլ է տալիս գնահատել զարգացման հետագա ուղղությունների նշանակությունը: Նմանապես, լայն ակտիվի հետ խորհրդակցությունը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում: Շրջանակների և վերապատրաստման վայրի բազմազան և հարուստ փորձը կարևոր դեր է խաղում զանգվածային մասնակցության համակարգերի ձևավորման գործում: Ընկերներ: մշտական ​​քանակական աճը և մեր գործունեության շրջանակը ապահովում են զանգվածային մասնակցության համակարգերի ձևավորմանը մասնակցության լայն շրջանակ (մասնագետներ):\r\n\r\nՇրջանակի բազմազան և հարուստ փորձը և կադրերի պատրաստման վայրը ենթադրում են զարգացման հետագա ոլորտների իրականացման և արդիականացման գործընթաց: Մշտական ​​քանակական աճի բազմազան և հարուստ փորձ և մեր գործունեության ոլորտը կարևոր դեր են խաղում զարգացման ձևերի ձևավորման գործում: Բարձրագույն կարգի իդեալական նկատառումները, ինչպես նաև կառուցվածքի ամրապնդումն ու զարգացումը մեզ թույլ են տալիս իրականացնել կարևոր առաջադրանքներ նոր առաջարկների մշակման գործում: Այնուամենայնիվ, չպետք է մոռանալ, որ լայն ակտիվի հետ խորհրդակցելը թույլ է տալիս իրականացնել կարևոր առաջադրանքներ ՝ զարգացման հետագա ոլորտները զարգացնելու համար: Մյուս կողմից, գործունեության տարբեր ձևերի հետագա զարգացումը մեզ թույլ է տալիս գնահատել զարգացման հետագա ուղղությունների նշանակությունը: Նմանապես, լայն ակտիվի հետ խորհրդակցությունը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում: Շրջանակների և վերապատրաստման վայրի բազմազան և հարուստ փորձը կարևոր դեր է խաղում զանգվածային մասնակցության համակարգերի ձևավորման գործում: Ընկերներ: մշտական ​​քանակական աճը և մեր գործունեության շրջանակը ապահովում են զանգվածային մասնակցության համակարգերի ձևավորմանը մասնակցության լայն շրջանակ (մասնագետներ):\r\n\r\nՇրջանակի բազմազան և հարուստ փորձը և կադրերի պատրաստման վայրը ենթադրում են զարգացման հետագա ոլորտների իրականացման և արդիականացման գործընթաց: Մշտական ​​քանակական աճի բազմազան և հարուստ փորձ և մեր գործունեության շրջանակը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում:'),
(30,4,'am','btn','Մանրամասն'),
(31,5,'am','title','5 : Նմանապես, նոր մոդելը:'),
(32,5,'am','text','Բարձր մակարդակի գաղափարական նկատառումները, ինչպես նաև կառուցվածքի ամրապնդումն ու զարգացումը մեզ թույլ են տալիս իրականացնել կարևոր առաջադրանքներ նոր առաջարկների մշակման գործում: Այնուամենայնիվ, չպետք է մոռանալ, որ լայն ակտիվի հետ խորհրդակցելը թույլ է տալիս իրականացնել կարևոր առաջադրանքներ ՝ զարգացման հետագա ոլորտները զարգացնելու համար: Մյուս կողմից, գործունեության տարբեր ձևերի հետագա զարգացումը մեզ թույլ է տալիս գնահատել զարգացման հետագա ուղղությունների նշանակությունը: Նմանապես, լայն ակտիվի հետ խորհրդակցությունը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում: Շրջանակների և վերապատրաստման վայրի բազմազան և հարուստ փորձը կարևոր դեր է խաղում զանգվածային մասնակցության համակարգերի ձևավորման գործում: Ընկերներ: մշտական ​​քանակական աճը և մեր գործունեության շրջանակը ապահովում են զանգվածային մասնակցության համակարգերի ձևավորմանը մասնակցության լայն շրջանակ (մասնագետներ):\r\n\r\nՇրջանակի բազմազան և հարուստ փորձը և կադրերի պատրաստման վայրը ենթադրում են զարգացման հետագա ոլորտների իրականացման և արդիականացման գործընթաց: Մշտական ​​քանակական աճի բազմազան և հարուստ փորձ և մեր գործունեության ոլորտը կարևոր դեր են խաղում զարգացման ձևերի ձևավորման գործում: Բարձրագույն կարգի իդեալական նկատառումները, ինչպես նաև կառուցվածքի ամրապնդումն ու զարգացումը մեզ թույլ են տալիս իրականացնել կարևոր առաջադրանքներ նոր առաջարկների մշակման գործում: Այնուամենայնիվ, չպետք է մոռանալ, որ լայն ակտիվի հետ խորհրդակցելը թույլ է տալիս իրականացնել կարևոր առաջադրանքներ ՝ զարգացման հետագա ոլորտները զարգացնելու համար: Մյուս կողմից, գործունեության տարբեր ձևերի հետագա զարգացումը մեզ թույլ է տալիս գնահատել զարգացման հետագա ուղղությունների նշանակությունը: Նմանապես, լայն ակտիվի հետ խորհրդակցությունը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում: Շրջանակների և վերապատրաստման վայրի բազմազան և հարուստ փորձը կարևոր դեր է խաղում զանգվածային մասնակցության համակարգերի ձևավորման գործում: Ընկերներ: մշտական ​​քանակական աճը և մեր գործունեության շրջանակը ապահովում են զանգվածային մասնակցության համակարգերի ձևավորմանը մասնակցության լայն շրջանակ (մասնագետներ):\r\n\r\nՇրջանակի բազմազան և հարուստ փորձը և կադրերի պատրաստման վայրը ենթադրում են զարգացման հետագա ոլորտների իրականացման և արդիականացման գործընթաց: Մշտական ​​քանակական աճի բազմազան և հարուստ փորձ և մեր գործունեության շրջանակը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում:'),
(33,5,'am','btn','Մանրամասն'),
(34,6,'am','title','6 : Նմանապես, նոր մոդելը:'),
(35,6,'am','text','Բարձր մակարդակի գաղափարական նկատառումները, ինչպես նաև կառուցվածքի ամրապնդումն ու զարգացումը մեզ թույլ են տալիս իրականացնել կարևոր առաջադրանքներ նոր առաջարկների մշակման գործում: Այնուամենայնիվ, չպետք է մոռանալ, որ լայն ակտիվի հետ խորհրդակցելը թույլ է տալիս իրականացնել կարևոր առաջադրանքներ ՝ զարգացման հետագա ոլորտները զարգացնելու համար: Մյուս կողմից, գործունեության տարբեր ձևերի հետագա զարգացումը մեզ թույլ է տալիս գնահատել զարգացման հետագա ուղղությունների նշանակությունը: Նմանապես, լայն ակտիվի հետ խորհրդակցությունը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում: Շրջանակների և վերապատրաստման վայրի բազմազան և հարուստ փորձը կարևոր դեր է խաղում զանգվածային մասնակցության համակարգերի ձևավորման գործում: Ընկերներ: մշտական ​​քանակական աճը և մեր գործունեության շրջանակը ապահովում են զանգվածային մասնակցության համակարգերի ձևավորմանը մասնակցության լայն շրջանակ (մասնագետներ):\r\n\r\nՇրջանակի բազմազան և հարուստ փորձը և կադրերի պատրաստման վայրը ենթադրում են զարգացման հետագա ոլորտների իրականացման և արդիականացման գործընթաց: Մշտական ​​քանակական աճի բազմազան և հարուստ փորձ և մեր գործունեության ոլորտը կարևոր դեր են խաղում զարգացման ձևերի ձևավորման գործում: Բարձրագույն կարգի իդեալական նկատառումները, ինչպես նաև կառուցվածքի ամրապնդումն ու զարգացումը մեզ թույլ են տալիս իրականացնել կարևոր առաջադրանքներ նոր առաջարկների մշակման գործում: Այնուամենայնիվ, չպետք է մոռանալ, որ լայն ակտիվի հետ խորհրդակցելը թույլ է տալիս իրականացնել կարևոր առաջադրանքներ ՝ զարգացման հետագա ոլորտները զարգացնելու համար: Մյուս կողմից, գործունեության տարբեր ձևերի հետագա զարգացումը մեզ թույլ է տալիս գնահատել զարգացման հետագա ուղղությունների նշանակությունը: Նմանապես, լայն ակտիվի հետ խորհրդակցությունը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում: Շրջանակների և վերապատրաստման վայրի բազմազան և հարուստ փորձը կարևոր դեր է խաղում զանգվածային մասնակցության համակարգերի ձևավորման գործում: Ընկերներ: մշտական ​​քանակական աճը և մեր գործունեության շրջանակը ապահովում են զանգվածային մասնակցության համակարգերի ձևավորմանը մասնակցության լայն շրջանակ (մասնագետներ):\r\n\r\nՇրջանակի բազմազան և հարուստ փորձը և կադրերի պատրաստման վայրը ենթադրում են զարգացման հետագա ոլորտների իրականացման և արդիականացման գործընթաց: Մշտական ​​քանակական աճի բազմազան և հարուստ փորձ և մեր գործունեության շրջանակը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում:'),
(36,6,'am','btn','Մանրամասն');

/*Table structure for table `page` */

DROP TABLE IF EXISTS `page`;

CREATE TABLE `page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `page_short_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `page_text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `page_og_image` longtext COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `page` */

insert  into `page`(`id`,`page_title`,`page_short_text`,`page_text`,`page_og_image`,`meta_keywords`,`meta_description`,`created_at`) values 
(2,'Our Services','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores, dolorum.','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores, dolorum.</p>','/img//sev.jpg','Keywords','Description','2019-12-06 11:19:39'),
(3,'News','Lorem insput Lorem insputLorem inspu insputLorem insput','<h2>Lorem insput Lorem insputLorem inspu insputLorem insput</h2>','/img//new-bg.jpg','Keywords','Description','2019-12-06 11:29:37'),
(4,'About','Lorem insput Lorem insputLorem inspu insputLorem insput','<p>Lorem insput Lorem insputLorem inspu insputLorem insput</p>','/img//car-bg.jpg','Keywords','Description','2019-12-06 11:32:15'),
(5,'Contact','Lorem insput Lorem insputLorem inspu insputLorem insput','<p>Lorem insput Lorem insputLorem inspu insputLorem insput</p>','/img//cont-bg.jpg','Keywords','Description','2019-12-06 11:34:55'),
(6,'Our Team','Lorem insput Lorem insputLorem inspu insputLorem insput','<p>Lorem insput Lorem insputLorem inspu insputLorem insput</p>','/img//car-bg.jpg','Keywords','Description','2019-12-06 13:04:16');

/*Table structure for table `page_translation` */

DROP TABLE IF EXISTS `page_translation`;

CREATE TABLE `page_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `page_translation_idx` (`locale`,`object_id`,`field`),
  KEY `IDX_A3D51B1D232D562B` (`object_id`),
  CONSTRAINT `FK_A3D51B1D232D562B` FOREIGN KEY (`object_id`) REFERENCES `page` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `page_translation` */

insert  into `page_translation`(`id`,`object_id`,`locale`,`field`,`content`) values 
(1,4,'ru','pageTitle','О Нас'),
(2,4,'ru','pageShortText','Идейные соображения высшего порядка, а также укрепление !'),
(3,4,'ru','pageText','<p>Идейные соображения высшего порядка, а также укрепление !</p>'),
(4,4,'ru','metaKeywords',NULL),
(5,4,'ru','metaDescription',NULL),
(6,4,'am','pageTitle','Մեր Մասին'),
(7,4,'am','pageShortText','Բարձրագույն կարգի գաղափարական նկատառումները, ինչպես նաև ամրապնդումը !'),
(8,4,'am','pageText','<p>Բարձրագույն կարգի գաղափարական նկատառումները, ինչպես նաև ամրապնդումը !</p>'),
(9,4,'am','metaKeywords',NULL),
(10,4,'am','metaDescription',NULL),
(11,5,'ru','pageTitle','Связаться с нами'),
(12,5,'ru','pageShortText','Идейные соображения высшего порядка, а также укрепление !'),
(13,5,'ru','pageText','<p>Идейные соображения высшего порядка, а также укрепление !</p>'),
(14,5,'ru','metaKeywords',NULL),
(15,5,'ru','metaDescription',NULL),
(16,5,'am','pageTitle','Հետադարձ Կապ'),
(17,5,'am','pageShortText','Բարձրագույն կարգի գաղափարական նկատառումները, ինչպես նաև ամրապնդումը !'),
(18,5,'am','pageText','<p>Բարձրագույն կարգի գաղափարական նկատառումները, ինչպես նաև ամրապնդումը !</p>'),
(19,5,'am','metaKeywords',NULL),
(20,5,'am','metaDescription',NULL),
(21,3,'ru','pageTitle','Новости'),
(22,3,'ru','pageShortText','Идейные соображения высшего порядка, а также укрепление !'),
(23,3,'ru','pageText','<p>Идейные соображения высшего порядка, а также укрепление !</p>'),
(24,3,'ru','metaKeywords',NULL),
(25,3,'ru','metaDescription',NULL),
(26,2,'ru','pageTitle','Наши Сервисы'),
(27,2,'ru','pageShortText','Идейные соображения высшего порядка, а также укрепление !'),
(28,2,'ru','pageText','<p>Идейные соображения высшего порядка, а также укрепление !</p>'),
(29,2,'ru','metaKeywords',NULL),
(30,2,'ru','metaDescription',NULL),
(31,6,'ru','pageTitle','Наша Команда'),
(32,6,'ru','pageShortText','Идейные соображения высшего порядка, а также укрепление !'),
(33,6,'ru','pageText','<p>Идейные соображения высшего порядка, а также укрепление !</p>'),
(34,6,'ru','metaKeywords',NULL),
(35,6,'ru','metaDescription',NULL),
(36,3,'am','pageTitle','Նորություններ'),
(37,3,'am','pageShortText','Բարձրագույն կարգի գաղափարական նկատառումները, ինչպես նաև ամրապնդումը !'),
(38,3,'am','pageText','<p>Բարձրագույն կարգի գաղափարական նկատառումները, ինչպես նաև ամրապնդումը !</p>'),
(39,3,'am','metaKeywords',NULL),
(40,3,'am','metaDescription',NULL),
(41,2,'am','pageTitle','Մեր  Ծառայությունները'),
(42,2,'am','pageShortText','Բարձրագույն կարգի գաղափարական նկատառումները, ինչպես նաև ամրապնդումը !'),
(43,2,'am','pageText','<p>Բարձրագույն կարգի գաղափարական նկատառումները, ինչպես նաև ամրապնդումը !</p>'),
(44,2,'am','metaKeywords',NULL),
(45,2,'am','metaDescription',NULL),
(46,6,'am','pageTitle','Մեր Թիմը'),
(47,6,'am','pageShortText','Բարձրագույն կարգի գաղափարական նկատառումները, ինչպես նաև ամրապնդումը !'),
(48,6,'am','pageText','<p>Բարձրագույն կարգի գաղափարական նկատառումները, ինչպես նաև ամրապնդումը !</p>'),
(49,6,'am','metaKeywords',NULL),
(50,6,'am','metaDescription',NULL);

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryes_id` int(11) DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `cost` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D34A04ADA1C4162C` (`categoryes_id`),
  CONSTRAINT `FK_D34A04ADA1C4162C` FOREIGN KEY (`categoryes_id`) REFERENCES `product_category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `product` */

/*Table structure for table `product_category` */

DROP TABLE IF EXISTS `product_category`;

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `product_category` */

insert  into `product_category`(`id`,`name`) values 
(1,'Car'),
(2,'Moto'),
(3,'Train');

/*Table structure for table `product_category_translation` */

DROP TABLE IF EXISTS `product_category_translation`;

CREATE TABLE `product_category_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_category_translation_idx` (`locale`,`object_id`,`field`),
  KEY `IDX_1DAAB487232D562B` (`object_id`),
  CONSTRAINT `FK_1DAAB487232D562B` FOREIGN KEY (`object_id`) REFERENCES `product_category` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `product_category_translation` */

insert  into `product_category_translation`(`id`,`object_id`,`locale`,`field`,`content`) values 
(1,3,'am','name','Գնացք'),
(2,3,'ru','name','Поезд'),
(3,1,'ru','name','Машина'),
(4,1,'am','name','Մեքենա');

/*Table structure for table `product_translation` */

DROP TABLE IF EXISTS `product_translation`;

CREATE TABLE `product_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_translation_idx` (`locale`,`object_id`,`field`),
  KEY `IDX_1846DB70232D562B` (`object_id`),
  CONSTRAINT `FK_1846DB70232D562B` FOREIGN KEY (`object_id`) REFERENCES `product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `product_translation` */

/*Table structure for table `service` */

DROP TABLE IF EXISTS `service`;

CREATE TABLE `service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `btn` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_top` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `service` */

insert  into `service`(`id`,`img`,`title`,`text`,`btn`,`img2`,`img3`,`is_top`) values 
(1,'/img/ankap.jpg','1orem ipsum dolor','Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum dolo','Read More','/img/nws.jpg','/img/about.jpg',1),
(2,'/img/ankap.jpg','2orem ipsum dolor','Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum dolo','Read More','/img/nws.jpg','/img/about.jpg',1),
(3,'/img/ankap.jpg','3orem ipsum dolor','Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum dolo','Read More','/img/nws.jpg','/img//about.jpg',1),
(4,'/img/ankap.jpg','4orem ipsum dolor','Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum dolo','Read More','/img/nws.jpg','/img/about.jpg',1),
(5,'/img/ankap.jpg','5orem ipsum dolor','Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum dolo','Read More','/img/nws.jpg','/img/about.jpg',0),
(6,'/img/ankap.jpg','6orem ipsum dolor','Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum doloLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,cconsectetur maiores. Lorem ipsum dolo','Read More','/img/nws.jpg','/img/about.jpg',0);

/*Table structure for table `service_translation` */

DROP TABLE IF EXISTS `service_translation`;

CREATE TABLE `service_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `service_translation_idx` (`locale`,`object_id`,`field`),
  KEY `IDX_78F363C3232D562B` (`object_id`),
  CONSTRAINT `FK_78F363C3232D562B` FOREIGN KEY (`object_id`) REFERENCES `service` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `service_translation` */

insert  into `service_translation`(`id`,`object_id`,`locale`,`field`,`content`) values 
(1,1,'ru','title','Равным образом новая модель!'),
(2,1,'ru','text','Идейные соображения высшего порядка, а также укрепление и развитие структуры позволяет выполнять важные задания по разработке новых предложений. Не следует, однако забывать, что консультация с широким активом позволяет выполнять важные задания по разработке дальнейших направлений развития. С другой стороны дальнейшее развитие различных форм деятельности позволяет оценить значение дальнейших направлений развития. Равным образом консультация с широким активом играет важную роль в формировании форм развития. Разнообразный и богатый опыт рамки и место обучения кадров играет важную роль в формировании систем массового участия. Товарищи! постоянный количественный рост и сфера нашей активности обеспечивает широкому кругу (специалистов) участие в формировании систем массового участия.\r\n\r\nРазнообразный и богатый опыт рамки и место обучения кадров влечет за собой процесс внедрения и модернизации дальнейших направлений развития. Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности играет важную роль в формировании форм развития.Идейные соображения высшего порядка, а также укрепление и развитие структуры позволяет выполнять важные задания по разработке новых предложений. Не следует, однако забывать, что консультация с широким активом позволяет выполнять важные задания по разработке дальнейших направлений развития. С другой стороны дальнейшее развитие различных форм деятельности позволяет оценить значение дальнейших направлений развития. Равным образом консультация с широким активом играет важную роль в формировании форм развития. Разнообразный и богатый опыт рамки и место обучения кадров играет важную роль в формировании систем массового участия. Товарищи! постоянный количественный рост и сфера нашей активности обеспечивает широкому кругу (специалистов) участие в формировании систем массового участия.\r\nРазнообразный и богатый опыт рамки и место обучения кадров влечет за собой процесс внедрения и модернизации дальнейших направлений развития. Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности играет важную роль в формировании форм развития.'),
(3,1,'ru','btn','Подробнее'),
(4,1,'am','title','Նմանապես, նոր մոդելը:'),
(5,1,'am','text','Բարձր մակարդակի գաղափարական նկատառումները, ինչպես նաև կառուցվածքի ամրապնդումն ու զարգացումը մեզ թույլ են տալիս իրականացնել կարևոր առաջադրանքներ նոր առաջարկների մշակման գործում: Այնուամենայնիվ, չպետք է մոռանալ, որ լայն ակտիվի հետ խորհրդակցելը թույլ է տալիս իրականացնել կարևոր առաջադրանքներ ՝ զարգացման հետագա ոլորտները զարգացնելու համար: Մյուս կողմից, գործունեության տարբեր ձևերի հետագա զարգացումը մեզ թույլ է տալիս գնահատել զարգացման հետագա ուղղությունների նշանակությունը: Նմանապես, լայն ակտիվի հետ խորհրդակցությունը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում: Շրջանակների և վերապատրաստման վայրի բազմազան և հարուստ փորձը կարևոր դեր է խաղում զանգվածային մասնակցության համակարգերի ձևավորման գործում: Ընկերներ: մշտական ​​քանակական աճը և մեր գործունեության շրջանակը ապահովում են զանգվածային մասնակցության համակարգերի ձևավորմանը մասնակցության լայն շրջանակ (մասնագետներ):\r\n\r\nՇրջանակի բազմազան և հարուստ փորձը և կադրերի պատրաստման վայրը ենթադրում են զարգացման հետագա ոլորտների իրականացման և արդիականացման գործընթաց: Մշտական ​​քանակական աճի բազմազան և հարուստ փորձ և մեր գործունեության ոլորտը կարևոր դեր են խաղում զարգացման ձևերի ձևավորման գործում: Բարձրագույն կարգի իդեալական նկատառումները, ինչպես նաև կառուցվածքի ամրապնդումն ու զարգացումը մեզ թույլ են տալիս իրականացնել կարևոր առաջադրանքներ նոր առաջարկների մշակման գործում: Այնուամենայնիվ, չպետք է մոռանալ, որ լայն ակտիվի հետ խորհրդակցելը թույլ է տալիս իրականացնել կարևոր առաջադրանքներ ՝ զարգացման հետագա ոլորտները զարգացնելու համար: Մյուս կողմից, գործունեության տարբեր ձևերի հետագա զարգացումը մեզ թույլ է տալիս գնահատել զարգացման հետագա ուղղությունների նշանակությունը: Նմանապես, լայն ակտիվի հետ խորհրդակցությունը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում: Շրջանակների և վերապատրաստման վայրի բազմազան և հարուստ փորձը կարևոր դեր է խաղում զանգվածային մասնակցության համակարգերի ձևավորման գործում: Ընկերներ: մշտական ​​քանակական աճը և մեր գործունեության շրջանակը ապահովում են զանգվածային մասնակցության համակարգերի ձևավորմանը մասնակցության լայն շրջանակ (մասնագետներ):\r\n\r\nՇրջանակի բազմազան և հարուստ փորձը և կադրերի պատրաստման վայրը ենթադրում են զարգացման հետագա ոլորտների իրականացման և արդիականացման գործընթաց: Մշտական ​​քանակական աճի բազմազան և հարուստ փորձ և մեր գործունեության շրջանակը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում:'),
(6,1,'am','btn','Մանրամասն'),
(7,2,'ru','title','2 ։ Равным образом новая модель!'),
(8,2,'ru','text','Идейные соображения высшего порядка, а также укрепление и развитие структуры позволяет выполнять важные задания по разработке новых предложений. Не следует, однако забывать, что консультация с широким активом позволяет выполнять важные задания по разработке дальнейших направлений развития. С другой стороны дальнейшее развитие различных форм деятельности позволяет оценить значение дальнейших направлений развития. Равным образом консультация с широким активом играет важную роль в формировании форм развития. Разнообразный и богатый опыт рамки и место обучения кадров играет важную роль в формировании систем массового участия. Товарищи! постоянный количественный рост и сфера нашей активности обеспечивает широкому кругу (специалистов) участие в формировании систем массового участия.\r\n\r\nРазнообразный и богатый опыт рамки и место обучения кадров влечет за собой процесс внедрения и модернизации дальнейших направлений развития. Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности играет важную роль в формировании форм развития.Идейные соображения высшего порядка, а также укрепление и развитие структуры позволяет выполнять важные задания по разработке новых предложений. Не следует, однако забывать, что консультация с широким активом позволяет выполнять важные задания по разработке дальнейших направлений развития. С другой стороны дальнейшее развитие различных форм деятельности позволяет оценить значение дальнейших направлений развития. Равным образом консультация с широким активом играет важную роль в формировании форм развития. Разнообразный и богатый опыт рамки и место обучения кадров играет важную роль в формировании систем массового участия. Товарищи! постоянный количественный рост и сфера нашей активности обеспечивает широкому кругу (специалистов) участие в формировании систем массового участия.\r\nРазнообразный и богатый опыт рамки и место обучения кадров влечет за собой процесс внедрения и модернизации дальнейших направлений развития. Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности играет важную роль в формировании форм развития.'),
(9,2,'ru','btn','Подробнее'),
(10,2,'am','title','2 ։ Նմանապես, նոր մոդելը:'),
(11,2,'am','text','Բարձր մակարդակի գաղափարական նկատառումները, ինչպես նաև կառուցվածքի ամրապնդումն ու զարգացումը մեզ թույլ են տալիս իրականացնել կարևոր առաջադրանքներ նոր առաջարկների մշակման գործում: Այնուամենայնիվ, չպետք է մոռանալ, որ լայն ակտիվի հետ խորհրդակցելը թույլ է տալիս իրականացնել կարևոր առաջադրանքներ ՝ զարգացման հետագա ոլորտները զարգացնելու համար: Մյուս կողմից, գործունեության տարբեր ձևերի հետագա զարգացումը մեզ թույլ է տալիս գնահատել զարգացման հետագա ուղղությունների նշանակությունը: Նմանապես, լայն ակտիվի հետ խորհրդակցությունը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում: Շրջանակների և վերապատրաստման վայրի բազմազան և հարուստ փորձը կարևոր դեր է խաղում զանգվածային մասնակցության համակարգերի ձևավորման գործում: Ընկերներ: մշտական ​​քանակական աճը և մեր գործունեության շրջանակը ապահովում են զանգվածային մասնակցության համակարգերի ձևավորմանը մասնակցության լայն շրջանակ (մասնագետներ):\r\n\r\nՇրջանակի բազմազան և հարուստ փորձը և կադրերի պատրաստման վայրը ենթադրում են զարգացման հետագա ոլորտների իրականացման և արդիականացման գործընթաց: Մշտական ​​քանակական աճի բազմազան և հարուստ փորձ և մեր գործունեության ոլորտը կարևոր դեր են խաղում զարգացման ձևերի ձևավորման գործում: Բարձրագույն կարգի իդեալական նկատառումները, ինչպես նաև կառուցվածքի ամրապնդումն ու զարգացումը մեզ թույլ են տալիս իրականացնել կարևոր առաջադրանքներ նոր առաջարկների մշակման գործում: Այնուամենայնիվ, չպետք է մոռանալ, որ լայն ակտիվի հետ խորհրդակցելը թույլ է տալիս իրականացնել կարևոր առաջադրանքներ ՝ զարգացման հետագա ոլորտները զարգացնելու համար: Մյուս կողմից, գործունեության տարբեր ձևերի հետագա զարգացումը մեզ թույլ է տալիս գնահատել զարգացման հետագա ուղղությունների նշանակությունը: Նմանապես, լայն ակտիվի հետ խորհրդակցությունը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում: Շրջանակների և վերապատրաստման վայրի բազմազան և հարուստ փորձը կարևոր դեր է խաղում զանգվածային մասնակցության համակարգերի ձևավորման գործում: Ընկերներ: մշտական ​​քանակական աճը և մեր գործունեության շրջանակը ապահովում են զանգվածային մասնակցության համակարգերի ձևավորմանը մասնակցության լայն շրջանակ (մասնագետներ):\r\n\r\nՇրջանակի բազմազան և հարուստ փորձը և կադրերի պատրաստման վայրը ենթադրում են զարգացման հետագա ոլորտների իրականացման և արդիականացման գործընթաց: Մշտական ​​քանակական աճի բազմազան և հարուստ փորձ և մեր գործունեության շրջանակը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում:'),
(12,2,'am','btn','Մանրամասն'),
(13,3,'am','title','3 ։ Նմանապես, նոր մոդելը:'),
(14,3,'am','text','Բարձր մակարդակի գաղափարական նկատառումները, ինչպես նաև կառուցվածքի ամրապնդումն ու զարգացումը մեզ թույլ են տալիս իրականացնել կարևոր առաջադրանքներ նոր առաջարկների մշակման գործում: Այնուամենայնիվ, չպետք է մոռանալ, որ լայն ակտիվի հետ խորհրդակցելը թույլ է տալիս իրականացնել կարևոր առաջադրանքներ ՝ զարգացման հետագա ոլորտները զարգացնելու համար: Մյուս կողմից, գործունեության տարբեր ձևերի հետագա զարգացումը մեզ թույլ է տալիս գնահատել զարգացման հետագա ուղղությունների նշանակությունը: Նմանապես, լայն ակտիվի հետ խորհրդակցությունը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում: Շրջանակների և վերապատրաստման վայրի բազմազան և հարուստ փորձը կարևոր դեր է խաղում զանգվածային մասնակցության համակարգերի ձևավորման գործում: Ընկերներ: մշտական ​​քանակական աճը և մեր գործունեության շրջանակը ապահովում են զանգվածային մասնակցության համակարգերի ձևավորմանը մասնակցության լայն շրջանակ (մասնագետներ):\r\n\r\nՇրջանակի բազմազան և հարուստ փորձը և կադրերի պատրաստման վայրը ենթադրում են զարգացման հետագա ոլորտների իրականացման և արդիականացման գործընթաց: Մշտական ​​քանակական աճի բազմազան և հարուստ փորձ և մեր գործունեության ոլորտը կարևոր դեր են խաղում զարգացման ձևերի ձևավորման գործում: Բարձրագույն կարգի իդեալական նկատառումները, ինչպես նաև կառուցվածքի ամրապնդումն ու զարգացումը մեզ թույլ են տալիս իրականացնել կարևոր առաջադրանքներ նոր առաջարկների մշակման գործում: Այնուամենայնիվ, չպետք է մոռանալ, որ լայն ակտիվի հետ խորհրդակցելը թույլ է տալիս իրականացնել կարևոր առաջադրանքներ ՝ զարգացման հետագա ոլորտները զարգացնելու համար: Մյուս կողմից, գործունեության տարբեր ձևերի հետագա զարգացումը մեզ թույլ է տալիս գնահատել զարգացման հետագա ուղղությունների նշանակությունը: Նմանապես, լայն ակտիվի հետ խորհրդակցությունը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում: Շրջանակների և վերապատրաստման վայրի բազմազան և հարուստ փորձը կարևոր դեր է խաղում զանգվածային մասնակցության համակարգերի ձևավորման գործում: Ընկերներ: մշտական ​​քանակական աճը և մեր գործունեության շրջանակը ապահովում են զանգվածային մասնակցության համակարգերի ձևավորմանը մասնակցության լայն շրջանակ (մասնագետներ):\r\n\r\nՇրջանակի բազմազան և հարուստ փորձը և կադրերի պատրաստման վայրը ենթադրում են զարգացման հետագա ոլորտների իրականացման և արդիականացման գործընթաց: Մշտական ​​քանակական աճի բազմազան և հարուստ փորձ և մեր գործունեության շրջանակը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում:'),
(15,3,'am','btn','Մանրամասն'),
(16,3,'ru','title','3 ։ Равным образом новая модель!'),
(17,3,'ru','text','Идейные соображения высшего порядка, а также укрепление и развитие структуры позволяет выполнять важные задания по разработке новых предложений. Не следует, однако забывать, что консультация с широким активом позволяет выполнять важные задания по разработке дальнейших направлений развития. С другой стороны дальнейшее развитие различных форм деятельности позволяет оценить значение дальнейших направлений развития. Равным образом консультация с широким активом играет важную роль в формировании форм развития. Разнообразный и богатый опыт рамки и место обучения кадров играет важную роль в формировании систем массового участия. Товарищи! постоянный количественный рост и сфера нашей активности обеспечивает широкому кругу (специалистов) участие в формировании систем массового участия.\r\n\r\nРазнообразный и богатый опыт рамки и место обучения кадров влечет за собой процесс внедрения и модернизации дальнейших направлений развития. Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности играет важную роль в формировании форм развития.Идейные соображения высшего порядка, а также укрепление и развитие структуры позволяет выполнять важные задания по разработке новых предложений. Не следует, однако забывать, что консультация с широким активом позволяет выполнять важные задания по разработке дальнейших направлений развития. С другой стороны дальнейшее развитие различных форм деятельности позволяет оценить значение дальнейших направлений развития. Равным образом консультация с широким активом играет важную роль в формировании форм развития. Разнообразный и богатый опыт рамки и место обучения кадров играет важную роль в формировании систем массового участия. Товарищи! постоянный количественный рост и сфера нашей активности обеспечивает широкому кругу (специалистов) участие в формировании систем массового участия.\r\nРазнообразный и богатый опыт рамки и место обучения кадров влечет за собой процесс внедрения и модернизации дальнейших направлений развития. Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности играет важную роль в формировании форм развития.'),
(18,3,'ru','btn','Подробнее'),
(19,4,'am','title','4 ։ Նմանապես, նոր մոդելը:'),
(20,4,'am','text','Բարձր մակարդակի գաղափարական նկատառումները, ինչպես նաև կառուցվածքի ամրապնդումն ու զարգացումը մեզ թույլ են տալիս իրականացնել կարևոր առաջադրանքներ նոր առաջարկների մշակման գործում: Այնուամենայնիվ, չպետք է մոռանալ, որ լայն ակտիվի հետ խորհրդակցելը թույլ է տալիս իրականացնել կարևոր առաջադրանքներ ՝ զարգացման հետագա ոլորտները զարգացնելու համար: Մյուս կողմից, գործունեության տարբեր ձևերի հետագա զարգացումը մեզ թույլ է տալիս գնահատել զարգացման հետագա ուղղությունների նշանակությունը: Նմանապես, լայն ակտիվի հետ խորհրդակցությունը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում: Շրջանակների և վերապատրաստման վայրի բազմազան և հարուստ փորձը կարևոր դեր է խաղում զանգվածային մասնակցության համակարգերի ձևավորման գործում: Ընկերներ: մշտական ​​քանակական աճը և մեր գործունեության շրջանակը ապահովում են զանգվածային մասնակցության համակարգերի ձևավորմանը մասնակցության լայն շրջանակ (մասնագետներ):\r\n\r\nՇրջանակների բազմազան և հարուստ փորձը և կադրերի պատրաստման վայրը ենթադրում են զարգացման հետագա ոլորտների իրականացման և արդիականացման գործընթաց: Մշտական ​​քանակական աճի բազմազան և հարուստ փորձ և մեր գործունեության ոլորտը կարևոր դեր են խաղում զարգացման ձևերի ձևավորման գործում Բարձրագույն կարգի, ինչպես նաև կառուցվածքի ամրապնդման և զարգացման իդեալական նկատառումները թույլ են տալիս մեզ իրականացնել կարևոր առաջադրանքներ նոր առաջարկների մշակման համար: Այնուամենայնիվ, չպետք է մոռանալ, որ լայն ակտիվի հետ խորհրդակցելը թույլ է տալիս իրականացնել կարևոր առաջադրանքներ ՝ զարգացման հետագա ոլորտները զարգացնելու համար: Մյուս կողմից, գործունեության տարբեր ձևերի հետագա զարգացումը մեզ թույլ է տալիս գնահատել զարգացման հետագա ուղղությունների նշանակությունը: Նմանապես, լայն ակտիվի հետ խորհրդակցությունը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում: Շրջանակների և վերապատրաստման վայրի բազմազան և հարուստ փորձը կարևոր դեր է խաղում զանգվածային մասնակցության համակարգերի ձևավորման գործում: Ընկերներ: մշտական ​​քանակական աճը և մեր գործունեության շրջանակը ապահովում են զանգվածային մասնակցության համակարգերի ձևավորմանը մասնակցության լայն շրջանակ (մասնագետներ):\r\n\r\nՇրջանակների բազմազան և հարուստ փորձը և կադրերի պատրաստման վայրը ենթադրում են զարգացման հետագա ոլորտների իրականացման և արդիականացման գործընթաց: Մշտական ​​քանակական աճի բազմազան և հարուստ փորձ և մեր գործունեության շրջանակը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում:'),
(21,4,'am','btn','Մանրամասն'),
(22,4,'ru','title','4 ։ Равным образом новая модель!'),
(23,4,'ru','text','Идейные соображения высшего порядка, а также укрепление и развитие структуры позволяет выполнять важные задания по разработке новых предложений. Не следует, однако забывать, что консультация с широким активом позволяет выполнять важные задания по разработке дальнейших направлений развития. С другой стороны дальнейшее развитие различных форм деятельности позволяет оценить значение дальнейших направлений развития. Равным образом консультация с широким активом играет важную роль в формировании форм развития. Разнообразный и богатый опыт рамки и место обучения кадров играет важную роль в формировании систем массового участия. Товарищи! постоянный количественный рост и сфера нашей активности обеспечивает широкому кругу (специалистов) участие в формировании систем массового участия.\r\n\r\nРазнообразный и богатый опыт рамки и место обучения кадров влечет за собой процесс внедрения и модернизации дальнейших направлений развития. Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности играет важную роль в формировании форм развития.Идейные соображения высшего порядка, а также укрепление и развитие структуры позволяет выполнять важные задания по разработке новых предложений. Не следует, однако забывать, что консультация с широким активом позволяет выполнять важные задания по разработке дальнейших направлений развития. С другой стороны дальнейшее развитие различных форм деятельности позволяет оценить значение дальнейших направлений развития. Равным образом консультация с широким активом играет важную роль в формировании форм развития. Разнообразный и богатый опыт рамки и место обучения кадров играет важную роль в формировании систем массового участия. Товарищи! постоянный количественный рост и сфера нашей активности обеспечивает широкому кругу (специалистов) участие в формировании систем массового участия.\r\n\r\nРазнообразный и богатый опыт рамки и место обучения кадров влечет за собой процесс внедрения и модернизации дальнейших направлений развития. Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности играет важную роль в формировании форм развития.'),
(24,4,'ru','btn','Подробнее'),
(25,5,'ru','title','5 ։ Равным образом новая модель!'),
(26,5,'ru','text','Идейные соображения высшего порядка, а также укрепление и развитие структуры позволяет выполнять важные задания по разработке новых предложений. Не следует, однако забывать, что консультация с широким активом позволяет выполнять важные задания по разработке дальнейших направлений развития. С другой стороны дальнейшее развитие различных форм деятельности позволяет оценить значение дальнейших направлений развития. Равным образом консультация с широким активом играет важную роль в формировании форм развития. Разнообразный и богатый опыт рамки и место обучения кадров играет важную роль в формировании систем массового участия. Товарищи! постоянный количественный рост и сфера нашей активности обеспечивает широкому кругу (специалистов) участие в формировании систем массового участия.\r\n\r\nРазнообразный и богатый опыт рамки и место обучения кадров влечет за собой процесс внедрения и модернизации дальнейших направлений развития. Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности играет важную роль в формировании форм развития.Идейные соображения высшего порядка, а также укрепление и развитие структуры позволяет выполнять важные задания по разработке новых предложений. Не следует, однако забывать, что консультация с широким активом позволяет выполнять важные задания по разработке дальнейших направлений развития. С другой стороны дальнейшее развитие различных форм деятельности позволяет оценить значение дальнейших направлений развития. Равным образом консультация с широким активом играет важную роль в формировании форм развития. Разнообразный и богатый опыт рамки и место обучения кадров играет важную роль в формировании систем массового участия. Товарищи! постоянный количественный рост и сфера нашей активности обеспечивает широкому кругу (специалистов) участие в формировании систем массового участия.\r\n\r\nРазнообразный и богатый опыт рамки и место обучения кадров влечет за собой процесс внедрения и модернизации дальнейших направлений развития. Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности играет важную роль в формировании форм развития.'),
(27,5,'ru','btn','Подробнее'),
(28,5,'am','title','5 ։ Նմանապես, նոր մոդելը:'),
(29,5,'am','text','Բարձր մակարդակի գաղափարական նկատառումները, ինչպես նաև կառուցվածքի ամրապնդումն ու զարգացումը մեզ թույլ են տալիս իրականացնել կարևոր առաջադրանքներ նոր առաջարկների մշակման գործում: Այնուամենայնիվ, չպետք է մոռանալ, որ լայն ակտիվի հետ խորհրդակցելը թույլ է տալիս իրականացնել կարևոր առաջադրանքներ ՝ զարգացման հետագա ոլորտները զարգացնելու համար: Մյուս կողմից, գործունեության տարբեր ձևերի հետագա զարգացումը մեզ թույլ է տալիս գնահատել զարգացման հետագա ուղղությունների նշանակությունը: Նմանապես, լայն ակտիվի հետ խորհրդակցությունը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում: Շրջանակների և վերապատրաստման վայրի բազմազան և հարուստ փորձը կարևոր դեր է խաղում զանգվածային մասնակցության համակարգերի ձևավորման գործում: Ընկերներ: մշտական ​​քանակական աճը և մեր գործունեության շրջանակը ապահովում են զանգվածային մասնակցության համակարգերի ձևավորմանը մասնակցության լայն շրջանակ (մասնագետներ):\r\n\r\nՇրջանակների բազմազան և հարուստ փորձը և կադրերի պատրաստման վայրը ենթադրում են զարգացման հետագա ոլորտների իրականացման և արդիականացման գործընթաց: Մշտական ​​քանակական աճի բազմազան և հարուստ փորձ և մեր գործունեության ոլորտը կարևոր դեր են խաղում զարգացման ձևերի ձևավորման գործում Բարձրագույն կարգի, ինչպես նաև կառուցվածքի ամրապնդման և զարգացման իդեալական նկատառումները թույլ են տալիս մեզ իրականացնել կարևոր առաջադրանքներ նոր առաջարկների մշակման համար: Այնուամենայնիվ, չպետք է մոռանալ, որ լայն ակտիվի հետ խորհրդակցելը թույլ է տալիս իրականացնել կարևոր առաջադրանքներ ՝ զարգացման հետագա ոլորտները զարգացնելու համար: Մյուս կողմից, գործունեության տարբեր ձևերի հետագա զարգացումը մեզ թույլ է տալիս գնահատել զարգացման հետագա ուղղությունների նշանակությունը: Նմանապես, լայն ակտիվի հետ խորհրդակցությունը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում: Շրջանակների և վերապատրաստման վայրի բազմազան և հարուստ փորձը կարևոր դեր է խաղում զանգվածային մասնակցության համակարգերի ձևավորման գործում: Ընկերներ: մշտական ​​քանակական աճը և մեր գործունեության շրջանակը ապահովում են զանգվածային մասնակցության համակարգերի ձևավորմանը մասնակցության լայն շրջանակ (մասնագետներ):\r\n\r\nՇրջանակների բազմազան և հարուստ փորձը և կադրերի պատրաստման վայրը ենթադրում են զարգացման հետագա ոլորտների իրականացման և արդիականացման գործընթաց: Մշտական ​​քանակական աճի բազմազան և հարուստ փորձ և մեր գործունեության շրջանակը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում:'),
(30,5,'am','btn','Մանրամասն'),
(31,6,'am','title','6 ։ Նմանապես, նոր մոդելը:'),
(32,6,'am','text','Բարձր մակարդակի գաղափարական նկատառումները, ինչպես նաև կառուցվածքի ամրապնդումն ու զարգացումը մեզ թույլ են տալիս իրականացնել կարևոր առաջադրանքներ նոր առաջարկների մշակման գործում: Այնուամենայնիվ, չպետք է մոռանալ, որ լայն ակտիվի հետ խորհրդակցելը թույլ է տալիս իրականացնել կարևոր առաջադրանքներ ՝ զարգացման հետագա ոլորտները զարգացնելու համար: Մյուս կողմից, գործունեության տարբեր ձևերի հետագա զարգացումը մեզ թույլ է տալիս գնահատել զարգացման հետագա ուղղությունների նշանակությունը: Նմանապես, լայն ակտիվի հետ խորհրդակցությունը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում: Շրջանակների և վերապատրաստման վայրի բազմազան և հարուստ փորձը կարևոր դեր է խաղում զանգվածային մասնակցության համակարգերի ձևավորման գործում: Ընկերներ: մշտական ​​քանակական աճը և մեր գործունեության շրջանակը ապահովում են զանգվածային մասնակցության համակարգերի ձևավորմանը մասնակցության լայն շրջանակ (մասնագետներ):\r\n\r\nՇրջանակների բազմազան և հարուստ փորձը և կադրերի պատրաստման վայրը ենթադրում են զարգացման հետագա ոլորտների իրականացման և արդիականացման գործընթաց: Մշտական ​​քանակական աճի բազմազան և հարուստ փորձ և մեր գործունեության ոլորտը կարևոր դեր են խաղում զարգացման ձևերի ձևավորման գործում Բարձրագույն կարգի, ինչպես նաև կառուցվածքի ամրապնդման և զարգացման իդեալական նկատառումները թույլ են տալիս մեզ իրականացնել կարևոր առաջադրանքներ նոր առաջարկների մշակման համար: Այնուամենայնիվ, չպետք է մոռանալ, որ լայն ակտիվի հետ խորհրդակցելը թույլ է տալիս իրականացնել կարևոր առաջադրանքներ ՝ զարգացման հետագա ոլորտները զարգացնելու համար: Մյուս կողմից, գործունեության տարբեր ձևերի հետագա զարգացումը մեզ թույլ է տալիս գնահատել զարգացման հետագա ուղղությունների նշանակությունը: Նմանապես, լայն ակտիվի հետ խորհրդակցությունը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում: Շրջանակների և վերապատրաստման վայրի բազմազան և հարուստ փորձը կարևոր դեր է խաղում զանգվածային մասնակցության համակարգերի ձևավորման գործում: Ընկերներ: մշտական ​​քանակական աճը և մեր գործունեության շրջանակը ապահովում են զանգվածային մասնակցության համակարգերի ձևավորմանը մասնակցության լայն շրջանակ (մասնագետներ):\r\n\r\nՇրջանակների բազմազան և հարուստ փորձը և կադրերի պատրաստման վայրը ենթադրում են զարգացման հետագա ոլորտների իրականացման և արդիականացման գործընթաց: Մշտական ​​քանակական աճի բազմազան և հարուստ փորձ և մեր գործունեության շրջանակը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում:'),
(33,6,'am','btn','Մանրամասն'),
(34,6,'ru','title','6 ։ Равным образом новая модель!'),
(35,6,'ru','text','Идейные соображения высшего порядка, а также укрепление и развитие структуры позволяет выполнять важные задания по разработке новых предложений. Не следует, однако забывать, что консультация с широким активом позволяет выполнять важные задания по разработке дальнейших направлений развития. С другой стороны дальнейшее развитие различных форм деятельности позволяет оценить значение дальнейших направлений развития. Равным образом консультация с широким активом играет важную роль в формировании форм развития. Разнообразный и богатый опыт рамки и место обучения кадров играет важную роль в формировании систем массового участия. Товарищи! постоянный количественный рост и сфера нашей активности обеспечивает широкому кругу (специалистов) участие в формировании систем массового участия.\r\n\r\nРазнообразный и богатый опыт рамки и место обучения кадров влечет за собой процесс внедрения и модернизации дальнейших направлений развития. Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности играет важную роль в формировании форм развития.Идейные соображения высшего порядка, а также укрепление и развитие структуры позволяет выполнять важные задания по разработке новых предложений. Не следует, однако забывать, что консультация с широким активом позволяет выполнять важные задания по разработке дальнейших направлений развития. С другой стороны дальнейшее развитие различных форм деятельности позволяет оценить значение дальнейших направлений развития. Равным образом консультация с широким активом играет важную роль в формировании форм развития. Разнообразный и богатый опыт рамки и место обучения кадров играет важную роль в формировании систем массового участия. Товарищи! постоянный количественный рост и сфера нашей активности обеспечивает широкому кругу (специалистов) участие в формировании систем массового участия.\r\n\r\nРазнообразный и богатый опыт рамки и место обучения кадров влечет за собой процесс внедрения и модернизации дальнейших направлений развития. Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности играет важную роль в формировании форм развития.'),
(36,6,'ru','btn','Подробнее');

/*Table structure for table `team` */

DROP TABLE IF EXISTS `team`;

CREATE TABLE `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_top` tinyint(1) NOT NULL,
  `bigtext` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `btn` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `team` */

insert  into `team`(`id`,`img`,`title`,`text`,`short`,`is_top`,`bigtext`,`date`,`btn`) values 
(1,'/img/maria.png','Maria Poull','C:E:O','Founder of Company',1,'Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem iponsectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolorLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolorLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores','2010-11-30 00:00:00','Read More'),
(7,'/img/maria.png','Maria Poull','C:E:O','Founder of Company',1,'Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem iponsectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolorLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolorLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores','1999-11-10 00:00:00','Read More'),
(8,'/img/maria.png','Maria Poull','C:E:O','Founder of Company',1,'Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem iponsectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolorLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolorLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores','1996-05-17 00:00:00','Read More'),
(9,'/img/maria.png','Maria Poull','C:E:O','Founder of Company',1,'Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem iponsectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolorLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolorLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores','1996-05-24 00:00:00','Read More'),
(10,'/img/maria.png','Maria Poull','C:E:O','Founder of Company',0,'Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem iponsectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolorLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolorLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores','1995-12-24 00:00:00','Read More'),
(11,'/img/maria.png','Maria Poull','C:E:O','Founder of Company',0,'Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem iponsectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolorLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolorLorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores.Lorem ipsum dolor sit amet,consectetur maiores. Lorem ipsum dolor sit amet,consectetur maiores','1960-12-11 00:00:00','Read More');

/*Table structure for table `team_translation` */

DROP TABLE IF EXISTS `team_translation`;

CREATE TABLE `team_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `team_translation_idx` (`locale`,`object_id`,`field`),
  KEY `IDX_5F59AA22232D562B` (`object_id`),
  CONSTRAINT `FK_5F59AA22232D562B` FOREIGN KEY (`object_id`) REFERENCES `team` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `team_translation` */

insert  into `team_translation`(`id`,`object_id`,`locale`,`field`,`content`) values 
(1,1,'ru','title','Мария Полл'),
(2,1,'ru','text','Директор компании'),
(3,1,'ru','short','Основатель компании'),
(4,1,'ru','bigtext','Товарищи! укрепление и развитие структуры требуют определения и уточнения дальнейших направлений развития. С другой стороны сложившаяся структура организации требуют от нас анализа модели развития. Равным образом новая модель организационной деятельности позволяет выполнять важные задания по разработке модели развития.\r\n\r\nИдейные соображения высшего порядка, а также укрепление и развитие структуры позволяет выполнять важные задания по разработке новых предложений. Не следует, однако забывать, что консультация с широким активом позволяет выполнять важные задания по разработке дальнейших направлений развития. С другой стороны дальнейшее развитие различных форм деятельности позволяет оценить значение дальнейших направлений развития. Равным образом консультация с широким активом играет важную роль в формировании форм развития. Разнообразный и богатый опыт рамки и место обучения кадров играет важную роль в формировании систем массового участия. Товарищи! постоянный количественный рост и сфера нашей активности обеспечивает широкому кругу (специалистов) участие в формировании систем массового участия.\r\n\r\nРазнообразный и богатый опыт рамки и место обучения кадров влечет за собой процесс внедрения и модернизации дальнейших направлений развития. Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности играет важную роль в формировании форм развития.\r\n\r\nТоварищи! новая модель организационной деятельности влечет за собой процесс внедрения и модернизации направлений прогрессивного развития. Товарищи! реализация намеченных плановых заданий способствует подготовки и реализации новых предложений. С другой стороны реализация намеченных плановых заданий играет важную роль в формировании новых предложений.'),
(5,7,'ru','title','Мария Полл'),
(6,7,'ru','text','Директор компании'),
(7,7,'ru','short','Основатель компании'),
(8,7,'ru','bigtext','Товарищи! укрепление и развитие структуры требуют определения и уточнения дальнейших направлений развития. С другой стороны сложившаяся структура организации требуют от нас анализа модели развития. Равным образом новая модель организационной деятельности позволяет выполнять важные задания по разработке модели развития.\r\n\r\nИдейные соображения высшего порядка, а также укрепление и развитие структуры позволяет выполнять важные задания по разработке новых предложений. Не следует, однако забывать, что консультация с широким активом позволяет выполнять важные задания по разработке дальнейших направлений развития. С другой стороны дальнейшее развитие различных форм деятельности позволяет оценить значение дальнейших направлений развития. Равным образом консультация с широким активом играет важную роль в формировании форм развития. Разнообразный и богатый опыт рамки и место обучения кадров играет важную роль в формировании систем массового участия. Товарищи! постоянный количественный рост и сфера нашей активности обеспечивает широкому кругу (специалистов) участие в формировании систем массового участия.\r\n\r\nРазнообразный и богатый опыт рамки и место обучения кадров влечет за собой процесс внедрения и модернизации дальнейших направлений развития. Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности играет важную роль в формировании форм развития.\r\n\r\nТоварищи! новая модель организационной деятельности влечет за собой процесс внедрения и модернизации направлений прогрессивного развития. Товарищи! реализация намеченных плановых заданий способствует подготовки и реализации новых предложений. С другой стороны реализация намеченных плановых заданий играет важную роль в формировании новых предложений.'),
(9,8,'ru','title','Мария Полл'),
(10,8,'ru','text','Директор компании'),
(11,8,'ru','short','Основатель компании'),
(12,8,'ru','bigtext','Товарищи! укрепление и развитие структуры требуют определения и уточнения дальнейших направлений развития. С другой стороны сложившаяся структура организации требуют от нас анализа модели развития. Равным образом новая модель организационной деятельности позволяет выполнять важные задания по разработке модели развития.\r\n\r\nИдейные соображения высшего порядка, а также укрепление и развитие структуры позволяет выполнять важные задания по разработке новых предложений. Не следует, однако забывать, что консультация с широким активом позволяет выполнять важные задания по разработке дальнейших направлений развития. С другой стороны дальнейшее развитие различных форм деятельности позволяет оценить значение дальнейших направлений развития. Равным образом консультация с широким активом играет важную роль в формировании форм развития. Разнообразный и богатый опыт рамки и место обучения кадров играет важную роль в формировании систем массового участия. Товарищи! постоянный количественный рост и сфера нашей активности обеспечивает широкому кругу (специалистов) участие в формировании систем массового участия.\r\n\r\nРазнообразный и богатый опыт рамки и место обучения кадров влечет за собой процесс внедрения и модернизации дальнейших направлений развития. Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности играет важную роль в формировании форм развития.\r\n\r\nТоварищи! новая модель организационной деятельности влечет за собой процесс внедрения и модернизации направлений прогрессивного развития. Товарищи! реализация намеченных плановых заданий способствует подготовки и реализации новых предложений. С другой стороны реализация намеченных плановых заданий играет важную роль в формировании новых предложений.'),
(13,9,'ru','title','Мария Полл'),
(14,9,'ru','text','Директор компании'),
(15,9,'ru','short','Основатель компании'),
(16,9,'ru','bigtext','Товарищи! укрепление и развитие структуры требуют определения и уточнения дальнейших направлений развития. С другой стороны сложившаяся структура организации требуют от нас анализа модели развития. Равным образом новая модель организационной деятельности позволяет выполнять важные задания по разработке модели развития.\r\n\r\nИдейные соображения высшего порядка, а также укрепление и развитие структуры позволяет выполнять важные задания по разработке новых предложений. Не следует, однако забывать, что консультация с широким активом позволяет выполнять важные задания по разработке дальнейших направлений развития. С другой стороны дальнейшее развитие различных форм деятельности позволяет оценить значение дальнейших направлений развития. Равным образом консультация с широким активом играет важную роль в формировании форм развития. Разнообразный и богатый опыт рамки и место обучения кадров играет важную роль в формировании систем массового участия. Товарищи! постоянный количественный рост и сфера нашей активности обеспечивает широкому кругу (специалистов) участие в формировании систем массового участия.\r\n\r\nРазнообразный и богатый опыт рамки и место обучения кадров влечет за собой процесс внедрения и модернизации дальнейших направлений развития. Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности играет важную роль в формировании форм развития.\r\n\r\nТоварищи! новая модель организационной деятельности влечет за собой процесс внедрения и модернизации направлений прогрессивного развития. Товарищи! реализация намеченных плановых заданий способствует подготовки и реализации новых предложений. С другой стороны реализация намеченных плановых заданий играет важную роль в формировании новых предложений.'),
(17,10,'ru','title','Мария Полл'),
(18,10,'ru','text','Директор компании'),
(19,10,'ru','short','Основатель компании'),
(20,10,'ru','bigtext','Товарищи! укрепление и развитие структуры требуют определения и уточнения дальнейших направлений развития. С другой стороны сложившаяся структура организации требуют от нас анализа модели развития. Равным образом новая модель организационной деятельности позволяет выполнять важные задания по разработке модели развития.\r\n\r\nИдейные соображения высшего порядка, а также укрепление и развитие структуры позволяет выполнять важные задания по разработке новых предложений. Не следует, однако забывать, что консультация с широким активом позволяет выполнять важные задания по разработке дальнейших направлений развития. С другой стороны дальнейшее развитие различных форм деятельности позволяет оценить значение дальнейших направлений развития. Равным образом консультация с широким активом играет важную роль в формировании форм развития. Разнообразный и богатый опыт рамки и место обучения кадров играет важную роль в формировании систем массового участия. Товарищи! постоянный количественный рост и сфера нашей активности обеспечивает широкому кругу (специалистов) участие в формировании систем массового участия.\r\n\r\nРазнообразный и богатый опыт рамки и место обучения кадров влечет за собой процесс внедрения и модернизации дальнейших направлений развития. Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности играет важную роль в формировании форм развития.\r\n\r\nТоварищи! новая модель организационной деятельности влечет за собой процесс внедрения и модернизации направлений прогрессивного развития. Товарищи! реализация намеченных плановых заданий способствует подготовки и реализации новых предложений. С другой стороны реализация намеченных плановых заданий играет важную роль в формировании новых предложений.'),
(21,11,'ru','title','Мария Полл'),
(22,11,'ru','text','Директор компании'),
(23,11,'ru','short','Основатель компании'),
(24,11,'ru','bigtext','Товарищи! укрепление и развитие структуры требуют определения и уточнения дальнейших направлений развития. С другой стороны сложившаяся структура организации требуют от нас анализа модели развития. Равным образом новая модель организационной деятельности позволяет выполнять важные задания по разработке модели развития.\r\n\r\nИдейные соображения высшего порядка, а также укрепление и развитие структуры позволяет выполнять важные задания по разработке новых предложений. Не следует, однако забывать, что консультация с широким активом позволяет выполнять важные задания по разработке дальнейших направлений развития. С другой стороны дальнейшее развитие различных форм деятельности позволяет оценить значение дальнейших направлений развития. Равным образом консультация с широким активом играет важную роль в формировании форм развития. Разнообразный и богатый опыт рамки и место обучения кадров играет важную роль в формировании систем массового участия. Товарищи! постоянный количественный рост и сфера нашей активности обеспечивает широкому кругу (специалистов) участие в формировании систем массового участия.\r\n\r\nРазнообразный и богатый опыт рамки и место обучения кадров влечет за собой процесс внедрения и модернизации дальнейших направлений развития. Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности играет важную роль в формировании форм развития.\r\n\r\nТоварищи! новая модель организационной деятельности влечет за собой процесс внедрения и модернизации направлений прогрессивного развития. Товарищи! реализация намеченных плановых заданий способствует подготовки и реализации новых предложений. С другой стороны реализация намеченных плановых заданий играет важную роль в формировании новых предложений.'),
(25,1,'am','title','Մարիա Փոլ'),
(26,1,'am','text','Ընկերության Տնօրեն'),
(27,1,'am','short','Ընկերության Հիմնադիր'),
(28,1,'am','bigtext','Ընկերներ: Կառույցի ամրապնդումն ու զարգացումը պահանջում են զարգացման հետագա ուղղությունների սահմանում և կատարելագործում: Մյուս կողմից, կազմակերպության գործող կառուցվածքը մեզանից պահանջում է վերլուծել զարգացման մոդելը: Նմանապես, կազմակերպչական գործունեության նոր մոդելը թույլ է տալիս կատարել կարևոր առաջադրանքներ ՝ զարգացման մոդել մշակելու համար:\r\n\r\nԲարձր մակարդակի գաղափարական նկատառումները, ինչպես նաև կառուցվածքի ամրապնդումն ու զարգացումը մեզ թույլ են տալիս իրականացնել կարևոր առաջադրանքներ նոր առաջարկների մշակման գործում: Այնուամենայնիվ, չպետք է մոռանալ, որ լայն ակտիվի հետ խորհրդակցելը թույլ է տալիս իրականացնել կարևոր առաջադրանքներ ՝ զարգացման հետագա ոլորտները զարգացնելու համար: Մյուս կողմից, գործունեության տարբեր ձևերի հետագա զարգացումը մեզ թույլ է տալիս գնահատել զարգացման հետագա ուղղությունների նշանակությունը: Նմանապես, լայն ակտիվի հետ խորհրդակցությունը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում: Շրջանակների և վերապատրաստման վայրի բազմազան և հարուստ փորձը կարևոր դեր է խաղում զանգվածային մասնակցության համակարգերի ձևավորման գործում: Ընկերներ: մշտական ​​քանակական աճը և մեր գործունեության շրջանակը ապահովում են զանգվածային մասնակցության համակարգերի ձևավորմանը մասնակցության լայն շրջանակ (մասնագետներ):\r\n\r\nՇրջանակի բազմազան և հարուստ փորձը և կադրերի պատրաստման վայրը ենթադրում են զարգացման հետագա ոլորտների իրականացման և արդիականացման գործընթաց: Մշտական ​​քանակական աճի բազմազան և հարուստ փորձ և մեր գործունեության շրջանակը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում:\r\n\r\nԸնկերներ: կազմակերպչական գործունեության նոր մոդելը ենթադրում է առաջանցիկ զարգացման ուղղությունների իրականացման և արդիականացման գործընթաց: Ընկերներ: նախատեսվող թիրախների իրականացումը նպաստում է նոր առաջարկների պատրաստմանը և իրականացմանը: Մյուս կողմից, պլանավորված թիրախների իրականացումը կարևոր դեր է խաղում նոր առաջարկությունների ձևավորման գործում:'),
(29,7,'am','title','Մարիա Փոլ'),
(30,7,'am','text','Ընկերության Տնօրեն'),
(31,7,'am','short','Ընկերության Հիմնադիր'),
(32,7,'am','bigtext','Ընկերներ: Կառույցի ամրապնդումն ու զարգացումը պահանջում են զարգացման հետագա ուղղությունների սահմանում և կատարելագործում: Մյուս կողմից, կազմակերպության գործող կառուցվածքը մեզանից պահանջում է վերլուծել զարգացման մոդելը: Նմանապես, կազմակերպչական գործունեության նոր մոդելը թույլ է տալիս կատարել կարևոր առաջադրանքներ ՝ զարգացման մոդել մշակելու համար:\r\n\r\nԲարձր մակարդակի գաղափարական նկատառումները, ինչպես նաև կառուցվածքի ամրապնդումն ու զարգացումը մեզ թույլ են տալիս իրականացնել կարևոր առաջադրանքներ նոր առաջարկների մշակման գործում: Այնուամենայնիվ, չպետք է մոռանալ, որ լայն ակտիվի հետ խորհրդակցելը թույլ է տալիս իրականացնել կարևոր առաջադրանքներ ՝ զարգացման հետագա ոլորտները զարգացնելու համար: Մյուս կողմից, գործունեության տարբեր ձևերի հետագա զարգացումը մեզ թույլ է տալիս գնահատել զարգացման հետագա ուղղությունների նշանակությունը: Նմանապես, լայն ակտիվի հետ խորհրդակցությունը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում: Շրջանակների և վերապատրաստման վայրի բազմազան և հարուստ փորձը կարևոր դեր է խաղում զանգվածային մասնակցության համակարգերի ձևավորման գործում: Ընկերներ: մշտական ​​քանակական աճը և մեր գործունեության շրջանակը ապահովում են զանգվածային մասնակցության համակարգերի ձևավորմանը մասնակցության լայն շրջանակ (մասնագետներ):\r\n\r\nՇրջանակի բազմազան և հարուստ փորձը և կադրերի պատրաստման վայրը ենթադրում են զարգացման հետագա ոլորտների իրականացման և արդիականացման գործընթաց: Մշտական ​​քանակական աճի բազմազան և հարուստ փորձ և մեր գործունեության շրջանակը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում:\r\n\r\nԸնկերներ: կազմակերպչական գործունեության նոր մոդելը ենթադրում է առաջանցիկ զարգացման ուղղությունների իրականացման և արդիականացման գործընթաց: Ընկերներ: նախատեսվող թիրախների իրականացումը նպաստում է նոր առաջարկների պատրաստմանը և իրականացմանը: Մյուս կողմից, պլանավորված թիրախների իրականացումը կարևոր դեր է խաղում նոր առաջարկությունների ձևավորման գործում:'),
(33,8,'am','title','Մարիա Փոլ'),
(34,8,'am','text','Ընկերության Տնօրեն'),
(35,8,'am','short','Ընկերության Հիմնադիր'),
(36,8,'am','bigtext','Ընկերներ: Կառույցի ամրապնդումն ու զարգացումը պահանջում են զարգացման հետագա ուղղությունների սահմանում և կատարելագործում: Մյուս կողմից, կազմակերպության գործող կառուցվածքը մեզանից պահանջում է վերլուծել զարգացման մոդելը: Նմանապես, կազմակերպչական գործունեության նոր մոդելը թույլ է տալիս կատարել կարևոր առաջադրանքներ ՝ զարգացման մոդել մշակելու համար:\r\n\r\nԲարձր մակարդակի գաղափարական նկատառումները, ինչպես նաև կառուցվածքի ամրապնդումն ու զարգացումը մեզ թույլ են տալիս իրականացնել կարևոր առաջադրանքներ նոր առաջարկների մշակման գործում: Այնուամենայնիվ, չպետք է մոռանալ, որ լայն ակտիվի հետ խորհրդակցելը թույլ է տալիս իրականացնել կարևոր առաջադրանքներ ՝ զարգացման հետագա ոլորտները զարգացնելու համար: Մյուս կողմից, գործունեության տարբեր ձևերի հետագա զարգացումը մեզ թույլ է տալիս գնահատել զարգացման հետագա ուղղությունների նշանակությունը: Նմանապես, լայն ակտիվի հետ խորհրդակցությունը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում: Շրջանակների և վերապատրաստման վայրի բազմազան և հարուստ փորձը կարևոր դեր է խաղում զանգվածային մասնակցության համակարգերի ձևավորման գործում: Ընկերներ: մշտական ​​քանակական աճը և մեր գործունեության շրջանակը ապահովում են զանգվածային մասնակցության համակարգերի ձևավորմանը մասնակցության լայն շրջանակ (մասնագետներ):\r\n\r\nՇրջանակի բազմազան և հարուստ փորձը և կադրերի պատրաստման վայրը ենթադրում են զարգացման հետագա ոլորտների իրականացման և արդիականացման գործընթաց: Մշտական ​​քանակական աճի բազմազան և հարուստ փորձ և մեր գործունեության շրջանակը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում:\r\n\r\nԸնկերներ: կազմակերպչական գործունեության նոր մոդելը ենթադրում է առաջանցիկ զարգացման ուղղությունների իրականացման և արդիականացման գործընթաց: Ընկերներ: նախատեսվող թիրախների իրականացումը նպաստում է նոր առաջարկների պատրաստմանը և իրականացմանը: Մյուս կողմից, պլանավորված թիրախների իրականացումը կարևոր դեր է խաղում նոր առաջարկությունների ձևավորման գործում:'),
(37,9,'am','title','Մարիա Փոլ'),
(38,9,'am','text','Ընկերության Տնօրեն'),
(39,9,'am','short','Ընկերության Հիմնադիր'),
(40,9,'am','bigtext','Ընկերներ: Կառույցի ամրապնդումն ու զարգացումը պահանջում են զարգացման հետագա ուղղությունների սահմանում և կատարելագործում: Մյուս կողմից, կազմակերպության գործող կառուցվածքը մեզանից պահանջում է վերլուծել զարգացման մոդելը: Նմանապես, կազմակերպչական գործունեության նոր մոդելը թույլ է տալիս կատարել կարևոր առաջադրանքներ ՝ զարգացման մոդել մշակելու համար:\r\n\r\nԲարձր մակարդակի գաղափարական նկատառումները, ինչպես նաև կառուցվածքի ամրապնդումն ու զարգացումը մեզ թույլ են տալիս իրականացնել կարևոր առաջադրանքներ նոր առաջարկների մշակման գործում: Այնուամենայնիվ, չպետք է մոռանալ, որ լայն ակտիվի հետ խորհրդակցելը թույլ է տալիս իրականացնել կարևոր առաջադրանքներ ՝ զարգացման հետագա ոլորտները զարգացնելու համար: Մյուս կողմից, գործունեության տարբեր ձևերի հետագա զարգացումը մեզ թույլ է տալիս գնահատել զարգացման հետագա ուղղությունների նշանակությունը: Նմանապես, լայն ակտիվի հետ խորհրդակցությունը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում: Շրջանակների և վերապատրաստման վայրի բազմազան և հարուստ փորձը կարևոր դեր է խաղում զանգվածային մասնակցության համակարգերի ձևավորման գործում: Ընկերներ: մշտական ​​քանակական աճը և մեր գործունեության շրջանակը ապահովում են զանգվածային մասնակցության համակարգերի ձևավորմանը մասնակցության լայն շրջանակ (մասնագետներ):\r\n\r\nՇրջանակի բազմազան և հարուստ փորձը և կադրերի պատրաստման վայրը ենթադրում են զարգացման հետագա ոլորտների իրականացման և արդիականացման գործընթաց: Մշտական ​​քանակական աճի բազմազան և հարուստ փորձ և մեր գործունեության շրջանակը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում:\r\n\r\nԸնկերներ: կազմակերպչական գործունեության նոր մոդելը ենթադրում է առաջանցիկ զարգացման ուղղությունների իրականացման և արդիականացման գործընթաց: Ընկերներ: նախատեսվող թիրախների իրականացումը նպաստում է նոր առաջարկների պատրաստմանը և իրականացմանը: Մյուս կողմից, պլանավորված թիրախների իրականացումը կարևոր դեր է խաղում նոր առաջարկությունների ձևավորման գործում:'),
(41,10,'am','title','Մարիա Փոլ'),
(42,10,'am','text','Ընկերության Տնօրեն'),
(43,10,'am','short','Ընկերության Հիմնադիր'),
(44,10,'am','bigtext','Ընկերներ: Կառույցի ամրապնդումն ու զարգացումը պահանջում են զարգացման հետագա ուղղությունների սահմանում և կատարելագործում: Մյուս կողմից, կազմակերպության գործող կառուցվածքը մեզանից պահանջում է վերլուծել զարգացման մոդելը: Նմանապես, կազմակերպչական գործունեության նոր մոդելը թույլ է տալիս կատարել կարևոր առաջադրանքներ ՝ զարգացման մոդել մշակելու համար:\r\n\r\nԲարձր մակարդակի գաղափարական նկատառումները, ինչպես նաև կառուցվածքի ամրապնդումն ու զարգացումը մեզ թույլ են տալիս իրականացնել կարևոր առաջադրանքներ նոր առաջարկների մշակման գործում: Այնուամենայնիվ, չպետք է մոռանալ, որ լայն ակտիվի հետ խորհրդակցելը թույլ է տալիս իրականացնել կարևոր առաջադրանքներ ՝ զարգացման հետագա ոլորտները զարգացնելու համար: Մյուս կողմից, գործունեության տարբեր ձևերի հետագա զարգացումը մեզ թույլ է տալիս գնահատել զարգացման հետագա ուղղությունների նշանակությունը: Նմանապես, լայն ակտիվի հետ խորհրդակցությունը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում: Շրջանակների և վերապատրաստման վայրի բազմազան և հարուստ փորձը կարևոր դեր է խաղում զանգվածային մասնակցության համակարգերի ձևավորման գործում: Ընկերներ: մշտական ​​քանակական աճը և մեր գործունեության շրջանակը ապահովում են զանգվածային մասնակցության համակարգերի ձևավորմանը մասնակցության լայն շրջանակ (մասնագետներ):\r\n\r\nՇրջանակի բազմազան և հարուստ փորձը և կադրերի պատրաստման վայրը ենթադրում են զարգացման հետագա ոլորտների իրականացման և արդիականացման գործընթաց: Մշտական ​​քանակական աճի բազմազան և հարուստ փորձ և մեր գործունեության շրջանակը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում:\r\n\r\nԸնկերներ: կազմակերպչական գործունեության նոր մոդելը ենթադրում է առաջանցիկ զարգացման ուղղությունների իրականացման և արդիականացման գործընթաց: Ընկերներ: նախատեսվող թիրախների իրականացումը նպաստում է նոր առաջարկների պատրաստմանը և իրականացմանը: Մյուս կողմից, պլանավորված թիրախների իրականացումը կարևոր դեր է խաղում նոր առաջարկությունների ձևավորման գործում:'),
(45,11,'am','title','Մարիա Փոլ'),
(46,11,'am','text','Ընկերության Տնօրեն'),
(47,11,'am','short','Ընկերության Հիմնադիր'),
(48,11,'am','bigtext','Ընկերներ: Կառույցի ամրապնդումն ու զարգացումը պահանջում են զարգացման հետագա ուղղությունների սահմանում և կատարելագործում: Մյուս կողմից, կազմակերպության գործող կառուցվածքը մեզանից պահանջում է վերլուծել զարգացման մոդելը: Նմանապես, կազմակերպչական գործունեության նոր մոդելը թույլ է տալիս կատարել կարևոր առաջադրանքներ ՝ զարգացման մոդել մշակելու համար:\r\n\r\nԲարձր մակարդակի գաղափարական նկատառումները, ինչպես նաև կառուցվածքի ամրապնդումն ու զարգացումը մեզ թույլ են տալիս իրականացնել կարևոր առաջադրանքներ նոր առաջարկների մշակման գործում: Այնուամենայնիվ, չպետք է մոռանալ, որ լայն ակտիվի հետ խորհրդակցելը թույլ է տալիս իրականացնել կարևոր առաջադրանքներ ՝ զարգացման հետագա ոլորտները զարգացնելու համար: Մյուս կողմից, գործունեության տարբեր ձևերի հետագա զարգացումը մեզ թույլ է տալիս գնահատել զարգացման հետագա ուղղությունների նշանակությունը: Նմանապես, լայն ակտիվի հետ խորհրդակցությունը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում: Շրջանակների և վերապատրաստման վայրի բազմազան և հարուստ փորձը կարևոր դեր է խաղում զանգվածային մասնակցության համակարգերի ձևավորման գործում: Ընկերներ: մշտական ​​քանակական աճը և մեր գործունեության շրջանակը ապահովում են զանգվածային մասնակցության համակարգերի ձևավորմանը մասնակցության լայն շրջանակ (մասնագետներ):\r\n\r\nՇրջանակի բազմազան և հարուստ փորձը և կադրերի պատրաստման վայրը ենթադրում են զարգացման հետագա ոլորտների իրականացման և արդիականացման գործընթաց: Մշտական ​​քանակական աճի բազմազան և հարուստ փորձ և մեր գործունեության շրջանակը կարևոր դեր է խաղում զարգացման ձևերի ձևավորման գործում:\r\n\r\nԸնկերներ: կազմակերպչական գործունեության նոր մոդելը ենթադրում է առաջանցիկ զարգացման ուղղությունների իրականացման և արդիականացման գործընթաց: Ընկերներ: նախատեսվող թիրախների իրականացումը նպաստում է նոր առաջարկների պատրաստմանը և իրականացմանը: Մյուս կողմից, պլանավորված թիրախների իրականացումը կարևոր դեր է խաղում նոր առաջարկությունների ձևավորման գործում:'),
(49,1,'ru','btn','Подробнее'),
(50,1,'am','btn','Մանրամասն'),
(51,7,'am','btn','Մանրամասն'),
(52,7,'ru','btn','Подробнее'),
(53,8,'ru','btn','Подробнее'),
(54,8,'am','btn','Մանրամասն'),
(55,9,'am','btn','Մանրամասն'),
(56,9,'ru','btn','Подробнее'),
(57,10,'ru','btn','Подробнее'),
(58,10,'am','btn','Մանրամասն'),
(59,11,'am','btn','Մանրամասն'),
(60,11,'ru','btn','Подробнее');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

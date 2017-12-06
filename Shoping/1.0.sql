/*
SQLyog  v12.2.6 (64 bit)
MySQL - 5.7.3-m13 : Database - shopping
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shopping` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shopping`;

/*Table structure for table `car` */

DROP TABLE IF EXISTS `car`;

CREATE TABLE `car` (
  `g_id` int(11) DEFAULT NULL,
  `u_username` varchar(20) DEFAULT NULL,
  `c_time` varchar(20) DEFAULT NULL,
  `c_pay` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `car` */

/*Table structure for table `contact` */

DROP TABLE IF EXISTS `contact`;

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `u_name` varchar(255) NOT NULL,
  `u_email` varchar(255) DEFAULT NULL,
  `u_phone` int(255) NOT NULL,
  `message` varchar(800) NOT NULL DEFAULT '',
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `contact` */

/*Table structure for table `goods` */

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `g_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `g_name` varchar(50) NOT NULL COMMENT '商品名字',
  `g_detail` varchar(50) NOT NULL COMMENT '详情信息',
  `g_cost` int(11) NOT NULL COMMENT '原价',
  `g_price` int(11) NOT NULL COMMENT '现价',
  `g_brand` varchar(20) NOT NULL COMMENT '品牌',
  `g_color` varchar(10) NOT NULL COMMENT '颜色',
  `g_color_o` varchar(10) NOT NULL COMMENT '颜色2',
  `g_color_t` varchar(10) NOT NULL COMMENT '颜色1',
  `g_address` varchar(50) NOT NULL COMMENT '厂家',
  `g_picture` varchar(50) NOT NULL COMMENT '照片',
  `g_picture2` varchar(50) DEFAULT NULL,
  `g_picture3` varchar(50) DEFAULT NULL,
  `g_picture4` varchar(50) DEFAULT NULL,
  `g_picture5` varchar(50) DEFAULT NULL,
  `g_info` varchar(500) DEFAULT NULL COMMENT '详情信息',
  `g_size` varchar(500) DEFAULT NULL COMMENT '规格',
  `g_class` varchar(10) DEFAULT NULL COMMENT '所属的分类',
  PRIMARY KEY (`g_id`),
  KEY `g_id` (`g_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `goods` */

insert  into `goods`(`g_id`,`g_name`,`g_detail`,`g_cost`,`g_price`,`g_brand`,`g_color`,`g_color_o`,`g_color_t`,`g_address`,`g_picture`,`g_picture2`,`g_picture3`,`g_picture4`,`g_picture5`,`g_info`,`g_size`,`g_class`) values 
(1,'Apple iPhone X (A1865) 64GB 银色','iphone X',5999,5799,'Apple','红色','黄色','银色','四川成都','IphoneX(1)20171129.jpg','IphoneX(1)20171129.jpg','IphoneX(1).jpg','IphoneX(1)20171129.jpg','IphoneX(1)20171129.jpg','iPhone X显示屏是iPhone有史以来最为出色一块屏幕，支持3 D Touch压感操作，支持HDR显示。iPhone X使用Face ID人脸识别。额头处除了传统的光线与距离传感器，集成了红外线等传感器，其前置摄像头也提升到了700万像素，支持背景虚化自拍。iPhone X加入了无线充电功能，支持IP67级别防水iPhone X搭载的A11 Bionic处理器加入人工智能神经网络和AR方面的支持，搭载了提升拍照的苹果独立设计的ISP。截止发布iPhone X前苹果性能最为强劲的一款处理器。','屏幕尺寸5.8英寸，重量174克，高度143.6mm，宽度和厚度分别为70.9mm、7.7mm，2436 * 1125 像素分辨率，458 ppi。 背部后置双摄，为1200万像素广角镜头（F/1.8光圈）+1200万像素长焦镜头（F/2.4光圈）组合，支持人像模式背景虚化。 电池容量为2716mAh。 处理器：A11 Bionic采用6核64位架构，集成M11运动协处理器，A11比A10运行速度提升70%，苹果自主研发的GPU性能则提升30%。','大牌专享'),
(2,'Samsung/三星 GALAXY S8 SM-G9500','三星Galaxy S8',4999,4799,'Samsung','太空灰','土豪金','大红','四川遂宁','GalaxyS8(1)20171129.jpg','GalaxyS8(1)20171129.jpg','GalaxyS8(1)20171129.jpg','GalaxyS8(1)20171129.jpg','GalaxyS8(1)20171129.jpg','三星Galaxy S8/S8+采用了前所未有的全视曲面屏和无边框视觉设计，手机正反两面均采用第五代康宁大猩猩玻璃，标志性的Home键去掉后屏占比提高到了84%。此外，三星Galaxy S8/S8+拥有谜夜黑、耀星银、烟晶灰、雾屿蓝和绮梦金五种配色。两者均搭载顶尖的2K显示屏，屏幕尺寸分别为5.8英寸和6.2英寸。相比上代，拥有更大屏幕、更窄边框和宽度，配合无缝衔接的曲面玻璃机身+金属中框，带来了更好的握持感。手机屏幕的比例为18.5：9，四角为独特的圆弧形，观看视频时黑边效果更好。作为全球首台经超高清联盟（UHD Alliance）认证','者均搭载顶尖的2K显示屏，屏幕尺寸分别为5.8英寸和6.2英寸。相比上代，拥有更大屏幕、更窄边框和宽度，配合无缝衔接的曲面玻璃机身+金属中框，带来了更好的握持感。手机屏幕的比例为18.5：9，四角为独特的圆弧形，观看视频时黑边效果更好。作为全球首台经超高清联盟（UHD Alliance）认证，符合MOBILE HDR PREMIUMTM规范的移动设备，三星Galaxy S8/S8+能够让用户在观看节目时，体验到如电影制作人要求级别的鲜艳色彩和对比','大牌专享'),
(3,'Apple/苹果 iPhone 8 Plus 全网通4G版手机','iphone8',5999,5998,'Apple','太空灰','黄色','银色','四川广安','Iphone8(1)20171129.jpg','Iphone8(1)20171129.jpg','Iphone8(1)20171129.jpg','Iphone8(1)20171129.jpg','Iphone8(1)20171129.jpg','iPhone 8搭载两个性能芯片，两个性能核心，四个高性能核心。采用A11处理器，支持无线充电。配置了新一代A11 Bionic处理器，运行速度比上一代A10处理器快30%，还集成了神经网络引擎。支持Touch ID，还有一个特点是其图形传感器加入了对AR技术的支持','屏幕规格：4.7 英寸1334 x 750 像素分辨率，326 ppiCPU型号：苹果A11（64位六核）RAM内存：2GBROM存储：64GB/256GB相机规格：前置700万和后置1200万像素摄像头（支持IOS光学防抖）电池容量：1821mAh网络制式：全网通（单卡单待）操作系统：iOS 11系统机身尺寸：138.4x67.3x7.3 mm（148g）机身颜色：金色、银色、深空灰色参考价格：5888元/7188元','大牌专享'),
(4,'vivo X20 面部识别 逆光拍照','Vivo X20',2999,2888,'Vivo','红色','黄色','银色','四川成都','VivoX20(1)20171129.jpg','VivoX20(1)20171129.jpg','VivoX20(1)20171129.jpg','VivoX20(1)20171129.jpg','VivoX20(1)20171129.jpg','vivo X20是vivo智能手机于2017年9月21日在北京·居庸关长城正式发布的全面屏新机，配备6.01寸超大屏幕，采用1200万像素双前置摄像头和1200万像素+500万像素的后置摄像头的相机方案','vivo X20前后1200万像素传感器，均采用双核像素对焦（感光单元为2400万个），像素单位达1.28μm，最基础保证了拍照画质，0.03秒快速对焦，外加F2.0的光圈（前置为F1.8），在低光照夜景的环境下也会有出色表现。后置方面，在此基础上还增加了500万像素景深摄像头，在后置人像的拍照功能上实现更多玩法。在拍照上，vivo的X系列和Xplay系列分别主打前置和后置拍照，这一次全面屏vivo X20前后拍照更加出色。前后1200万像素传感器，均采用双核像素对焦','大牌专享'),
(5,' R11正品智能原装plus新款全网通2017红r9 oppor11手机 r11s','OPPO R11',4000,3000,'Oppo','红色','土豪金','白色','四川汶川','OPPOR11(1)20171129.jpg','OPPOR11(1)20171129.jpg','OPPOR11(1)20171129.jpg','OPPOR11(1)20171129.jpg','OPPOR11(1)20171129.jpg','OPPO R11系列继续采用金属一体机身和正面超窄边框设计；不同的是，这一代产品机身更为纤薄，经过背面XY轴的弧度调整，让机身从握感和视觉都更好','OPPO R11的前后置摄像头都达到2000万像素，将会配备1600万像素广角+2000万像素长焦双摄像头，并提供了人像模式。其中，2000万像素长焦镜头还可以实现2倍无损变焦，甚至10的数码变焦功能。','热门推荐'),
(6,' R11正品智能原装plus新款全网通2017红r9 oppor11手机 r11s','魅族Noto5',4000,3000,'Meizu','红色','白色','黑色','四川成都','MeizuNote6(1)20171129.jpg','MeizuNote6(1)20171129.jpg','MeizuNote6(1)20171129.jpg','MeizuNote6(1)20171129.jpg','MeizuNote6(1)20171129.jpg','OPPO R11的前后置摄像头都达到2000万像素，将会配备1600万像素广角+2000万像素长焦双摄像头，并提供了人像模式。其中，2000万像素长焦镜头还可以实现2倍无损变焦，甚至10的数码变焦功能。','OPPO R11的前后置摄像头都达到2000万像素，将会配备1600万像素广角+2000万像素长焦双摄像头，并提供了人像模式。其中，2000万像素长焦镜头还可以实现2倍无损变焦，甚至10的数码变焦功能。','热门推荐'),
(7,'vivo X20 面部识别 逆光拍照','小米 5X',4000,3000,'XIMI','白色','红色','黑色','四川成都','Mi(1)20171129.jpg','Mi(1)20171129.jpg','Mi(1)20171129.jpg','Mi(1)20171129.jpg','Mi(1)20171129.jpg','OPPO R11的前后置摄像头都达到2000万像素，将会配备1600万像素广角+2000万像素长焦双摄像头，并提供了人像模式。其中，2000万像素长焦镜头还可以实现2倍无损变焦，甚至10的数码变焦功能。','OPPO R11的前后置摄像头都达到2000万像素，将会配备1600万像素广角+2000万像素长焦双摄像头，并提供了人像模式。其中，2000万像素长焦镜头还可以实现2倍无损变焦，甚至10的数码变焦功能。','热门推荐'),
(8,'Apple/苹果 iPhone 8 Plus 全网通4G版手机','荣耀 V9',3999,3998,'huawei','白色','红色','蓝色','四川成都','honor9(1)20171129.jpg','honor9(1)20171129.jpg','honor9(1)20171129.jpg','honor9(1)20171129.jpg','honor9(1)20171129.jpg','vivo X20是vivo智能手机于2017年9月21日在北京·居庸关长城正式发布的全面屏新机，配备6.01寸超大屏幕，采用1200万像素双前置摄像头和1200万像素+500万像素的后置摄像头的相机方案','vivo X20是vivo智能手机于2017年9月21日在北京·居庸关长城正式发布的全面屏新机，配备6.01寸超大屏幕，采用1200万像素双前置摄像头和1200万像素+500万像素的后置摄像头的相机方案','热门推荐');

/*Table structure for table `order` */

DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
  `o_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_username` varchar(20) DEFAULT NULL,
  `u_name` varchar(10) DEFAULT NULL,
  `g_id` int(11) NOT NULL,
  `g_name` varchar(50) DEFAULT NULL,
  `o_time` varchar(50) DEFAULT NULL,
  `o_price` int(11) DEFAULT NULL,
  `u_address` varchar(50) DEFAULT NULL,
  `o_pay` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`o_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `order` */

/*Table structure for table `u_adress` */

DROP TABLE IF EXISTS `u_adress`;

CREATE TABLE `u_adress` (
  `u_adress_id` int(11) NOT NULL,
  `u_adress1` varchar(50) NOT NULL,
  `u_adress2` varchar(50) DEFAULT NULL,
  `u_adress3` varchar(50) DEFAULT NULL,
  `u_adress4` varchar(50) DEFAULT NULL,
  `u_adress5` varchar(50) DEFAULT NULL,
  `u_adress6` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`u_adress_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `u_adress` */

/*Table structure for table `userinfo` */

DROP TABLE IF EXISTS `userinfo`;

CREATE TABLE `userinfo` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id编号',
  `u_username` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名',
  `u_password` varchar(50) NOT NULL DEFAULT '' COMMENT '密码',
  `u_sex` tinyint(4) NOT NULL,
  `u_phone` varchar(11) DEFAULT NULL COMMENT '手机号码',
  `u_email` varchar(20) DEFAULT NULL COMMENT '邮箱号码',
  `u_power` int(11) NOT NULL,
  `u_name` varchar(10) NOT NULL,
  `u_adress_id` int(11) DEFAULT NULL,
  `u_passwordAnswer` varchar(50) DEFAULT NULL,
  `u_passwordQuestion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`u_username`),
  KEY `id` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `userinfo` */

insert  into `userinfo`(`u_id`,`u_username`,`u_password`,`u_sex`,`u_phone`,`u_email`,`u_power`,`u_name`,`u_adress_id`,`u_passwordAnswer`,`u_passwordQuestion`) values 
(1,'admin','admin',0,'0000','000000000@qq.com',0,'',0,'我的幸运数','7'),
(2,'梁康林','1234',0,'15182659077','352913920@qq.com',1,'梁康林',NULL,'','');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.18-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema `bin`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `bin`;
USE `bin`;

--
-- Table structure for table `bin`.`barangaystats`
--

DROP TABLE IF EXISTS `barangaystats`;
CREATE TABLE `barangaystats` (
  `idBarangayStats` int(10) unsigned NOT NULL auto_increment,
  `Name` varchar(100) NOT NULL default '',
  `InformantNumber` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`idBarangayStats`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bin`.`barangaystats`
--

/*!40000 ALTER TABLE `barangaystats` DISABLE KEYS */;
INSERT INTO `barangaystats` (`idBarangayStats`,`Name`,`InformantNumber`) VALUES 
 (1,'Balasinon',29),
 (2,'Buguis',19),
 (3,'Carre',5),
 (4,'Clib',5),
 (5,'Harada Butai',2),
 (6,'Katipunan',2),
 (7,'Kiblagon',0),
 (8,'Labon',0),
 (9,'Laperas',1),
 (10,'Lapla',0),
 (11,'Litos',0),
 (12,'Luparan',0),
 (13,'Mckinley',0),
 (14,'New Cebu',0),
 (15,'Osmeña',0),
 (16,'Palili',0),
 (17,'Parame',0),
 (18,'Poblacion',0),
 (19,'Roxas',0),
 (20,'Solongvale',1),
 (21,'Tagolilong',0),
 (22,'Tala-o',0),
 (23,'Talas',0),
 (24,'Tanwalang',0),
 (25,'Waterfall',2);
/*!40000 ALTER TABLE `barangaystats` ENABLE KEYS */;


--
-- Table structure for table `bin`.`child`
--

DROP TABLE IF EXISTS `child`;
CREATE TABLE `child` (
  `idChild` int(10) unsigned NOT NULL auto_increment,
  `Name` varchar(255) NOT NULL default '',
  `Bdate` varchar(55) default NULL,
  `Father_ID` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`idChild`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bin`.`child`
--

/*!40000 ALTER TABLE `child` DISABLE KEYS */;
INSERT INTO `child` (`idChild`,`Name`,`Bdate`,`Father_ID`) VALUES 
 (1,'Jamie','2015-09-30','50'),
 (2,'alsdhashdlkjh','2015-09-30','50'),
 (3,'lasdhnl;h','2015-09-24','51'),
 (5,'sdfsdfsdf','June 30, 2015','52'),
 (6,'ggggggggg','October 25, 2009','52'),
 (7,'asdkhasl;djhkl;jh','2015-09-30','52'),
 (8,'gggggggggggggggggg','September 23, 2015','52'),
 (9,'gggg','September 30, 2015','52'),
 (10,'hahahah','2015-09-16','51'),
 (11,'jamie','1990-12-08','5'),
 (12,'gggg','0000-00-00','13'),
 (13,'bbbbbbbbbb','0000-00-00','13'),
 (14,'lsjhfklsjahd','0001-01-01','5'),
 (15,'sadasdasd','0001-01-01','5'),
 (16,'asdasd','','5'),
 (17,'asdasd','2015/09/30','5'),
 (18,'jjjjjjjjjjjjjjjjjjjjjj','2002-05-29','5'),
 (19,'asdasdasd','September 30, 2015','5'),
 (20,'hhhh','gggggg','56'),
 (21,'lkjasdlk','September 30, 2015','6'),
 (22,'haskjdhkjh','','52'),
 (24,'ggggggggggggggg','September 29, 2015','52'),
 (25,'ggggggggggggggghhhhhhhhhh','September 28, 2015','52'),
 (26,'jalksjdlkjsdlkj','','46'),
 (27,'jlkjfdu','','46'),
 (28,'kjsdhfjhkjhkjh','','25');
INSERT INTO `child` (`idChild`,`Name`,`Bdate`,`Father_ID`) VALUES 
 (29,'ggggggggggggggggg','','25'),
 (30,'asdfasdasd','September 30, 2015','25'),
 (32,'iii','','5'),
 (33,'pppppppp','','5'),
 (35,'asdasd','September 22, 2015','57'),
 (36,'asdasd','September 23, 2015','57'),
 (37,'asdasd','September 30, 2015','58'),
 (39,'jkhkjhkljhkljhkjhkljhkjll','September 23, 2015','59'),
 (40,'jkhkjhkjhsdkjhfkjhg','','33'),
 (41,'Jamie','','1'),
 (42,'Alex','','1'),
 (43,'Lowe','','1');
/*!40000 ALTER TABLE `child` ENABLE KEYS */;


--
-- Table structure for table `bin`.`informant_info`
--

DROP TABLE IF EXISTS `informant_info`;
CREATE TABLE `informant_info` (
  `idInformant_info` bigint(20) unsigned NOT NULL auto_increment,
  `F_Name` varchar(55) NOT NULL default '',
  `M_Name` varchar(55) NOT NULL default '',
  `L_Name` varchar(55) NOT NULL default '',
  `Age` varchar(45) NOT NULL default '',
  `Nationality` varchar(45) NOT NULL default '',
  `Religion` varchar(45) NOT NULL default '',
  `Mar_status` varchar(45) NOT NULL default '',
  `Education` varchar(85) NOT NULL default '',
  `Alias` varchar(45) NOT NULL default '',
  `Place_Birth` varchar(45) NOT NULL default '',
  `P_Adrress` varchar(60) NOT NULL default '',
  `Per_Adrress` varchar(60) NOT NULL default '',
  `Zipcode` varchar(45) NOT NULL default '',
  `S_Codification` varchar(45) NOT NULL default '',
  `Status` varchar(45) NOT NULL default '',
  `B_PAdrress` varchar(45) NOT NULL default '',
  `B_PreAdress` varchar(45) NOT NULL default '',
  `Face` varchar(45) NOT NULL default '',
  `Hair` varchar(45) NOT NULL default '',
  `Complexion` varchar(45) NOT NULL default '',
  `Eyes` varchar(45) NOT NULL default '',
  `Build` varchar(45) NOT NULL default '',
  `Body` varchar(45) NOT NULL default '',
  `Gen_App` varchar(45) NOT NULL default '',
  `Iden_Char` varchar(80) NOT NULL default '',
  `Height` varchar(45) NOT NULL default '',
  `Mel_Service` varchar(60) NOT NULL default '',
  `Other_Org` varchar(60) NOT NULL default '',
  `F_Training` varchar(60) NOT NULL default '',
  `Employement` varchar(60) NOT NULL default '',
  `Position` varchar(45) NOT NULL default '',
  `N_Employer` varchar(80) NOT NULL default '',
  `TerminationDate` varchar(45) NOT NULL default '',
  `Mode_Con` varchar(45) NOT NULL default '',
  `Mob_no` varchar(45) NOT NULL default '',
  `Email` varchar(60) NOT NULL default '',
  `P_Con` varchar(80) NOT NULL default '',
  `P_Con_num` varchar(60) NOT NULL default '',
  `EntryTime` varchar(45) NOT NULL default '',
  `EntryDate` varchar(45) NOT NULL default '',
  `PictureFilePath` longtext NOT NULL,
  `CodeName` varchar(100) NOT NULL default '',
  `Psedonym` varchar(100) NOT NULL default '',
  `Handlers` varchar(60) NOT NULL default '',
  `OperationProject` varchar(100) NOT NULL default '',
  `SpouseName` varchar(100) NOT NULL default '',
  `TINNR` varchar(100) NOT NULL default '',
  `Gender` varchar(45) NOT NULL default '',
  `Target` varchar(100) NOT NULL default '',
  `D_Recuitment` date NOT NULL default '0000-00-00',
  `B_Date` date NOT NULL default '0000-00-00',
  `E_Time` time NOT NULL default '00:00:00',
  `E_Date` date NOT NULL default '0000-00-00',
  `Provice` varchar(255) NOT NULL default '',
  `Threat` varchar(255) NOT NULL default '',
  `Mun_City` varchar(255) NOT NULL default '',
  `BirthCounty` varchar(255) NOT NULL default '',
  `Type` varchar(255) NOT NULL default '',
  `Category` varchar(255) NOT NULL default '',
  `CriminalR` longtext NOT NULL,
  `Spouse_Bdate` varchar(55) default NULL,
  `IAPS_loc` varchar(255) NOT NULL default '',
  `SDCSDS_loc` varchar(255) NOT NULL default '',
  `infoType` varchar(55) NOT NULL default '',
  PRIMARY KEY  (`idInformant_info`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bin`.`informant_info`
--

/*!40000 ALTER TABLE `informant_info` DISABLE KEYS */;
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (1,'Raffy',' ','Madula','24','Filipino','Roman Catholic','Single','Bachelor of Science in Electronics Engineering','Rapi','Digos City','Purok 2','Purok 1','8009','123456789AsdZ','Active','Balasinon','Clib','Round','Black','Medium','Black','Large','Muscular','Large','Tattoo at left Arm','5\'8\"','','Sulop Crime Spotters','','NUP','Admin Assistant III','','','Mobile Phone','+639102972711','madula.raffy@yahoo.com','Jamie Eduardo Rosal','123456789','03:43:06','2015/09/9','C:/BIN_PIC/Raffy Madula.jpg','Jacques Snicket','Zeus','PO3 TELMO','','Single','1121287o','MALE','','2015-08-02','1990-11-09','03:43:06','2015-09-09','','','Select Municipality','','','Item 1','asdfghjkl;zxashgdqwghh1112172dbascjklasbam,.chsdfjkhsjknv,dfmbnvjkdbvkjdbn,xb ,mvhjdfhvk;lsdnvjsohgsljbksv','0001-01-01','','',''),
 (2,'Jamie Eduardo','Capuyan','Rosal','24','Fil','RC','Single','College','J_AweSome','Digos City','Digos City','Bansalan','8002','asdasd','Active','Buguis','Carre','Face','Hari','Fair','Eyes','Buldi','Body','Gen ap','Iden Char','5,7','Mil Ser','Member','For T','','','','','','Cel p','',' cont person','','01:30:13','2015/09/3','C:/BIN_PIC/Jamie EduardoCapuyanRosal.jpg','Mode name','','handlers','Project','Single','Tin','MALE','taget','2011-12-26','1990-12-08','01:30:13','2015-09-03','','','','','','Item 1','Awesome Guy','0000-00-00','','','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (3,'Alexes John','V','Ayo','24','Fil','RC','Single','College','AJ','Digos City','phase 3 - Perfecthomes ','phase 3 - Perfecthomes ','8002','aasd','Active','Waterfall','Balasinon','Sharp','Black','Fair','Brown','Skinny','Skinny','Skinny','Skinny','5\'7','na','na','na','DMMA','staff','Davao City','Contralwal','Phone','01293019239','Gmail.AYo','MAMA','12311','07:00:00','2015/09/5','C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/BIN_PIC/Alexes JohnAyoV.jpg','AJB','AJB','na','na','Single','123123','MALE','na','2009-12-28','1990-12-31','07:00:00','2015-09-05','Davao Sur','Ariana Grande','Digos city','PH','1','Item 1','bayot','0000-00-00','','',''),
 (4,'Daryl Francis','Nerbia','Ramos','42','fil','RC','Single','College','Bai ','Digos City','Taburin Digos City','Taburin Digos City','8002','1','Active','Katipunan','Clib','Face','Black','Dark','a','a','a','a','a','a','','','','PNPA','Cadet','','','','','','','','11:18:12','2015/09/5','C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/dist/BIN_PIC/Daryl FrancisRamosNerbia.jpg','a','a','a','a','Single','','MALE','a','2010-12-27','1990-12-31','11:18:12','2015-09-05','provine','aa','city mun','bir c','a','Item 1','Bai Darel lhalkdaskjdlasd','0000-00-00','','','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (5,'Hansel Jay','Castillo','Grengia','25','Fil','RC','Single','College','JayJay','Digos City','Dulangan','Dulangan','8002','123123','Active','Waterfall','Balasinon','Round','Black','Fair','Brown','Large','Medium','Short ','Big Arms','5\'5','Coast Guard','ICEP','na','IT staff','IT staff','PCG main','Regular','Phone','00910293','Hansel@Gmail.com','MAMA','019239123','11:15:23','2015/09/8','C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/BIN_PIC/Hansel JayGrengiaCastillo.jpg','HG','HG','na','Coast Guard','asdasd','909090123','MALE','farm','2010-12-27','1990-12-31','11:15:23','2015-09-08','','','Select Municipality','','','Item 1','','September 30, 2015','','',''),
 (6,'Honey May',' ','Lumen','24','Fil','RC','Single','College','Lumen','Digos City','Bansalan','Bansalan','8002','asdasd','Active','Carre','Harada Butai','','','Fair','','','','','','','','','','','','','','','','','','','11:09:10','2015/09/3','C:/BIN_PIC/Honey May Lumen.jpg','','','','','Single','','FEMALE','','2010-08-12','1990-03-18','11:09:10','2015-09-03','','','','','','Item 1','','0000-00-00','','','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (7,'Fresh Lianne','P.','Silvosa','23','Fil','RC','Single','College','Yhan','Digos city','Kiagot','Kiagot','8002','aasd','Active','Clib','Harada Butai','','','Fair','','','','','','5\'4','','','',' ,','','','','CP','09999','',' Jamie','12123','04:24:56','2015/09/3','C:/BIN_PIC/Fresh LianneP.Silvosa.jpg','','','','','Single','','FEMALE','','2015-12-28','1992-12-29','04:24:56','2015-09-03','','','','','','Item 1','hahahahhahahhahahahhahahasdlfhaksdhfklajghflkasjhdfkjashdfkljahsdfkjahsdklfjhaskldjfhaskldjfhaskldjfhaklsdjfhaklsdjfhaklsdjfhaklsjdfhaklsdjfhaklsjdfhaklsjdfhaklsjdfhaklsjdfhaklsjdfhakljsdfhkajsdfhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh\nhahahahhahahasdlfhaksdhfklajghflkasjhdfkjashdfkljahsdfkjahsdklfjhaskldjfhaskldjfhaskldjfhaklsdjfhaklsdjfhaklsdjfhaklsjdfhaklsdjfhaklsjdfhaklsjdfhaklsjdfhaklsjdfhaklsjdfhakljsdfhkajsdfhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh\nhahahahhahahasdlfhaksdhfklajghflkasjhdfkjashdfkljahsdfkjahsdklfjhaskldjfhaskldjfhaskldjfhaklsdjfhaklsdjfhaklsdjfhaklsjdfhaklsdjfhaklsjdfhaklsjdfhaklsjdfhaklsjdfhaklsjdfhakljsdfhkajsdfhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh\nhahahahhahahasdlfhaksdhfklajghflkasjhdfkjashdfkljahsdfkjahsdklfjhaskldjfhaskldjfhaskldjfhaklsdjfhaklsdjfhaklsdjfhaklsjdfhaklsdjfhaklsjdfhaklsjdfhaklsjdfhaklsjdfhaklsjdfhakljsdfhkajsdfhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh\nhahahahhahahasdlfhaksdhfklajghflkasjhdfkjashdfkljahsdfkjahsdklfjhaskldjfhaskldjfhaskldjfhaklsdjfhaklsdjfhaklsdjfhaklsjdfhaklsdjfhaklsjdfhaklsjdfhaklsjdfhaklsjdfhaklsjdfhakljsdfhkajsdfhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh\nhahahahhahahasdlfhaksdhfklajghflkasjhdfkjashdfkljahsdfkjahsdklfjhaskldjfhaskldjfhaskldjfhaklsdjfhaklsdjfhaklsdjfhaklsjdfhaklsdjfhaklsjdfhaklsjdfhaklsjdfhaklsjdfhaklsjdfhakljsdfhkajsdfhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh\nhahahahhahahasdlfhaksdhfklajghflkasjhdfkjashdfkljahsdfkjahsdklfjhaskldjfhaskldjfhaskldjfhaklsdjfhaklsdjfhaklsdjfhaklsjdfhaklsdjfhaklsjdfhaklsjdfhaklsjdfhaklsjdfhaklsjdfhakljsdfhkajsdfhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh\n','0000-00-00','','',''),
 (8,'Dog','asd','asd','asd','asd','asd','Single','asd','asdasd','asd','asd','asd','asd','asdasd','Active','Harada Butai','Katipunan','','','Select Complexion','','','','','','','','','','','','','','','','','','','09:06:01','2015/09/5','C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/BIN_PIC/Dogasdasd.jpg','','','PO3 Telmo','','Single','','MALE','','2009-08-25','2009-08-25','09:06:01','2015-09-05','Davao Sur','Lady Gaga','Sulop','PH','1','Item 1','laksdlajsldkjalskdjalskdjlaksdjlaksdjlaksjdlaksdjlaksdjalsdjkl;jhsdkljghsdkljghskdjhgksldhgklsjdhgksdjfhgksjgksjdhfgkjsdhfgkl','0000-00-00','','','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (9,'asd','asd','asd','0','asasd','asdasd','Married','asd','asdasd','asd','asd','asd','asdasd','asdasd','Active','Clib','Clib','','','Select Complexion','','','','','','','','','','','','','','','','','','','09:10:35','2015/09/8','C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/BIN_PIC/asdasdasd.jpg','','','','','asd','','MALE','','2015-08-11','2015-08-07','09:10:35','2015-09-08','asd','','Select Municipality','asd','','Item 1','','1000-01-01','','',''),
 (10,'asd','asd','asd','0','asdasd','asdasd','Single','asdasd','asd','asd','asd','asd','asdasd','asd','Non-Active','Buguis','Balasinon','','','Select Complexion','','','','','','','','','','','','','','','','','','','03:27:03','2015/09/9','C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/BIN_PIC/asdasdasd.jpg','','','','','Single','','FEMALE','','2015-08-19','2015-08-21','03:27:03','2015-09-09','asd','','Select Municipality','asd','','','','0001-01-01','','','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (11,'hhhh','hhh','hhh','123','hhhh','sasd','Married','asd','asdasd','asd','sad','asd','asd','asd','Active','Balasinon','Carre','','','','','','','','','','','','','','','','','','','','','','12:12:22','2015/08/26','C:/Users/JAMIEXXX3/Documents/sample/11.jpg','','','','','dsaasd','','MALE','','2015-08-12','2015-08-28','12:12:22','2015-08-26','asd','','asd','asd','','','','0000-00-00','','',''),
 (12,'asd','asdasd','asdasd','asd','asdasd','asd','Widowed','asd','asdasdasd','asd','asd','asdas','asdasd','asd','Active','Buguis','Harada Butai','','','','','','','','','','','','','','','','','','','','','','12:16:34','2015/08/26','C:/Users/JAMIEXXX3/Documents/sample/12.jpg','','','','','asd','','FEMALE','','2015-08-13','2015-08-21','12:16:34','2015-08-26','asd','','asd','asd','','','','0000-00-00','','','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (13,'aasdasd','asd','asd','asd','asdasd','asd','Widowed','asd','asdasdasd','asd','asd','asd','asdasd','asd','Non-Active','Balasinon','Balasinon','','','Fair','','','','','','','','','','','','','','','','','','','02:51:51','2015/09/4','C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/dist/BIN_PIC/aasdasdasdasd.jpg','','','','','asd','','MALE','','2015-08-04','2015-08-13','02:51:51','2015-09-04','asd','','asd','asd','','Item 1','','0000-00-00','','',''),
 (14,'qsldjl','kjlkjl;kdsjl','kjlkjsldkjfl','asdasd','sdasdasd','asdasdasd','Married','asdasd','asdasd','asd','asd','asdasd','asdasd','asdasd','Non-Active','Clib','Clib','','','','','','','','','','','','','','','','','','','','','','12:21:44','2015/08/26','C:/Users/JAMIEXXX3/Documents/sample/14.jpg','','','','','asdasd','','FEMALE','','2015-08-19','2015-08-13','12:21:44','2015-08-26','asd','','asd','asd','','','','0000-00-00','','','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (15,'asdasd','asd','asd','0','asdasd','asdasd','Married','asd','asdasdasd','asd','asd','asd','asdasd','asdasd','Active','Clib','Carre','','','Dark','','','','','','','','','','','','','','','','','','','03:22:06','2015/09/9','C:/Users/JAMIEXXX3/Documents/sample/15.jpg','','','','','asd','','MALE','','2015-08-19','2015-08-07','03:22:06','2015-09-09','asd','','Sulop','asd','','','','0001-01-01','','',''),
 (16,'dsdf','sdfsdf','sdf','sdf','sdf','sdf','Widowed','sdf','sdfsdfsdf','sdf','sdf','sdf','sdfsdf','sdfsd','Active','Carre','Clib','face','hair','Dark','eyes','bulid','body','Genral app','Iden Char','Hieht','','','','','','','','','','count11_olaf@yahoo.com','','','09:23:00','2015/09/5','C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/BIN_PIC/dsdfsdfsdfsdf.jpg','code name','Psysodname','Handlder','OP','sdf','','FEMALE','Target','2015-08-19','2015-08-20','09:23:00','2015-09-05','sdf','Threat','sdf','sdf','Type','Item 1','hahahhahahaha','0000-00-00','','','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (17,'asdasdasd','asdd','dddddddasdasd','asdasd','asd','asd','Married','asd','asdasdasd','asdasd','asd','asd','ggggggggggggggg','ggggggggggg','Active','Buguis','Harada Butai','','','','','','','','','','','','','','','','','','','','','','12:32:48','2015/08/26','C:/Users/JAMIEXXX3/Documents/sample/17.jpg','','','','','asdasd','','FEMALE','','2015-08-11','2015-08-21','12:32:48','2015-08-26','ggggggggggg','','gggggggggg','ggggggggggg','','','','0000-00-00','','',''),
 (18,'asdkjhkj','hkjhakljsdhk;jhggggggggggggggg','g','gg','gggg','ggg','Single','gggggggggggg','ggggggggggggggggggggggg','ggggggggggggg','ggggggggggggg','gggggggggggggg','ggggggggggggggg','ggg','Active','Balasinon','Buguis','','','','','','','','','','','','','','','','','','','','','','01:18:43','2015/08/26','C:/Users/JAMIEXXX3/Documents/sample/18.jpg','','','','','Single','','MALE','','2015-08-13','2015-08-14','01:18:43','2015-08-26','gggggggggggggggggggg','','ggggggggggggg','gggggggggggggg','','','','0000-00-00','','','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (19,'lajksdfadfs','asdfasdf','asdf','asdf','asdfasdf','asdf','Single','asdf','asdfasdfasdf','asdfasdf','asdf','asdf','asdfasdfasdf','asdfasdfasdf','Active','Buguis','Carre','','','','','','','','','','','','','','','','','','','','','','01:28:32','2015/08/26','C:/Users/JAMIEXXX3/Documents/sample/19.jpg','','','','','Single','','MALE','','2015-08-12','2015-08-14','01:28:32','2015-08-26','asdf','','asdf','asdf','','','','0000-00-00','','',''),
 (20,'gggggggggggggg','ggggg','hhhhhhhhhhhhhhhhh','0','hhhhhhhhhhhhhhhh','hhhhhhhhhhhhhhhhhhhhh','Single','hhhhhhhhhhhhhhhhh','hhhhh','hhhhhhhhhhhhh','hhh','hhhhhhhhhhhh','hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh','sdfgdfgdfg','Non-Active','Buguis','Balasinon','','','Select Complexion','','','','','','','','','','','','','','','','','','','09:18:22','2015/09/8','C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/BIN_PIC/gggggggggggggghhhhhhhhhhhhhhhhhggggg.jpg','','','','','Single','','FEMALE','','2015-08-05','2015-08-22','09:18:22','2015-09-08','hhhhhhhhhhhhhhhhh','','Select Municipality','hhhhhhhhhhhhhhhh','','Item 1','','0000-00-00','','','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (21,'gggggggg','ggggggggggggggg','gggggggggggggggggggggggg','ggggggggggggg','gggggggg','ggggggggggggggggggg','Widowed','ggggggggggggggggg','ggggggggggggggggggggg','ggggggggggggggggggg','gggggggggggggggggggggggg','ggggggggggggg','gggggggggggggggggggggggggggggg','ggggggggggggg','Active','Clib','Clib','','','','','','','','','','','','','','','','','','','','','','01:34:48','2015/08/26','C:/Users/JAMIEXXX3/Documents/sample/21.jpg','','','','','ggggggggg','','MALE','','2015-08-12','2015-08-07','01:34:48','2015-08-26','gggggggggggg','','gggggggggggg','gggggggggggg','','','','0000-00-00','','',''),
 (22,'aaaaaaaaaa','aaaaaaaaaaaaaaa','aaaaaaaaaaaaaaaaaaaa','asdasd','asdasdasdasd','asd','Married','ffffff','fffffffffffffffffff','fffffffffffffff','fffffffffffffff','fffffffffffff','ffffffffffffffffffffffffffff','ffffffffffff','Active','Balasinon','Buguis','','','','','','','','','','','','','','','','','','','','','','01:37:15','2015/08/26','C:/Users/JAMIEXXX3/Documents/sample/22.jpg','','','','','ddddddddddd','','FEMALE','','2015-08-11','2015-08-12','01:37:15','2015-08-26','fffffffffffff','','fffffffffff','ffffffffffffff','','','','0000-00-00','','','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (23,'aaaaaaaaa','aaaaaaaaaaaaaaaaa','aaaaaaaaaaaaaaaaaaaaa','aa','aaa','aa','Married','aaaaaaaaaa','aaaa','aaaaaaaaaaaaaa','aaaaaaaaaaaaaa','aaaaaaaaaaaaa','aaaaaaaaaaaaaaaaaaaaaaaaaaa','a','Active','Carre','Carre','','','','','','','','','','','','','','','','','','','','','','01:45:58','2015/08/26','C:/Users/JAMIEXXX3/Documents/sample/23.jpg','','','','','aaaaaaaaaaaa','','FEMALE','','2015-08-18','2015-08-11','01:45:58','2015-08-26','aaaaaaaaaaaa','','aaaaaaaaaaaa','aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa','','','','0000-00-00','','',''),
 (24,'asddddddd','aaaaaaaaaaa','aaaaaaaaaaaaaaa','aaaaaaaaaaaa','a','aaaaaaaaaaaaaa','Single','aaaaaaaaaa','aaaaaaaaaaaaaaaaaaaa','aaaaaaaaaaaa','aaaaaaaaaaa','aaaaaaaaaaa','aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa','aaaaaaaaaaa','Active','Balasinon','Clib','face','hair','Dark','eyes','buid','body','Genapp','Iden Char','Hieht','','','','','','','','','','','','','01:52:43','2015/08/26','C:/Users/JAMIEXXX3/Documents/sample/24.jpg','code name','psydname','PO3 TELMO','OP','Single','','FEMALE','Target','2015-08-11','2015-08-20','01:52:43','2015-08-26','aaaaaaaaaaaaaaaaaa','','aaaaaaaaaaaaa','aaaaaaaaaaaa','','','ggggggggggggggggggg','0000-00-00','','','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (25,'ddddddddddddddd','ddddddddddddddd','ddddddddddddddddd','asdasd','asdasdasd','asdasd','Married','dddddddddddd','asdasdasdasd','dddddddddddddd','dddddddddddd','ddddddddddddd','dddddddddddddddddddddddddddddddddd','asdasd','Active','Balasinon','Buguis','','','Select Complexion','','','','','','','','','','','','','','','','','','','02:03:10','2015/08/26','C:/Users/JAMIEXXX3/Documents/sample/25.jpg','','','','','asdddddddddddddddd','','MALE','','2015-08-18','2015-08-14','02:03:10','2015-08-26','ddddddddddddd','jjjjjjjjjjjjjjjjjjjjjkkkkkkkkkkkkkkkkkkk','dddddddddddd','ddddddddddd','','','','0000-00-00','','',''),
 (26,'asd','ddddddddddddddddddddddddddd','dddddddddddddddddddd','asdasd','asdasd','asdasd','Married','aaaaaaaaaaaaaa','aaaaaaaaaaaaaaaaaaaaaaa','aaaaaaaaaaaa','aaaaaaaaaaaaaaa','aaaaaaaaaaa','aaaaaaaaaaaaaaaaaaaaa','aaaaaaaaaaaaaaaaaaaa','Active','Balasinon','Buguis','','','Select Complexion','','','','','','','','','','','','','','','','','','','04:48:36','2015/09/6','C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/BIN_PIC/asdddddddddddddddddddddddddddddddddddddddddddddddd.jpg','','','','','a','','MALE','','2010-12-01','2015-08-08','04:48:36','2015-09-06','aaaaaaaaaaaaa','','aaaaaaaaaaaaaaa','aaaaaaaaaaaa','','Item 1',',,;;\';\'\n;\'\nl;guyr7ryljjlghcvncghgcgchvjhHJHKJBKJBK','0000-00-00','','','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (27,'asd','ddddddddddddd','ddddddddddddddddddddddddddd','asdasd','asdasdasd','asdasd','Single','aaaaaaaaaaaaaaaaaaaaa','aaaaaaaaaaaaaaaaaaaaaaaaaaaaa','aaaaaaaaaaaa','aaaaaaaaaaaa','aaaaaaaaaaaa','aaaaaaaaaaaaaaaaaaaaaaaa','aa','Active','Buguis','Clib','gggggggggg','gggggggggggggg','Dark','ggggg','gggggggggggg','gggggggggggg','gggggggggg','ggggggggggg','ggggggggggggggggg','ML','OTHERG','FT','EMP','POS','NAMe ','TERDATE','CP','9-1923-09123','123123123123','Person to Contact','101010','06:42:17','2015/08/26','C:/Users/JAMIEXXX3/Documents/sample/27.jpg','gggggggggggg','gggggggggggggggggggggggggggg','gggggggggggggg','ggggggggggggggggggggggggg','Single','TIBN','FEMALE','gggggggggggg','2015-08-12','2015-08-27','06:42:17','2015-08-26','aaaaaaaaaaaaa','ggggggggggg','aaaaaaaaaaaaa','aaaaaaaaaaaa','type','Item 1','kkkkkkkkkkkkkkkkkkkkkkaaaaaaaaaaaaaaaaaaaaaaaaaa','0000-00-00','','',''),
 (28,'asd','asd','asd','asd','asdasd','asd','Single','asd','asdasd','asd','asd','asd','asdasd','asdasd','Active','Buguis','Harada Butai','','','','','','','','','','','','','','','','','','','','','','11:13:42','2015/08/28','C:/Users/JAMIEXXX3/Documents/sample/28.jpg','','','','','Single','','FEMALE','','2015-08-12','2015-08-21','11:13:42','2015-08-28','asd','','asd','asd','','','','0000-00-00','','','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (29,'hahahah','hahahah','hhahah','asd','asdasd','asdasd','Married','asd','as','asd','asd','asd','asdasd','asdasd','Non-Active','Buguis','Carre','','','Select Complexion','','','','','','','','','','','','','','','','','','','02:52:38','2015/09/4','C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/dist/BIN_PIC/hahahahhhahahhahahah.jpg','','','','','asd','','MALE','','2015-08-04','2015-08-22','02:52:38','2015-09-04','asd','','asd','asd','','Item 1','','0000-00-00','','',''),
 (30,'gggggggggg','ggggggggggggggggggggggggg','gggggggggggggggggggg','ggg','ggg','ggg','Single','gggggggggggggg','gggggggggggggggggggggggg','ggggggggggggggggggggggg','ggggggggggggggg','ggggggggggg','gggggggggggggggggggggggggggggggg','ggg','Non-Active','Balasinon','Balasinon','','','','','','','','','','','','','','','','','','','','','','12:41:11','2015/08/29','C:/Users/JAMIEXXX3/Documents/sample/30.jpg','','','','','N/A','','MALE','','2015-08-19','2015-08-21','12:41:11','2015-08-29','ggggggggggggggg','','gggggggggggggg','ggggggggggggg','','','','0000-00-00','','','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (31,'asdasdddddddddddddddddddddddddddddd','dddddddddddddddddddddddddddddddddddddddddddddd','dddddddddddddddddddddddd','12','ffff','fffff','Single','aaaaa','lasldlasdllasld','ggggggggggggggggggggggggggggggggggggg','aaaaaa','fffff','8009','dddddddddddddddddddddd','Active','Balasinon','Balasinon','','','','','','','','','','','','','','','','','','','','','','09:06:19','2015/08/29','C:/Users/JAMIEXXX3/Documents/sample/31.jpg','','','','','N/A','','MALE','','2015-08-17','2015-08-06','09:06:19','2015-08-29','Davao Del Sur','','Sulop','ggggggggggggggggg','','','','0000-00-00','','',''),
 (32,'asd','asd','asd','12','dsadasd','asdasd','Single','asdasd','aaaa','asd','asdas','asda','8009','asd','Active','Balasinon','Buguis','','','','','','','','','','','','','','','','','','','','','','06:28:21','2015/08/31','C:/Users/JAMIEXXX3/Documents/sample/32.jpg','','','','','N/A','','MALE','','2015-08-06','2015-08-14','06:28:21','2015-08-31','Davao Del Sur','','Sulop','asd','','','','0000-00-00','','','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (33,'uuuu','uuu','uuu','123','fff','RC','Single','55656','gggg','sdfsdf','kljhkjhws','sdfsdf','8009','sdf','Active','Solongvale','Buguis','','','Dark','','','','','','','','','',' ,','','','','','','',' ','','01:24:48','2015/09/9','C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/BIN_PIC/uuuuuuuuuu.jpg','','','','','N/A','','MALE','','2010-09-09','2015-09-25','01:24:48','2015-09-09','Davao Del Sur','','Sulop','sdfsdf','','Item 1','hasdkasdkjljklkjslkdjfllkjlkjsdlfkj8l;jksldkfjlkjl;ksjdfl;gkjsdfl;gjksdl;fgjksl;dfkgjsl;dfkgjsl;dfgjsldfkjlsgjslglsglsdfgsdfg','0001-01-01','','',''),
 (34,'ggg','ggg','gggg','gggg','gggg','g','Single','gg','gggggggggg','gggg','ggg','ggggg','8009','ggg','Active','Balasinon','Buguis','','','','','','','','','','','','','','','','','','','','','','09:19:57','2015/09/1','C:/Users/JAMIEXXX3/Documents/sample/gggggggggg.jpg','','','','','N/A','','MALE','','2015-09-28','2015-09-16','09:19:57','2015-09-01','Davao Del Sur','','Sulop','ggg','','','','0000-00-00','','','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (35,'hhhh','hhhh','hhhh','0','hh','hh','Married','hhh','hhhh','hh','hh','hhhh','8002','hh','Active','Buguis','Balasinon','','','Select Complexion','','','','','','','','','','','','','','','','','','','08:12:59','2015/09/8','C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/BIN_PIC/hhhhhhhhhhhh.jpg','','','','','hahahha','','MALE','','2015-09-23','2015-09-17','08:12:59','2015-09-08','Davao Del Sur','','Digos','hh','','','','0000-00-00','','',''),
 (36,'ggg','ghfghf','ghfghfgh','0','123','INC','Single','slkddsl','asdasd','asdasd','jhh;kljhfkl','hkj','8003','asdasd','Active','Buguis','Buguis','','','Select Complexion','','','','','','','','','','','','','','','','','','','08:17:12','2015/09/8','C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/BIN_PIC/gggghfghfghghfghf.jpg','','','','','N/A','','MALE','','2015-09-23','2015-09-24','08:17:12','2015-09-08','Davao Del Sur','','Matanao','asda','','','','0000-00-00','','','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (37,'vvvv','vvv','vvv','vvv','vvv','v','Single','vv','aaaaa','hhhh','v','vvv','8009','asdasd','Active','Balasinon','Balasinon','','','Select Complexion','','','','','','','','','','','','','','Mode Code','Mobile','Email','Person','Mobile','02:02:57','2015/09/6','C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/dist/BIN_PIC/vvvvvvvvvv.jpg','','','','','N/A','','FEMALE','','2015-09-23','2015-09-04','02:02:57','2015-09-06','Davao Del Sur','','Sulop','hhhh','','Item 1','','0000-00-00','','',''),
 (38,'aaaaaaaaaaaaaaa','aaaaaaaaaaaaaaaaaaaaaaaaaa','aaaaaaaaaaaaaaaaaaaaa','asd','asdasd','asd','Widowed','asd','asdasd','asdasd','asdasd','asdasd','8002','asd','Active','Buguis','Carre','','','Select Complexion','','','','','','','','','','','','','','asd','asdasd','asd','asd','asdasd','04:18:18','2015/09/2','C:/Users/JAMIEXXX3/Documents/sample/38.jpg','','','','','asd','','MALE','','2015-09-14','2015-09-11','04:18:18','2015-09-02','Davao Del Sur','','Digos','asd','','Item 1','','0000-00-00','','','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (39,'Jamie Eduardo','C','Rosal','12','aasd','asd','Single','asd','asdasd','asdasd','asd','asd','8009','asd','Active','Balasinon','Balasinon','','','Select Complexion','','','','','','','','','','','','','','asd','asd','asdasd','asd','asd','01:02:33','2015/09/3','C:/BIN_PIC/Jamie EduardoCRosal.jpg','','','','','N/A','','MALE','','2015-09-15','2015-09-01','01:02:33','2015-09-03','Davao Del Sur','','Sulop','asd','','Item 1','','0000-00-00','','',''),
 (40,'gggg','ggg','ggggg','ggg','g','gg','Single','g','ggg','ggg','g','gg','8009','ggg','Active','Balasinon','Balasinon','','','','','','','','','','','','','','','','','g','gg','g','gg','gg','10:13:54','2015/09/3','C:/Users/JAMIEXXX3/Documents/sample/gggggggggggg.jpg','','','','','N/A','','MALE','','2015-09-23','2015-09-11','10:13:54','2015-09-03','Davao Del Sur','','Sulop','gg','','','','0000-00-00','','','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (41,'Edward',' ','Newgate','76','asd','aa','Single','asd','asd','asd','asd','asd','8009','asd','Active','Balasinon','Balasinon','','','Select Complexion','','','','','','','','','','','','','','asdasd','asd','asd','asdasd','asd','10:30:45','2015/09/3','C:/Users/JAMIEXXX3/Documents/sample/EdwardNewgate.jpg','','','','','N/A','','MALE','','2015-09-23','2015-09-16','10:30:45','2015-09-03','Davao Del Sur','','Sulop','asd','','','askdashdkajshdkjhklhglkjashdfkjhkjh	kjhklajhklj	hkljhklajshdkjfh	kjhkljshkdfjh','0000-00-00','','',''),
 (42,'gjjjj','jjjjjjjjjjj','jjjjjjjjjjjjjjjjjj','jj','jjjj','jj','Single','jj','jjj','jjjj','jjj','asdasd','jj','jj','Active','Balasinon','Balasinon','','','','','','','','','','','','','','','','','jj','jj','jj','jjj','jj','10:36:46','2015/09/3','C:/BIN_PIC/gjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj.jpg','','','','','N/A','','MALE','','2015-09-08','2015-09-10','10:36:46','2015-09-03','Davao Del Sur','','Select Municipality','j','','','','0000-00-00','','','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (43,'Marlon','Arellano','Lumbab','26','Filipino','RC','Married','Highschool','Mar2x','Mabini, Malalag, Davao del Sur',' ',' ','8009','U8009MEBMA11III1989A07102015','Active','Laperas','Laperas','','','Select Complexion','','','','','','','','','',' ','','','','CP','09057525103','',' ','','08:48:13','2015/09/3','C:/BIN_PIC/MarlonArellanoLumbab.jpg','','','PO3 RAMONITO BAUTISTA TELMO','','Marjorie F. Lumbab','','MALE','','2015-07-10','1989-12-03','08:48:13','2015-09-03','Davao del Sur','','Sulop','Philippines','','Item 2','SI JAMIE BAYOT!','0000-00-00','','',''),
 (44,'vvvv','vvvv','vvvv','3','Filipino','RC','Single','HS','aaa','Digos City','','','8009','hhhh','Active','Carre','Carre','','','','','','','','','','','','','','','','','','','','','','09:27:22','2015/09/5','C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/BIN_PIC/vvvvvvvvvvvv.jpg','','','','','N/A','','MALE','','2015-09-30','2012-05-31','09:27:22','2015-09-05','Davao Del Sur','','Sulop','Philippines','','','','0000-00-00','','','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (45,'asd','asd','asdasd','0','Filipino','asd','Single','asd','aaa','aaaa','asd','asdasd','8009','sdasdsa','Active','Balasinon','Harada Butai','','','','','','','','','','','','','','','','','','','','','','09:32:18','2015/09/5','C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/BIN_PIC/asdasdasdasd.jpg','','','','','N/A','','MALE','','2015-09-22','2015-09-18','09:32:18','2015-09-05','Davao Del Sur','','Sulop','Philippines','','','','0000-00-00','','',''),
 (46,'fgghfg','hfghfgh','fghfghfghfgh','0','Filipino','fghfgh','Married','fgh','fghfgh','fghfgh','fghf','h','8009','fghf','Active','Buguis','Select  Barangay','','','Select Complexion','','','','','','','','','','','','','','','','','','','08:35:54','2015/09/8','C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/BIN_PIC/fgghfgfghfghfghfghhfghfgh.jpg','','','','','asdasd','','MALE','','2015-09-30','2015-09-24','08:35:54','2015-09-08','Davao Del Sur','','Sulop','Philippines','','','','2015-09-30','','','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (47,'bbbbbbbbbbbb','bbbbbbbbb','bbbbbbbbbb','0asd','Filipino','asd','Single','asd','asd','asd','asdasd','','8009','asdas','Active','Balasinon','Select  Barangay','','','Select Complexion','','','','','','','','','','','','','','','','','','','04:37:35','2015/09/6','C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/BIN_PIC/asdasdasdasd.jpg','','','','','N/A','','MALE','','2015-09-15','2015-09-10','04:37:35','2015-09-06','Davao Del Sur','','Sulop','Philippines','','','fghjghjghjgjg','0000-00-00','','',''),
 (48,'jkjk','jkjk','jkjk','5','Filipino','jk','Single','','ddfg','','','','8009','dfgdfgdfg','Active','Buguis','Select  Barangay','','','','','','','','','','','','','','','','','','','','','','01:24:20','2015/09/7','C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/BIN_PIC/jkjkjkjkjkjk.jpg','','','handler','','N/A','','MALE','','2015-09-14','2010-09-17','01:24:20','2015-09-07','Davao Del Sur','threat','Sulop','Philippines','type','category','','0000-00-00','','','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (49,';asjdaklljkl','lkjasdlkjf','lkjaslkjdfl;kj','0','Filipino','aasdasd','Single','asdasd','asdasd','asdasdasd','asdasd','asdasd','8009','asdasdasdasd','Active','Balasinon','Balasinon','face','hari','Dark','eyes','bulid','body','Gen app','iden char','heij','mil','other org','For ','ococpation','postion','Name addre','Termination','Mode Contach','CP','email','asd','asd','02:33:57','2015/09/7','C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/BIN_PIC/;asjdaklljkllkjaslkjdfl;kjlkjasdlkjf.jpg','code name','pysdoname','asd','Op','N/A','TIN','MALE','target','2015-09-28','2015-09-30','02:33:57','2015-09-07','Davao Del Sur','asd','Sulop','Philippines','asd','asd','asdasdasd		','0000-00-00','','',''),
 (50,'hjkhjkhjkh','jkhjk','hjkhjk','0','Filipino','hjkhjk','Single','hjkhjk','hjk','hjkhjkhjk','hjk','','8009','hjkhjk','Active','Balasinon','Select  Barangay','','','','','','','','','','','','','','','','','','','','','','03:13:27','2015/09/7','C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/BIN_PIC/hjkhjkhjkhhjkhjkjkhjk.jpg','','','','','N/A','','MALE','','2015-09-15','2015-09-04','03:13:27','2015-09-07','Davao Del Sur','','Sulop','Philippines','','','','0000-00-00','','','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (51,'ghjghjghj','ghjghjghjghj','ghjghjghjghjghj','0','Filipino','ghjghj','Single','','ghjghjghj','','','','8009','ghjghj','Active','Buguis','Select  Barangay','','','Select Complexion','','','','','','','','','','','','','','','','','','','08:27:38','2015/09/8','C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/BIN_PIC/ghjghjghjghjghjghjghjghjghjghjghjghj.jpg','','','','','N/Asdfsdf','','MALE','','2015-09-23','2015-09-24','08:27:38','2015-09-08','Davao Del Sur','','Sulop','Philippines','','','','1970-01-01','','',''),
 (52,'asdasd','asdasdsdfsdfsdf','asdasd','0','Filipino','RC','Single','hs','sdfsdfsdf','digos','wal','wala','8009','sdfsdf','Non-Active','Katipunan','Select  Barangay','face','hai','Dark','eyes','buold','body','gen aoo','i dden char','hielgt','merl','otehr ogr','for tahring','employment','postion','name','termation date','cp','cp num','email','perosn','number','03:18:27','2015/09/9','C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/BIN_PIC/asdasdasdasdasdasdsdfsdfsdf.jpg','code name','pysoname','handler','op','N/A','TIN','MALE','target','2015-01-01','2015-09-18','03:18:27','2015-09-09','Davao Del Sur','threat','Sulop','Philippines','type','cat','criminal rec','0001-01-01','','','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (53,'zxczx','czxc','zxczxc','0','Filipino','zxczxc','Single','zxczxc','zxczxc','zxczxc','zxc','zxczxc','8009','zxczxc','Active','Buguis','Select  Barangay','','','Select Complexion','','','','','','','','','','','','','','zxc','zxc','zxc','','','11:18:36','2015/09/8','C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/BIN_PIC/zxczxzxczxcczxc.jpg','','','','','N/Aasdasdasdasd','','MALE','','2015-09-16','2015-09-18','11:18:36','2015-09-08','Davao Del Sur','','Sulop','Philippines','','','','0000-00-00','','',''),
 (54,'asd','asdasdsdf','fgdfgdfgdfg','0','Filipino','dfgdfg','Married','','dfgdfg','dfgdfgdfg','','','8009','dfgdfg','Active','Balasinon','Select  Barangay','','','','','','','','','','','','','','','','','','','','','','11:24:02','2015/09/8','C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/BIN_PIC/asdfgdfgdfgdfgasdasdsdf.jpg','','','','','dfgdfg','','MALE','','2015-09-23','2015-09-10','11:24:02','2015-09-08','Davao Del Sur','','Sulop','Philippines','','','','0000-00-00','','','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (55,'asdasdasda','sdasd','sdasd','0','Filipino','asdas','Single','','asdasd','asdasd','','','8009','asdasd','Active','Balasinon','Select  Barangay','','','','','','','','','','','','','','','','','','','','','','11:26:21','2015/09/8','C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/BIN_PIC/asdasdasdasdasdsdasd.jpg','','','','','N/A','','MALE','','2015-09-23','2015-09-18','11:26:21','2015-09-08','Davao Del Sur','','Sulop','Philippines','','','','0000-00-00','','',''),
 (56,'asdsdfgdfg','asdasdadfg','asdasd','0','Filipino','dfgdfg','Single','','dfgdfg','dfgdfg','','','8009','dfg','Active','Balasinon','Select  Barangay','','','Select Complexion','','','','','','','','','','','','','','','','','','','11:33:59','2015/09/8','C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/BIN_PIC/asdsdfgdfgasdasdasdasdadfg.jpg','','','','','gggggggggggggggggggg','','FEMALE','','2015-09-21','2015-09-18','11:33:59','2015-09-08','Davao del sur','','Sulop','Philippines','','','','September 30, 2015','','','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (57,'asdasd','asdasd','asdasd','0','Filipino','wqeqwe','Single','','asd','asdasd','','','8009','asd','Active','Balasinon','Select  Barangay','','','','','','','','','','','','','','','','','asd','asd','asd','asd','asd','12:55:50','2015/09/9','C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/BIN_PIC/asdasdasdasdasdasd.jpg','','','','','N/A','','MALE','','2015-09-16','2015-09-11','12:55:50','2015-09-09','Davao Del Sur','','Sulop','Philippines','','','',NULL,'','',''),
 (58,'asdas','dasdasda','sasdasdasdhjghj','0','Filipino','','Single','','ghj','','','','8009','ghj','Active','Balasinon','Select  Barangay','','','','','','','','','','','','','','','','','','','','','','01:00:30','2015/09/9','C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/BIN_PIC/asdassasdasdasdhjghjdasdasda.jpg','','','','','N/A','','MALE','','2015-09-03','2015-09-11','01:00:30','2015-09-09','Davao Del Sur','','Sulop','Philippines','','','',NULL,'','','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (59,'asdasd','asdasdkkkkkkkkkkkkkkkk','asdasd','0','Filipino','rc','Single','','asdasd','asd','','','8009','asd','Active','Buguis','Select  Barangay','','','','','','','','','','','','','','','','','','','','','','01:05:17','2015/09/9','C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/BIN_PIC/asdasdasdasdasdasd.jpg','','','','','N/A','','MALE','','2015-09-30','2015-09-10','01:05:17','2015-09-09','Davao Del Sur','','Sulop','Philippines','','','',NULL,'','',''),
 (60,'ddfgdfgdfg','dfgdfgdfg','jkljkljkl','35','Filipino','jkl','Single','jkl','ll','','jkl','jkl','8009','jkjkl','Active','Balasinon','Select  Barangay','','','','','','','','','','','','','','','','','','','','','','01:12:30','2015/09/9','C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/BIN_PIC/ddfgdfgdfgjkljkljkldfgdfgdfg.jpg','','','','','','','FEMALE','','2015-09-29','1980-09-30','01:12:30','2015-09-09','Davao del sur','','Sulop','Philippines','','','',NULL,'','','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (61,'gsdfg','sdfsdf','sdsdf','','','','','','sdfsdf','','','','','','','','','','','','','','','','sdfsdf','','','','','','','','','','','','','','','','','','','','','','','','','0001-01-01','0000-00-00','00:00:00','0000-00-00','','','','','','','',NULL,'C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/legacy/gsdfgsdsdfsdfsdfIAPS.jpg','C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/legacy/gsdfgsdsdfsdfsdfSDCSCS.jpg',''),
 (62,'asda','fgfg','fgfg','','','','','','ffg','','','','','','','Balasinon','','','','','','','','','ffgggffg','','','','','','','','','','','','','','','','','','','','','','','','','0001-01-01','0000-00-00','00:00:00','0000-00-00','','','','','','','',NULL,'C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/legacy/asdafgfgfgfgIAPS.jpg','C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/legacy/asdafgfgfgfgSDCSCS.jpg','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (63,'sadads','asdasd','asdasd','','','','','','adsasd','','','','','','','Harada Butai','','','','','','','','','asdads','','','','','','','','','','','','','','','','','','','','','','','','','0001-01-01','0000-00-00','00:00:00','0000-00-00','','','','','','','',NULL,'C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/legacy/sadadsasdasdasdasdIAPS.jpg','C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/legacy/sadadsasdasdasdasdSDCSCS.jpg',''),
 (64,'asdhhhhhhh','asdhhhhh','asdhhhhhhh','','','','','','asdasd','','','','','','','Buguis','','','','','','','','','asdasd','','','','','','','','','','','','','','','','','','','','','','','','','0001-01-01','0000-00-00','00:00:00','0000-00-00','','','','','','','',NULL,'C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/legacy/asdasdasdIAPS.jpg','C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/legacy/asdasdasdSDCSCS.jpg','Legacy');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (65,'asdasd','asdasd','asdasd','','','','','','asdasd','','','','','','','Balasinon','','','','','','','','','asdasd','','','','','','','','','','','','','','','','','','','','','','','','','2015-09-30','0000-00-00','00:00:00','0000-00-00','','','','','','','',NULL,'C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/legacy/asdasdasdasdasdasdIAPS.jpg','C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/legacy/asdasdasdasdasdasdSDCSCS.jpg','Legacy'),
 (66,'sdasd','asdads','asdasd','','','','','','asdasd','','','','','','','Buguis','','','','','','','','','asdasd','','','','','','','','','','','','','','','','','','','','','','','','','2011-09-27','0000-00-00','00:00:00','0000-00-00','','','','','','','',NULL,'C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/legacy/sdasdasdasdasdadsIAPS.jpg','C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/legacy/sdasdasdasdasdadsSDCSCS.jpg','Legacy');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (67,'dasd','asdas','dasdasd','','','','','','asdasdasd','','','','','','','Carre','','','','','','','','','asdadasd','','','','','','','','','','','','','','','','','','','','','','','','','2011-09-27','0000-00-00','00:00:00','0000-00-00','','','','','','','',NULL,'C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/legacy/dasddasdasdasdasIAPS.jpg','C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/legacy/dasddasdasdasdasSDCSCS.jpg','Legacy'),
 (68,'sdfdfg','dsfgdfsg','sdfgdfg','','','','','','dfgsdf','','','','','','','Harada Butai','','','','','','','','','sdfgsdfg','','','','','','','','','','','','','','','','','','','','','','','','','2015-09-29','0000-00-00','00:00:00','0000-00-00','','','','','','','',NULL,'C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/legacy/sdfdfgsdfgdfgdsfgdfsgIAPS.jpg','C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/legacy/sdfdfgsdfgdfgdsfgdfsgSDCSCS.jpg','Legacy');
/*!40000 ALTER TABLE `informant_info` ENABLE KEYS */;


--
-- Table structure for table `bin`.`logs`
--

DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs` (
  `idlogs` int(10) unsigned NOT NULL auto_increment,
  `Act` varchar(255) NOT NULL default '',
  `Time` time NOT NULL default '00:00:00',
  `Date` date NOT NULL default '0000-00-00',
  PRIMARY KEY  (`idlogs`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bin`.`logs`
--

/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (1,'Updated Informant ID 39','01:02:34','2015-09-03'),
 (2,'Login admin','01:17:01','2015-09-03'),
 (3,'Login admin','01:24:41','2015-09-03'),
 (4,'Logout admin','01:24:52','2015-09-03'),
 (5,'Login ','01:25:02','2015-09-03'),
 (6,'Logout jamieSystem Close','01:25:15','2015-09-03'),
 (7,'Login jamie','01:27:37','2015-09-03'),
 (8,'Logout jamie','01:27:46','2015-09-03'),
 (9,'System Closed','01:27:56','2015-09-03'),
 (10,'Login admin','01:28:39','2015-09-03'),
 (11,'Logout adminSystem Close','01:28:42','2015-09-03'),
 (12,'Login admin','01:29:51','2015-09-03'),
 (13,'Updated Informant ID 2','01:30:13','2015-09-03'),
 (14,'Logout adminSystem Close','01:31:43','2015-09-03'),
 (15,'Login admin','01:37:45','2015-09-03'),
 (16,'SDC SDS print ID number2','01:38:36','2015-09-03'),
 (17,'SDC SDS print ID number5','01:39:01','2015-09-03'),
 (18,'Logout adminSystem Close','01:39:16','2015-09-03'),
 (19,'Login admin','01:41:20','2015-09-03'),
 (20,'IAPS print ID number 1','01:41:48','2015-09-03');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (21,'Logout admin','01:42:20','2015-09-03'),
 (22,'Logout jamieSystem Close','01:42:45','2015-09-03'),
 (23,'Login admin','01:44:44','2015-09-03'),
 (24,'Logout admin','01:44:55','2015-09-03'),
 (25,'Login ','01:45:05','2015-09-03'),
 (26,'Logout jamieSystem Close','01:45:18','2015-09-03'),
 (27,'Login admin','01:46:03','2015-09-03'),
 (28,'Logout admin','01:46:21','2015-09-03'),
 (29,'Login jamie','01:46:39','2015-09-03'),
 (30,'Logout jamie','01:46:46','2015-09-03'),
 (31,'System Closed','01:46:52','2015-09-03'),
 (32,'Login admin','01:55:45','2015-09-03'),
 (33,'Logout adminSystem Close','01:57:08','2015-09-03'),
 (34,'Login admin','01:58:23','2015-09-03'),
 (35,'ABS print date From January 1, 2015 to December 31, 2015','01:59:45','2015-09-03'),
 (36,'Logout adminSystem Close','02:02:12','2015-09-03'),
 (37,'Logout System Close','02:46:04','2015-09-03'),
 (38,'Login admin','03:06:58','2015-09-03'),
 (39,'Logout adminSystem Close','03:07:07','2015-09-03'),
 (40,'Login admin','03:07:40','2015-09-03');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (41,'Logout adminSystem Close','03:07:49','2015-09-03'),
 (42,'Login jamie','03:19:08','2015-09-03'),
 (43,'Logout jamie','03:19:39','2015-09-03'),
 (44,'Login jamie','03:19:58','2015-09-03'),
 (45,'Login jamie','03:20:20','2015-09-03'),
 (46,'Logout jamieSystem Close','03:20:36','2015-09-03'),
 (47,'Login admin','03:20:54','2015-09-03'),
 (48,'Logout admin','03:21:03','2015-09-03'),
 (49,'Login jamie','03:21:12','2015-09-03'),
 (50,'Logout jamieSystem Close','03:21:39','2015-09-03'),
 (51,'Login admin','03:22:41','2015-09-03'),
 (52,'Logout admin','03:23:00','2015-09-03'),
 (53,'Login jamie','03:23:04','2015-09-03'),
 (54,'Logout jamie','03:23:21','2015-09-03'),
 (55,'System Closed','03:23:30','2015-09-03'),
 (56,'Login admin','03:33:24','2015-09-03'),
 (57,'Logout admin','03:33:31','2015-09-03'),
 (58,'Logout adminSystem Close','03:33:42','2015-09-03'),
 (59,'Logout System Close','03:34:45','2015-09-03'),
 (60,'Login admin','03:34:52','2015-09-03'),
 (61,'Logout admin','03:34:58','2015-09-03');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (62,'Logout adminSystem Close','03:35:02','2015-09-03'),
 (63,'Login admin','03:35:50','2015-09-03'),
 (64,'Logout admin','03:35:57','2015-09-03'),
 (65,'System Closed','03:36:31','2015-09-03'),
 (66,'Login admin','03:38:23','2015-09-03'),
 (67,'Logout admin','03:38:36','2015-09-03'),
 (68,'Logout adminSystem Close','03:38:55','2015-09-03'),
 (69,'Login admin','03:39:13','2015-09-03'),
 (70,'Logout admin','03:39:24','2015-09-03'),
 (71,'System Closed','03:39:30','2015-09-03'),
 (72,'Login jamie','03:39:53','2015-09-03'),
 (73,'Logout jamie','03:40:01','2015-09-03'),
 (74,'Login admin','03:40:05','2015-09-03'),
 (75,'Logout adminSystem Close','03:40:20','2015-09-03'),
 (76,'Login admin','03:40:29','2015-09-03'),
 (77,'Logout admin','03:40:56','2015-09-03'),
 (78,'System Closed','03:41:16','2015-09-03'),
 (79,'Login admin','03:41:25','2015-09-03'),
 (80,'Logout adminSystem Close','03:42:04','2015-09-03'),
 (81,'Login admin','03:54:00','2015-09-03'),
 (82,'Logout adminSystem Close','03:54:18','2015-09-03');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (83,'Login admin','03:54:42','2015-09-03'),
 (84,'Logout adminSystem Close','03:55:25','2015-09-03'),
 (85,'Login admin','03:56:36','2015-09-03'),
 (86,'Logout adminSystem Close','03:56:49','2015-09-03'),
 (87,'Login admin','03:57:29','2015-09-03'),
 (88,'Logout adminSystem Close','03:58:23','2015-09-03'),
 (89,'Login admin','03:58:53','2015-09-03'),
 (90,'Logout adminSystem Close','04:00:04','2015-09-03'),
 (91,'Login admin','04:00:41','2015-09-03'),
 (92,'Logout adminSystem Close','04:01:11','2015-09-03'),
 (93,'Login admin','04:22:31','2015-09-03'),
 (94,'Logout adminSystem Close','04:23:11','2015-09-03'),
 (95,'Login admin','04:24:10','2015-09-03'),
 (96,'Updated Informant ID 7','04:24:58','2015-09-03'),
 (97,'SDC SDS print ID number 7','04:25:13','2015-09-03'),
 (98,'Login admin','04:25:48','2015-09-03'),
 (99,'Login admin','06:31:38','2015-09-03'),
 (100,'Logout adminSystem Close','06:32:45','2015-09-03'),
 (101,'Login admin','06:59:43','2015-09-03'),
 (102,'ABS print date From September 1, 2015 to September 30, 2015','07:00:34','2015-09-03');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (103,'Logout adminSystem Close','07:00:50','2015-09-03'),
 (104,'Login admin','07:01:33','2015-09-03'),
 (105,'ABS print date From September 1, 2015 to September 30, 2015','07:02:47','2015-09-03'),
 (106,'Logout adminSystem Close','07:03:07','2015-09-03'),
 (107,'Login admin','07:04:15','2015-09-03'),
 (108,'ABS print date From September 1, 2015 to September 15, 2015','07:05:41','2015-09-03'),
 (109,'Logout adminSystem Close','07:06:01','2015-09-03'),
 (110,'Login admin','07:20:44','2015-09-03'),
 (111,'Logout admin','07:21:04','2015-09-03'),
 (112,'System Closed','07:21:22','2015-09-03'),
 (113,'Login admin','07:21:34','2015-09-03'),
 (114,'Updated Informant ID 43','08:40:11','2015-09-03'),
 (115,'Updated Informant ID 43','08:44:00','2015-09-03'),
 (116,'Updated Informant ID 43','08:44:17','2015-09-03'),
 (117,'Updated Informant ID 43','08:44:29','2015-09-03'),
 (118,'IAPS print ID number 43','08:47:16','2015-09-03'),
 (119,'Updated Informant ID 43','08:48:15','2015-09-03'),
 (120,'IAPS print ID number 43','08:48:38','2015-09-03');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (121,'IAPS print ID number 43','08:48:49','2015-09-03'),
 (122,'SDC SDS print ID number 43','08:49:08','2015-09-03'),
 (123,'SDC SDS print ID number 43','08:49:20','2015-09-03'),
 (124,'IAPS print ID number 4','08:49:47','2015-09-03'),
 (125,'Updated Informant ID 4','08:50:09','2015-09-03'),
 (126,'IAPS print ID number 4','08:50:17','2015-09-03'),
 (127,'ABS print date From July 10, 2015 to July 10, 2015','08:53:12','2015-09-03'),
 (128,'SDC SDS print ID number 43','08:54:54','2015-09-03'),
 (129,'Updated Informant ID 16','09:05:44','2015-09-03'),
 (130,'IAPS print ID number 16','09:05:57','2015-09-03'),
 (131,'SDC SDS print ID number 16','09:07:36','2015-09-03'),
 (132,'Logout adminSystem Close','09:42:54','2015-09-03'),
 (133,'Logout System Close','01:00:24','2015-09-04'),
 (134,'Logout System Close','01:16:00','2015-09-04'),
 (135,'Logout System Close','01:20:16','2015-09-04'),
 (136,'Logout System Close','01:21:34','2015-09-04'),
 (137,'Logout System Close','01:23:56','2015-09-04');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (138,'Logout System Close','01:26:38','2015-09-04'),
 (139,'Logout System Close','01:29:26','2015-09-04'),
 (140,'Logout System Close','01:35:04','2015-09-04'),
 (141,'Logout System Close','01:37:30','2015-09-04'),
 (142,'Logout System Close','01:38:11','2015-09-04'),
 (143,'Login admin','01:41:15','2015-09-04'),
 (144,'Logout adminSystem Close','01:43:26','2015-09-04'),
 (145,'Login admin','01:49:04','2015-09-04'),
 (146,'Logout adminSystem Close','01:49:21','2015-09-04'),
 (147,'Login admin','01:50:45','2015-09-04'),
 (148,'Logout adminSystem Close','01:51:16','2015-09-04'),
 (149,'Login admin','02:00:58','2015-09-04'),
 (150,'IAPS print ID number 3','02:01:17','2015-09-04'),
 (151,'Logout adminSystem Close','02:01:33','2015-09-04'),
 (152,'Login admin','02:08:44','2015-09-04'),
 (153,'SDC SDS print ID number 3','02:09:16','2015-09-04'),
 (154,'Logout adminSystem Close','02:09:19','2015-09-04'),
 (155,'Login admin','02:11:01','2015-09-04'),
 (156,'SDC SDS print ID number 3','02:11:28','2015-09-04');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (157,'IAPS print ID number 3','02:11:37','2015-09-04'),
 (158,'Logout adminSystem Close','02:11:41','2015-09-04'),
 (159,'Login admin','02:12:48','2015-09-04'),
 (160,'IAPS print ID number 3','02:13:01','2015-09-04'),
 (161,'SDC SDS print ID number 3','02:13:09','2015-09-04'),
 (162,'Logout adminSystem Close','02:13:20','2015-09-04'),
 (163,'Login admin','02:16:04','2015-09-04'),
 (164,'IAPS print ID number 6','02:16:15','2015-09-04'),
 (165,'SDC SDS print ID number 6','02:16:57','2015-09-04'),
 (166,'ABS print date From 2015/09/1  to 2015/09/9 ','02:17:47','2015-09-04'),
 (167,'Logout adminSystem Close','02:17:53','2015-09-04'),
 (168,'Login admin','02:19:20','2015-09-04'),
 (169,'ABS print date From September 1, 2015 to September 30, 2015','02:19:39','2015-09-04'),
 (170,'Logout adminSystem Close','02:19:49','2015-09-04'),
 (171,'Login admin','02:31:01','2015-09-04'),
 (172,'SDC SDS print ID number 7','02:31:20','2015-09-04'),
 (173,'Logout adminSystem Close','02:32:27','2015-09-04');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (174,'Login admin','02:40:21','2015-09-04'),
 (175,'Logout adminSystem Close','02:40:52','2015-09-04'),
 (176,'Login admin','02:42:20','2015-09-04'),
 (177,'Logout adminSystem Close','02:42:46','2015-09-04'),
 (178,'Login admin','02:45:50','2015-09-04'),
 (179,'Logout adminSystem Close','02:46:16','2015-09-04'),
 (180,'Login admin','02:48:34','2015-09-04'),
 (181,'SDC SDS print ID number 3','02:50:50','2015-09-04'),
 (182,'IAPS print ID number 8','02:51:00','2015-09-04'),
 (183,'Logout adminSystem Close','02:51:06','2015-09-04'),
 (184,'Login admin','02:51:22','2015-09-04'),
 (185,'Updated Informant ID 13','02:51:53','2015-09-04'),
 (186,'Updated Informant ID 29','02:52:39','2015-09-04'),
 (187,'SDC SDS print ID number 29','02:52:54','2015-09-04'),
 (188,'Logout adminSystem Close','02:53:05','2015-09-04'),
 (189,'Login admin','02:55:42','2015-09-04'),
 (190,'Logout adminSystem Close','02:55:56','2015-09-04'),
 (191,'Login admin','02:57:37','2015-09-04'),
 (192,'Logout adminSystem Close','02:57:45','2015-09-04');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (193,'Login admin','02:58:18','2015-09-04'),
 (194,'Logout adminSystem Close','02:58:43','2015-09-04'),
 (195,'Login admin','02:59:15','2015-09-04'),
 (196,'Logout adminSystem Close','02:59:24','2015-09-04'),
 (197,'Login admin','03:00:44','2015-09-04'),
 (198,'Logout adminSystem Close','03:00:50','2015-09-04'),
 (199,'Login admin','03:01:15','2015-09-04'),
 (200,'Logout adminSystem Close','03:01:26','2015-09-04'),
 (201,'Login admin','03:01:52','2015-09-04'),
 (202,'Logout adminSystem Close','03:02:00','2015-09-04'),
 (203,'Login admin','03:02:16','2015-09-04'),
 (204,'Logout adminSystem Close','03:02:23','2015-09-04'),
 (205,'Login admin','03:04:09','2015-09-04'),
 (206,'Logout adminSystem Close','03:04:16','2015-09-04'),
 (207,'Logout System Close','03:04:44','2015-09-04'),
 (208,'Logout System Close','03:05:44','2015-09-04'),
 (209,'Logout System Close','03:06:55','2015-09-04'),
 (210,'Logout System Close','03:07:40','2015-09-04'),
 (211,'Logout System Close','03:08:03','2015-09-04');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (212,'Logout System Close','03:08:30','2015-09-04'),
 (213,'Logout System Close','03:12:01','2015-09-04'),
 (214,'Logout System Close','03:12:43','2015-09-04'),
 (215,'Logout System Close','03:14:32','2015-09-04'),
 (216,'Logout System Close','03:15:26','2015-09-04'),
 (217,'Logout System Close','03:17:47','2015-09-04'),
 (218,'Logout System Close','03:18:29','2015-09-04'),
 (219,'Logout System Close','03:18:51','2015-09-04'),
 (220,'Logout System Close','03:20:05','2015-09-04'),
 (221,'Logout System Close','03:20:36','2015-09-04'),
 (222,'Logout System Close','03:20:58','2015-09-04'),
 (223,'Login admin','03:21:57','2015-09-04'),
 (224,'Updated Informant ID 26','03:22:25','2015-09-04'),
 (225,'Updated Informant ID 4','03:22:41','2015-09-04'),
 (226,'Updated Informant ID 5','03:23:09','2015-09-04'),
 (227,'Logout adminSystem Close','03:23:21','2015-09-04'),
 (228,'Login admin','06:20:39','2015-09-04'),
 (229,'IAPS print ID number 3','06:20:53','2015-09-04'),
 (230,'Logout adminSystem Close','06:21:01','2015-09-04');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (231,'Login admin','06:49:53','2015-09-04'),
 (232,'Updated Informant ID 9','06:50:16','2015-09-04'),
 (233,'Logout adminSystem Close','06:50:22','2015-09-04'),
 (234,'Login admin','08:21:15','2015-09-05'),
 (235,'Updated Informant ID 33','08:21:58','2015-09-05'),
 (236,'Updated Informant ID 26','08:22:41','2015-09-05'),
 (237,'Updated Informant ID 20','08:23:22','2015-09-05'),
 (238,'IAPS print ID number 20','08:23:34','2015-09-05'),
 (239,'IAPS print ID number 20','08:23:42','2015-09-05'),
 (240,'IAPS print ID number 20','08:24:04','2015-09-05'),
 (241,'IAPS print ID number 1','08:24:33','2015-09-05'),
 (242,'IAPS print ID number 3','08:24:44','2015-09-05'),
 (243,'SDC SDS print ID number 20','08:24:55','2015-09-05'),
 (244,'Updated Informant ID 20','08:27:30','2015-09-05'),
 (245,'IAPS print ID number 20','08:27:36','2015-09-05'),
 (246,'Logout adminSystem Close','08:27:44','2015-09-05'),
 (247,'Login admin','08:28:19','2015-09-05'),
 (248,'IAPS print ID number 20','08:28:28','2015-09-05');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (249,'Updated Informant ID 33','08:30:30','2015-09-05'),
 (250,'IAPS print ID number 33','08:31:06','2015-09-05'),
 (251,'Logout adminSystem Close','08:31:17','2015-09-05'),
 (252,'Login admin','08:34:57','2015-09-05'),
 (253,'IAPS print ID number 20','08:35:10','2015-09-05'),
 (254,'IAPS print ID number 33','08:35:50','2015-09-05'),
 (255,'IAPS print ID number 33','08:36:20','2015-09-05'),
 (256,'Updated Informant ID 33','08:36:52','2015-09-05'),
 (257,'IAPS print ID number 33','08:37:04','2015-09-05'),
 (258,'Logout adminSystem Close','08:37:08','2015-09-05'),
 (259,'Login admin','08:40:05','2015-09-05'),
 (260,'IAPS print ID number 2','08:40:44','2015-09-05'),
 (261,'Logout adminSystem Close','08:41:07','2015-09-05'),
 (262,'Login admin','08:41:27','2015-09-05'),
 (263,'IAPS print ID number 2','08:41:43','2015-09-05'),
 (264,'Logout adminSystem Close','08:41:48','2015-09-05'),
 (265,'Login admin','08:43:35','2015-09-05'),
 (266,'IAPS print ID number 1','08:43:53','2015-09-05'),
 (267,'Logout adminSystem Close','08:44:19','2015-09-05');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (268,'Login admin','08:45:56','2015-09-05'),
 (269,'IAPS print ID number 1','08:46:09','2015-09-05'),
 (270,'Logout adminSystem Close','08:46:17','2015-09-05'),
 (271,'Login admin','08:46:40','2015-09-05'),
 (272,'IAPS print ID number 1','08:46:56','2015-09-05'),
 (273,'Logout adminSystem Close','08:47:01','2015-09-05'),
 (274,'Login admin','08:48:23','2015-09-05'),
 (275,'Logout adminSystem Close','08:48:42','2015-09-05'),
 (276,'Login admin','08:49:46','2015-09-05'),
 (277,'Logout adminSystem Close','08:50:04','2015-09-05'),
 (278,'Login admin','08:51:05','2015-09-05'),
 (279,'IAPS print ID number 1','08:51:25','2015-09-05'),
 (280,'Logout adminSystem Close','08:51:33','2015-09-05'),
 (281,'Login admin','08:52:37','2015-09-05'),
 (282,'IAPS print ID number 20','08:53:03','2015-09-05'),
 (283,'Logout adminSystem Close','08:53:07','2015-09-05'),
 (284,'Login admin','08:54:11','2015-09-05'),
 (285,'Logout adminSystem Close','08:54:24','2015-09-05'),
 (286,'Logout System Close','08:55:27','2015-09-05');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (287,'IAPS print ID number 2','08:58:41','2015-09-05'),
 (288,'Logout System Close','08:58:45','2015-09-05'),
 (289,'Logout System Close','09:01:46','2015-09-05'),
 (290,'IAPS print ID number 1','09:02:10','2015-09-05'),
 (291,'Logout System Close','09:02:13','2015-09-05'),
 (292,'Login admin','09:04:20','2015-09-05'),
 (293,'IAPS print ID number 1','09:04:32','2015-09-05'),
 (294,'IAPS print ID number 8','09:04:48','2015-09-05'),
 (295,'Logout adminSystem Close','09:04:52','2015-09-05'),
 (296,'Updated Informant ID 8','09:06:03','2015-09-05'),
 (297,'IAPS print ID number 8','09:06:25','2015-09-05'),
 (298,'Logout System Close','09:06:29','2015-09-05'),
 (299,'SDC SDS print ID number 9','09:10:56','2015-09-05'),
 (300,'Logout System Close','09:11:00','2015-09-05'),
 (301,'IAPS print ID number 1','09:15:23','2015-09-05'),
 (302,'Logout System Close','09:15:29','2015-09-05'),
 (303,'Login admin','09:16:52','2015-09-05'),
 (304,'IAPS print ID number 6','09:17:01','2015-09-05'),
 (305,'Logout adminSystem Close','09:17:05','2015-09-05');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (306,'Login admin','09:20:29','2015-09-05'),
 (307,'IAPS print ID number 1','09:20:39','2015-09-05'),
 (308,'IAPS print ID number 2','09:21:08','2015-09-05'),
 (309,'IAPS print ID number 16','09:22:34','2015-09-05'),
 (310,'Updated Informant ID 16','09:23:01','2015-09-05'),
 (311,'IAPS print ID number 16','09:23:52','2015-09-05'),
 (312,'SDC SDS print ID number 16','09:24:01','2015-09-05'),
 (313,'Logout adminSystem Close','09:24:09','2015-09-05'),
 (314,'Login admin','09:24:38','2015-09-05'),
 (315,'Logout adminSystem Close','09:27:29','2015-09-05'),
 (316,'Login admin','09:29:27','2015-09-05'),
 (317,'Logout adminSystem Close','09:30:34','2015-09-05'),
 (318,'Login admin','09:31:05','2015-09-05'),
 (319,'Logout adminSystem Close','09:32:29','2015-09-05'),
 (320,'Login admin','09:37:26','2015-09-05'),
 (321,'Logout adminSystem Close','09:40:44','2015-09-05'),
 (322,'Login admin','09:51:42','2015-09-05'),
 (323,'Logout adminSystem Close','09:54:09','2015-09-05'),
 (324,'Login admin','09:56:23','2015-09-05');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (325,'Logout adminSystem Close','09:57:06','2015-09-05'),
 (326,'Login admin','09:59:26','2015-09-05'),
 (327,'Logout adminSystem Close','10:00:19','2015-09-05'),
 (328,'Login admin','10:13:34','2015-09-05'),
 (329,'Logout adminSystem Close','10:14:30','2015-09-05'),
 (330,'Login admin','06:53:26','2015-09-05'),
 (331,'SDC SDS print ID number 8','06:57:39','2015-09-05'),
 (332,'Updated Informant ID 3','07:00:01','2015-09-05'),
 (333,'Logout adminSystem Close','07:08:51','2015-09-05'),
 (334,'Login admin','07:11:01','2015-09-05'),
 (335,'Logout adminSystem Close','07:11:21','2015-09-05'),
 (336,'Login admin','07:37:05','2015-09-05'),
 (337,'Logout adminSystem Close','07:37:22','2015-09-05'),
 (338,'Logout System Close','07:44:27','2015-09-05'),
 (339,'Logout System Close','07:45:52','2015-09-05'),
 (340,'Logout System Close','07:46:40','2015-09-05'),
 (341,'Login admin','08:01:46','2015-09-05'),
 (342,'Logout adminSystem Close','08:02:49','2015-09-05'),
 (343,'Login admin','08:03:45','2015-09-05');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (344,'ABS print date From September 1, 2015 to September 30, 2015','08:04:59','2015-09-05'),
 (345,'Logout adminSystem Close','08:06:46','2015-09-05'),
 (346,'Login admin','08:16:05','2015-09-05'),
 (347,'Logout adminSystem Close','08:16:30','2015-09-05'),
 (348,'Login admin','08:20:02','2015-09-05'),
 (349,'Logout adminSystem Close','08:20:13','2015-09-05'),
 (350,'Login admin','08:32:06','2015-09-05'),
 (351,'Logout adminSystem Close','08:32:38','2015-09-05'),
 (352,'Login admin','08:34:39','2015-09-05'),
 (353,'Logout adminSystem Close','08:34:56','2015-09-05'),
 (354,'Login admin','08:39:33','2015-09-05'),
 (355,'Logout adminSystem Close','08:43:05','2015-09-05'),
 (356,'Login admin','09:49:25','2015-09-05'),
 (357,'IAPS print ID number 2','09:49:37','2015-09-05'),
 (358,'SDC SDS print ID number 2','09:49:47','2015-09-05'),
 (359,'ABS print date From September 1, 2015 to September 30, 2015','09:50:08','2015-09-05'),
 (360,'Logout adminSystem Close','09:51:40','2015-09-05'),
 (361,'Login admin','10:02:59','2015-09-05');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (362,'Logout adminSystem Close','10:03:59','2015-09-05'),
 (363,'Login admin','10:42:56','2015-09-05'),
 (364,'Updated Informant ID 4','11:18:14','2015-09-05'),
 (365,'Logout adminSystem Close','11:34:16','2015-09-05'),
 (366,'Logout System Close','11:01:42','2015-09-06'),
 (367,'Logout System Close','11:10:13','2015-09-06'),
 (368,'Logout System Close','11:11:13','2015-09-06'),
 (369,'Logout System Close','11:14:25','2015-09-06'),
 (370,'Logout System Close','11:19:54','2015-09-06'),
 (371,'Login admin','11:23:24','2015-09-06'),
 (372,'Logout adminSystem Close','11:25:28','2015-09-06'),
 (373,'Logout System Close','11:27:46','2015-09-06'),
 (374,'Logout System Close','11:28:35','2015-09-06'),
 (375,'Logout System Close','11:29:31','2015-09-06'),
 (376,'Logout System Close','11:31:16','2015-09-06'),
 (377,'Logout System Close','11:58:59','2015-09-06'),
 (378,'Logout System Close','12:02:15','2015-09-06'),
 (379,'Logout System Close','12:04:34','2015-09-06'),
 (380,'Logout System Close','12:07:14','2015-09-06');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (381,'Login admin','12:10:02','2015-09-06'),
 (382,'Logout adminSystem Close','12:10:36','2015-09-06'),
 (383,'Logout System Close','12:21:29','2015-09-06'),
 (384,'Logout System Close','12:24:08','2015-09-06'),
 (385,'Login admin','12:26:11','2015-09-06'),
 (386,'Logout adminSystem Close','12:26:53','2015-09-06'),
 (387,'Logout System Close','12:31:43','2015-09-06'),
 (388,'Logout System Close','12:34:52','2015-09-06'),
 (389,'Login admin','12:35:59','2015-09-06'),
 (390,'Logout adminSystem Close','12:38:11','2015-09-06'),
 (391,'Login admin','12:39:22','2015-09-06'),
 (392,'Logout adminSystem Close','12:39:45','2015-09-06'),
 (393,'Login admin','12:46:54','2015-09-06'),
 (394,'Print Seach Data Alias PatternSearch.getText()','12:47:02','2015-09-06'),
 (395,'Logout adminSystem Close','12:47:34','2015-09-06'),
 (396,'Login admin','12:51:51','2015-09-06'),
 (397,'Print Seach Data Alias Pattern a','12:52:36','2015-09-06'),
 (398,'Logout adminSystem Close','12:53:02','2015-09-06'),
 (399,'Login admin','12:54:56','2015-09-06');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (400,'Print Seach Data Alias Pattern a','12:55:03','2015-09-06'),
 (401,'Logout adminSystem Close','12:55:22','2015-09-06'),
 (402,'Login admin','12:56:05','2015-09-06'),
 (403,'Logout adminSystem Close','12:56:22','2015-09-06'),
 (404,'Login admin','12:57:59','2015-09-06'),
 (405,'Logout adminSystem Close','12:58:47','2015-09-06'),
 (406,'Login admin','12:59:31','2015-09-06'),
 (407,'Print Seach Data Identifying Marks Pattern h','01:00:02','2015-09-06'),
 (408,'Logout adminSystem Close','01:00:10','2015-09-06'),
 (409,'Login admin','01:05:00','2015-09-06'),
 (410,'Print Seach Data Civil Status Pattern single','01:05:12','2015-09-06'),
 (411,'Logout adminSystem Close','01:06:11','2015-09-06'),
 (412,'Login admin','01:14:55','2015-09-06'),
 (413,'Logout adminSystem Close','01:16:35','2015-09-06'),
 (414,'Login admin','01:18:36','2015-09-06'),
 (415,'Print Seach Data Civil Status Pattern Married','01:19:11','2015-09-06'),
 (416,'Logout adminSystem Close','01:21:21','2015-09-06'),
 (417,'Login admin','01:59:56','2015-09-06');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (418,'Print Seach Data Alias Pattern aa','02:00:41','2015-09-06'),
 (419,'ABS print date From September 1, 2015 to September 30, 2015','02:01:32','2015-09-06'),
 (420,'IAPS print ID number 34','02:02:21','2015-09-06'),
 (421,'Updated Informant ID 37','02:03:01','2015-09-06'),
 (422,'IAPS print ID number 37','02:03:09','2015-09-06'),
 (423,'ABS print date From September 1, 2015 to September 30, 2015','02:04:12','2015-09-06'),
 (424,'ABS print date From September 1, 2015 to September 30, 2015','02:04:21','2015-09-06'),
 (425,'Logout adminSystem Close','02:14:57','2015-09-06'),
 (426,'ABS print date From September 1, 2015 to September 30, 2015','02:36:59','2015-09-06'),
 (427,'ABS print date From September 1, 2015 to September 30, 2015','02:37:05','2015-09-06'),
 (428,'ABS print date From September 1, 2015 to September 30, 2015','02:37:12','2015-09-06'),
 (429,'Logout System Close','02:37:30','2015-09-06'),
 (430,'ABS print date From September 1, 2015 to September 30, 2015','02:41:33','2015-09-06'),
 (431,'ABS print date From September 1, 2015 to September 30, 2015','02:41:53','2015-09-06');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (432,'Logout System Close','02:42:00','2015-09-06'),
 (433,'ABS print date From September 1, 2015 to September 30, 2015','02:44:05','2015-09-06'),
 (434,'ABS print date From September 1, 2015 to September 30, 2015','02:44:14','2015-09-06'),
 (435,'ABS print date From September 1, 2015 to September 30, 2015','02:44:29','2015-09-06'),
 (436,'ABS print date From September 1, 2015 to September 30, 2015','02:44:48','2015-09-06'),
 (437,'ABS print date From September 1, 2015 to September 30, 2015','02:44:54','2015-09-06'),
 (438,'ABS print date From September 1, 2015 to September 30, 2015','02:44:58','2015-09-06'),
 (439,'Logout System Close','02:45:14','2015-09-06'),
 (440,'ABS print date From September 1, 2015 to September 30, 2015','02:46:23','2015-09-06'),
 (441,'ABS print date From September 1, 2015 to September 30, 2015','02:46:33','2015-09-06'),
 (442,'ABS print date From September 1, 2015 to September 30, 2015','02:46:46','2015-09-06'),
 (443,'Logout System Close','02:47:31','2015-09-06');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (444,'ABS print date From September 1, 2015 to September 30, 2015','02:49:42','2015-09-06'),
 (445,'ABS print date From January 1, 2015 to September 3, 2015','02:50:07','2015-09-06'),
 (446,'Logout System Close','02:52:03','2015-09-06'),
 (447,'Login admin','02:57:54','2015-09-06'),
 (448,'Print Seach Data Alias Pattern ','03:17:22','2015-09-06'),
 (449,'Print Seach Data Alias Pattern ','03:17:28','2015-09-06'),
 (450,'Print Seach Data First Name Pattern raff','03:17:41','2015-09-06'),
 (451,'Print Seach Data Alias Pattern ','03:17:59','2015-09-06'),
 (452,'Logout adminSystem Close','03:26:54','2015-09-06'),
 (453,'Login admin','03:27:39','2015-09-06'),
 (454,'Print Seach Data Alias Pattern ','03:28:06','2015-09-06'),
 (455,'Print Seach Data Alias Pattern as','03:28:26','2015-09-06'),
 (456,'Logout adminSystem Close','03:29:18','2015-09-06'),
 (457,'Login admin','03:31:35','2015-09-06'),
 (458,'Logout adminSystem Close','03:31:58','2015-09-06'),
 (459,'Login admin','03:32:41','2015-09-06');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (460,'Logout adminSystem Close','03:42:31','2015-09-06'),
 (461,'Login admin','03:45:50','2015-09-06'),
 (462,'Logout adminSystem Close','03:47:37','2015-09-06'),
 (463,'Login admin','03:49:01','2015-09-06'),
 (464,'Logout adminSystem Close','03:53:50','2015-09-06'),
 (465,'Login admin','04:05:04','2015-09-06'),
 (466,'Logout adminSystem Close','04:25:12','2015-09-06'),
 (467,'Login admin','04:31:24','2015-09-06'),
 (468,'Logout adminSystem Close','04:32:22','2015-09-06'),
 (469,'Login admin','04:36:39','2015-09-06'),
 (470,'Logout adminSystem Close','04:38:51','2015-09-06'),
 (471,'Login admin','04:48:09','2015-09-06'),
 (472,'Updated Informant ID 26','04:48:37','2015-09-06'),
 (473,'Logout adminSystem Close','04:49:37','2015-09-06'),
 (474,'Logout System Close','04:51:22','2015-09-06'),
 (475,'Logout System Close','04:52:14','2015-09-06'),
 (476,'Print Seach Data Alias Pattern ','04:55:16','2015-09-06'),
 (477,'Print Seach Data Alias Pattern ','04:55:35','2015-09-06'),
 (478,'ABS print date From September 1, 2015 to September 30, 2015','04:59:38','2015-09-06');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (479,'Logout System Close','05:01:06','2015-09-06'),
 (480,'IAPS print ID number 1','05:05:01','2015-09-06'),
 (481,'Logout System Close','05:19:57','2015-09-06'),
 (482,'Logout System Close','10:39:39','2015-09-07'),
 (483,'Logout System Close','10:41:33','2015-09-07'),
 (484,'Login admin','11:18:41','2015-09-07'),
 (485,'Logout adminSystem Close','11:18:48','2015-09-07'),
 (486,'Login jamie','11:18:54','2015-09-07'),
 (487,'Logout jamieSystem Close','11:19:16','2015-09-07'),
 (488,'Logout System Close','01:26:36','2015-09-07'),
 (489,'Logout System Close','01:59:47','2015-09-07'),
 (490,'Logout System Close','02:11:06','2015-09-07'),
 (491,'Logout System Close','02:12:52','2015-09-07'),
 (492,'Logout System Close','02:15:18','2015-09-07'),
 (493,'Logout System Close','02:27:25','2015-09-07'),
 (494,'Logout System Close','02:35:39','2015-09-07'),
 (495,'Logout System Close','03:02:25','2015-09-07'),
 (496,'Logout System Close','03:06:22','2015-09-07'),
 (497,'Login admin','03:12:54','2015-09-07');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (498,'Logout adminSystem Close','03:17:32','2015-09-07'),
 (499,'Login admin','03:23:56','2015-09-07'),
 (500,'Logout adminSystem Close','03:29:08','2015-09-07'),
 (501,'Login admin','03:45:49','2015-09-07'),
 (502,'Logout adminSystem Close','03:56:22','2015-09-07'),
 (503,'Login admin','06:06:33','2015-09-07'),
 (504,'IAPS print ID number 1','06:06:49','2015-09-07'),
 (505,'IAPS print ID number 52','06:07:02','2015-09-07'),
 (506,'IAPS print ID number 51','06:07:25','2015-09-07'),
 (507,'Logout adminSystem Close','06:07:33','2015-09-07'),
 (508,'Login admin','06:22:37','2015-09-07'),
 (509,'Logout adminSystem Close','06:24:14','2015-09-07'),
 (510,'Logout System Close','06:37:38','2015-09-07'),
 (511,'Logout System Close','06:44:07','2015-09-07'),
 (512,'Logout System Close','07:07:22','2015-09-07'),
 (513,'Login admin','07:10:21','2015-09-07'),
 (514,'IAPS print ID number 52','07:10:32','2015-09-07'),
 (515,'IAPS print ID number 4','07:10:52','2015-09-07'),
 (516,'Logout adminSystem Close','07:11:03','2015-09-07');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (517,'Login admin','07:14:36','2015-09-07'),
 (518,'IAPS print ID number 52','07:14:44','2015-09-07'),
 (519,'IAPS print ID number 52','07:15:01','2015-09-07'),
 (520,'Logout adminSystem Close','07:15:08','2015-09-07'),
 (521,'IAPS print ID number 52','07:16:43','2015-09-07'),
 (522,'Logout System Close','07:16:56','2015-09-07'),
 (523,'Login admin','07:18:05','2015-09-07'),
 (524,'IAPS print ID number 52','07:18:13','2015-09-07'),
 (525,'IAPS print ID number 52','07:19:00','2015-09-07'),
 (526,'Logout adminSystem Close','07:19:16','2015-09-07'),
 (527,'IAPS print ID number 52','07:22:02','2015-09-07'),
 (528,'IAPS print ID number 51','07:22:14','2015-09-07'),
 (529,'IAPS print ID number 50','07:22:31','2015-09-07'),
 (530,'Logout System Close','07:22:35','2015-09-07'),
 (531,'IAPS print ID number 52','07:27:11','2015-09-07'),
 (532,'Logout System Close','07:27:23','2015-09-07'),
 (533,'IAPS print ID number 52','07:29:31','2015-09-07'),
 (534,'Logout System Close','07:29:36','2015-09-07');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (535,'IAPS print ID number 52','07:32:39','2015-09-07'),
 (536,'Logout System Close','07:43:47','2015-09-07'),
 (537,'Login admin','07:46:01','2015-09-07'),
 (538,'IAPS print ID number 52','07:46:09','2015-09-07'),
 (539,'Logout adminSystem Close','07:46:31','2015-09-07'),
 (540,'IAPS print ID number 52','07:49:06','2015-09-07'),
 (541,'Logout System Close','07:49:19','2015-09-07'),
 (542,'IAPS print ID number 52','07:50:44','2015-09-07'),
 (543,'Logout System Close','07:51:04','2015-09-07'),
 (544,'IAPS print ID number 52','07:53:34','2015-09-07'),
 (545,'Logout System Close','07:53:47','2015-09-07'),
 (546,'IAPS print ID number 52','07:55:03','2015-09-07'),
 (547,'IAPS print ID number 52','07:55:29','2015-09-07'),
 (548,'IAPS print ID number 52','07:56:39','2015-09-07'),
 (549,'Logout System Close','07:57:29','2015-09-07'),
 (550,'IAPS print ID number 52','07:58:05','2015-09-07'),
 (551,'Logout System Close','08:00:01','2015-09-07'),
 (552,'IAPS print ID number 52','08:01:18','2015-09-07');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (553,'Logout System Close','08:01:34','2015-09-07'),
 (554,'IAPS print ID number 52','08:04:45','2015-09-07'),
 (555,'Logout System Close','08:05:01','2015-09-07'),
 (556,'IAPS print ID number 52','11:58:19','2015-09-08'),
 (557,'IAPS print ID number 52','11:58:39','2015-09-08'),
 (558,'Logout System Close','11:58:44','2015-09-08'),
 (559,'IAPS print ID number 52','11:59:09','2015-09-08'),
 (560,'Logout System Close','11:59:12','2015-09-08'),
 (561,'IAPS print ID number 52','12:01:06','2015-09-08'),
 (562,'Logout System Close','12:01:21','2015-09-08'),
 (563,'IAPS print ID number 52','12:07:21','2015-09-08'),
 (564,'Logout System Close','12:07:33','2015-09-08'),
 (565,'IAPS print ID number 52','12:10:34','2015-09-08'),
 (566,'Logout System Close','12:10:47','2015-09-08'),
 (567,'IAPS print ID number 52','12:11:55','2015-09-08'),
 (568,'Logout System Close','12:12:16','2015-09-08'),
 (569,'IAPS print ID number 52','12:13:17','2015-09-08'),
 (570,'Logout System Close','12:13:32','2015-09-08');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (571,'IAPS print ID number 52','12:15:36','2015-09-08'),
 (572,'Logout System Close','12:15:55','2015-09-08'),
 (573,'IAPS print ID number 52','12:20:41','2015-09-08'),
 (574,'Logout System Close','12:20:57','2015-09-08'),
 (575,'IAPS print ID number 52','12:22:08','2015-09-08'),
 (576,'IAPS print ID number 51','12:22:31','2015-09-08'),
 (577,'IAPS print ID number 52','12:22:37','2015-09-08'),
 (578,'Logout System Close','12:22:43','2015-09-08'),
 (579,'IAPS print ID number 52','12:24:27','2015-09-08'),
 (580,'Logout System Close','12:24:55','2015-09-08'),
 (581,'IAPS print ID number 52','12:27:09','2015-09-08'),
 (582,'Logout System Close','12:28:08','2015-09-08'),
 (583,'IAPS print ID number 52','12:35:18','2015-09-08'),
 (584,'Logout System Close','12:35:41','2015-09-08'),
 (585,'IAPS print ID number 52','12:36:45','2015-09-08'),
 (586,'Logout System Close','12:37:42','2015-09-08'),
 (587,'IAPS print ID number 52','12:38:52','2015-09-08'),
 (588,'Logout System Close','12:39:12','2015-09-08');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (589,'IAPS print ID number 52','12:40:34','2015-09-08'),
 (590,'Logout System Close','12:40:48','2015-09-08'),
 (591,'IAPS print ID number 52','12:42:09','2015-09-08'),
 (592,'Logout System Close','12:42:23','2015-09-08'),
 (593,'Login admin','12:55:59','2015-09-08'),
 (594,'Logout adminSystem Close','12:56:38','2015-09-08'),
 (595,'Login admin','01:38:35','2015-09-08'),
 (596,'Logout adminSystem Close','01:38:52','2015-09-08'),
 (597,'Login admin','01:39:32','2015-09-08'),
 (598,'Logout adminSystem Close','01:39:52','2015-09-08'),
 (599,'Login admin','01:40:00','2015-09-08'),
 (600,'Logout adminSystem Close','01:40:22','2015-09-08'),
 (601,'Login admin','01:40:52','2015-09-08'),
 (602,'Logout adminSystem Close','01:41:08','2015-09-08'),
 (603,'Login admin','01:43:48','2015-09-08'),
 (604,'Logout adminSystem Close','01:45:17','2015-09-08'),
 (605,'Login admin','01:47:15','2015-09-08'),
 (606,'Logout adminSystem Close','01:47:46','2015-09-08'),
 (607,'Login admin','01:48:23','2015-09-08');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (608,'Logout adminSystem Close','01:49:19','2015-09-08'),
 (609,'Login admin','01:49:45','2015-09-08'),
 (610,'Logout adminSystem Close','01:50:32','2015-09-08'),
 (611,'Login admin','01:52:40','2015-09-08'),
 (612,'Logout adminSystem Close','01:59:13','2015-09-08'),
 (613,'Login admin','01:59:22','2015-09-08'),
 (614,'Logout adminSystem Close','01:59:49','2015-09-08'),
 (615,'Login admin','02:00:22','2015-09-08'),
 (616,'Updated Informant ID 52','02:01:19','2015-09-08'),
 (617,'Updated Informant ID 52','02:02:41','2015-09-08'),
 (618,'Updated Informant ID 52','02:03:33','2015-09-08'),
 (619,'Updated Informant ID 52','02:03:45','2015-09-08'),
 (620,'Updated Informant ID 52','02:03:51','2015-09-08'),
 (621,'Updated Informant ID 52','02:04:08','2015-09-08'),
 (622,'Updated Informant ID 52','02:04:49','2015-09-08'),
 (623,'Updated Informant ID 52','02:05:32','2015-09-08'),
 (624,'Logout adminSystem Close','02:05:42','2015-09-08'),
 (625,'Login admin','02:06:43','2015-09-08');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (626,'Updated Informant ID 52','02:08:01','2015-09-08'),
 (627,'Updated Informant ID 52','02:09:24','2015-09-08'),
 (628,'IAPS print ID number 51','02:11:27','2015-09-08'),
 (629,'Logout adminSystem Close','02:14:13','2015-09-08'),
 (630,'Login admin','02:19:14','2015-09-08'),
 (631,'Logout adminSystem Close','02:19:41','2015-09-08'),
 (632,'Login admin','02:19:54','2015-09-08'),
 (633,'Logout adminSystem Close','02:23:07','2015-09-08'),
 (634,'Login admin','02:23:49','2015-09-08'),
 (635,'IAPS print ID number 51','02:25:36','2015-09-08'),
 (636,'Logout adminSystem Close','02:25:55','2015-09-08'),
 (637,'Login admin','02:29:10','2015-09-08'),
 (638,'IAPS print ID number 52','02:29:39','2015-09-08'),
 (639,'IAPS print ID number 52','02:30:16','2015-09-08'),
 (640,'ABS print date From September 1, 2015 to September 30, 2015','02:31:19','2015-09-08'),
 (641,'ABS print date From September 1, 2015 to September 30, 2015','02:31:41','2015-09-08'),
 (642,'ABS print date From September 1, 2015 to September 30, 2015','02:31:48','2015-09-08');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (643,'ABS print date From September 1, 2015 to September 30, 2015','02:39:37','2015-09-08'),
 (644,'ABS print date From September 1, 2015 to September 30, 2015','02:39:55','2015-09-08'),
 (645,'IAPS print ID number 26','02:40:04','2015-09-08'),
 (646,'Logout adminSystem Close','02:41:21','2015-09-08'),
 (647,'Login admin','02:41:58','2015-09-08'),
 (648,'Logout adminSystem Close','02:42:06','2015-09-08'),
 (649,'Login admin','02:42:36','2015-09-08'),
 (650,'ABS print date From null to null','02:45:04','2015-09-08'),
 (651,'ABS print date From null to null','02:45:06','2015-09-08'),
 (652,'Logout adminSystem Close','02:45:09','2015-09-08'),
 (653,'Login admin','02:52:25','2015-09-08'),
 (654,'ABS print date From September 1, 2015 to September 30, 2015','02:52:52','2015-09-08'),
 (655,'ABS print date From September 1, 2015 to September 30, 2015','02:54:14','2015-09-08'),
 (656,'ABS print date From September 1, 2015 to September 30, 2015','02:54:18','2015-09-08'),
 (657,'Logout adminSystem Close','02:57:32','2015-09-08');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (658,'Login admin','02:59:45','2015-09-08'),
 (659,'IAPS print ID number 52','03:00:01','2015-09-08'),
 (660,'ABS print date From September 30, 2015 to null','03:00:29','2015-09-08'),
 (661,'ABS print date From September 30, 2015 to null','03:00:32','2015-09-08'),
 (662,'ABS print date From September 30, 2015 to null','03:00:36','2015-09-08'),
 (663,'ABS print date From September 30, 2015 to null','03:00:41','2015-09-08'),
 (664,'Print Seach Data Alias Pattern a','03:00:49','2015-09-08'),
 (665,'ABS print date From September 1, 2015 to September 30, 2015','03:00:59','2015-09-08'),
 (666,'ABS print date From September 1, 2015 to September 30, 2015','03:02:24','2015-09-08'),
 (667,'SDC SDS print ID number 1','03:02:46','2015-09-08'),
 (668,'Logout adminSystem Close','03:02:58','2015-09-08'),
 (669,'Login admin','07:51:40','2015-09-08'),
 (670,'IAPS print ID number 52','07:52:29','2015-09-08'),
 (671,'Updated Informant ID 5','07:53:35','2015-09-08'),
 (672,'IAPS print ID number 5','07:55:33','2015-09-08');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (673,'Logout adminSystem Close','07:55:37','2015-09-08'),
 (674,'Login admin','08:09:00','2015-09-08'),
 (675,'Updated Informant ID 35','08:09:46','2015-09-08'),
 (676,'Updated Informant ID 35','08:13:01','2015-09-08'),
 (677,'Updated Informant ID 36','08:17:13','2015-09-08'),
 (678,'Logout adminSystem Close','08:20:12','2015-09-08'),
 (679,'Updated Informant ID 51','08:27:40','2015-09-08'),
 (680,'Logout System Close','08:28:15','2015-09-08'),
 (681,'Updated Informant ID 41','08:34:50','2015-09-08'),
 (682,'Logout System Close','08:35:20','2015-09-08'),
 (683,'Updated Informant ID 46','08:35:55','2015-09-08'),
 (684,'Logout System Close','08:37:20','2015-09-08'),
 (685,'Logout System Close','08:40:47','2015-09-08'),
 (686,'Logout System Close','08:48:43','2015-09-08'),
 (687,'Logout System Close','08:52:51','2015-09-08'),
 (688,'Updated Informant ID 9','09:10:38','2015-09-08'),
 (689,'Logout System Close','09:11:34','2015-09-08'),
 (690,'Logout System Close','09:11:38','2015-09-08');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (691,'Updated Informant ID 20','09:18:23','2015-09-08'),
 (692,'Login admin','09:25:03','2015-09-08'),
 (693,'Logout adminSystem Close','09:26:08','2015-09-08'),
 (694,'Logout System Close','09:34:11','2015-09-08'),
 (695,'Logout System Close','09:42:13','2015-09-08'),
 (696,'Logout System Close','09:45:06','2015-09-08'),
 (697,'IAPS print ID number 5','09:54:14','2015-09-08'),
 (698,'Logout System Close','09:54:19','2015-09-08'),
 (699,'Logout System Close','10:10:11','2015-09-08'),
 (700,'Logout System Close','10:18:39','2015-09-08'),
 (701,'Logout System Close','10:19:30','2015-09-08'),
 (702,'Logout System Close','10:24:02','2015-09-08'),
 (703,'Login admin','10:25:45','2015-09-08'),
 (704,'IAPS print ID number 5','10:28:05','2015-09-08'),
 (705,'Logout adminSystem Close','10:28:09','2015-09-08'),
 (706,'IAPS print ID number 5','10:29:52','2015-09-08'),
 (707,'Logout System Close','10:29:57','2015-09-08'),
 (708,'IAPS print ID number 5','10:33:08','2015-09-08'),
 (709,'Logout System Close','10:34:05','2015-09-08');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (710,'Logout System Close','10:35:08','2015-09-08'),
 (711,'IAPS print ID number 5','10:36:28','2015-09-08'),
 (712,'Logout System Close','10:36:38','2015-09-08'),
 (713,'IAPS print ID number 5','10:45:34','2015-09-08'),
 (714,'Logout System Close','10:47:51','2015-09-08'),
 (715,'IAPS print ID number 5','10:51:00','2015-09-08'),
 (716,'IAPS print ID number 9','10:51:41','2015-09-08'),
 (717,'Logout System Close','10:52:17','2015-09-08'),
 (718,'IAPS print ID number 5','10:54:31','2015-09-08'),
 (719,'IAPS print ID number 4','10:54:41','2015-09-08'),
 (720,'IAPS print ID number 4','10:54:43','2015-09-08'),
 (721,'Logout System Close','10:55:20','2015-09-08'),
 (722,'Updated Informant ID 5','10:58:23','2015-09-08'),
 (723,'Logout System Close','10:58:42','2015-09-08'),
 (724,'Updated Informant ID 5','11:01:24','2015-09-08'),
 (725,'IAPS print ID number 5','11:01:49','2015-09-08'),
 (726,'Logout System Close','11:01:57','2015-09-08'),
 (727,'Login admin','11:02:15','2015-09-08');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (728,'IAPS print ID number 5','11:02:27','2015-09-08'),
 (729,'Logout adminSystem Close','11:02:30','2015-09-08'),
 (730,'Updated Informant ID 5','11:04:18','2015-09-08'),
 (731,'IAPS print ID number 5','11:04:32','2015-09-08'),
 (732,'Logout System Close','11:04:37','2015-09-08'),
 (733,'IAPS print ID number 5','11:10:24','2015-09-08'),
 (734,'Logout System Close','11:12:20','2015-09-08'),
 (735,'IAPS print ID number 5','11:13:27','2015-09-08'),
 (736,'Logout System Close','11:14:11','2015-09-08'),
 (737,'Updated Informant ID 5','11:15:24','2015-09-08'),
 (738,'IAPS print ID number 5','11:15:31','2015-09-08'),
 (739,'Logout System Close','11:15:47','2015-09-08'),
 (740,'Logout System Close','11:18:57','2015-09-08'),
 (741,'Logout System Close','11:24:46','2015-09-08'),
 (742,'Login admin','11:25:57','2015-09-08'),
 (743,'IAPS print ID number 56','11:29:44','2015-09-08'),
 (744,'IAPS print ID number 56','11:30:30','2015-09-08'),
 (745,'Logout adminSystem Close','11:32:44','2015-09-08');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (746,'IAPS print ID number 56','11:33:26','2015-09-08'),
 (747,'Updated Informant ID 56','11:34:00','2015-09-08'),
 (748,'IAPS print ID number 56','11:34:04','2015-09-08'),
 (749,'Logout System Close','11:34:11','2015-09-08'),
 (750,'Login admin','10:27:46','2015-09-09'),
 (751,'Logout adminSystem Close','10:30:17','2015-09-09'),
 (752,'Logout System Close','10:31:39','2015-09-09'),
 (753,'Logout System Close','10:35:54','2015-09-09'),
 (754,'Logout System Close','10:41:04','2015-09-09'),
 (755,'Logout System Close','10:43:04','2015-09-09'),
 (756,'Logout System Close','10:44:44','2015-09-09'),
 (757,'Logout System Close','10:49:02','2015-09-09'),
 (758,'Logout System Close','10:51:11','2015-09-09'),
 (759,'Logout System Close','10:52:42','2015-09-09'),
 (760,'Logout System Close','10:55:56','2015-09-09'),
 (761,'Login admin','10:57:44','2015-09-09'),
 (762,'Logout adminSystem Close','10:59:57','2015-09-09'),
 (763,'Logout System Close','11:00:36','2015-09-09'),
 (764,'Logout System Close','11:03:30','2015-09-09');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (765,'IAPS print ID number 52','11:11:43','2015-09-09'),
 (766,'IAPS print ID number 52','11:12:32','2015-09-09'),
 (767,'Logout System Close','11:13:38','2015-09-09'),
 (768,'Logout System Close','11:33:46','2015-09-09'),
 (769,'Logout System Close','11:42:00','2015-09-09'),
 (770,'Logout System Close','11:42:34','2015-09-09'),
 (771,'Logout System Close','11:48:39','2015-09-09'),
 (772,'Logout System Close','12:01:11','2015-09-09'),
 (773,'Logout System Close','12:03:44','2015-09-09'),
 (774,'Logout System Close','12:05:10','2015-09-09'),
 (775,'Logout System Close','12:07:14','2015-09-09'),
 (776,'IAPS print ID number 52','12:13:06','2015-09-09'),
 (777,'Logout System Close','12:17:04','2015-09-09'),
 (778,'Logout System Close','12:27:25','2015-09-09'),
 (779,'Logout System Close','12:30:24','2015-09-09'),
 (780,'Login admin','12:55:19','2015-09-09'),
 (781,'Logout adminSystem Close','12:56:46','2015-09-09'),
 (782,'Login admin','12:59:44','2015-09-09'),
 (783,'Logout adminSystem Close','01:03:11','2015-09-09');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (784,'Login admin','01:04:13','2015-09-09'),
 (785,'Logout adminSystem Close','01:13:39','2015-09-09'),
 (786,'Login admin','01:17:38','2015-09-09'),
 (787,'Logout adminSystem Close','01:21:25','2015-09-09'),
 (788,'Login admin','01:21:28','2015-09-09'),
 (789,'Logout adminSystem Close','01:21:50','2015-09-09'),
 (790,'Login admin','01:24:27','2015-09-09'),
 (791,'Updated Informant ID 33','01:24:50','2015-09-09'),
 (792,'IAPS print ID number 33','01:25:04','2015-09-09'),
 (793,'Logout adminSystem Close','01:26:31','2015-09-09'),
 (794,'Login admin','01:29:48','2015-09-09'),
 (795,'IAPS print ID number 5','01:29:56','2015-09-09'),
 (796,'Logout adminSystem Close','01:30:37','2015-09-09'),
 (797,'Login admin','01:34:54','2015-09-09'),
 (798,'IAPS print ID number 5','01:35:05','2015-09-09'),
 (799,'Logout adminSystem Close','01:36:00','2015-09-09'),
 (800,'Login admin','01:37:51','2015-09-09'),
 (801,'Logout adminSystem Close','01:39:35','2015-09-09'),
 (802,'Login admin','01:40:23','2015-09-09');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (803,'Logout adminSystem Close','01:41:32','2015-09-09'),
 (804,'Login admin','01:53:07','2015-09-09'),
 (805,'Logout adminSystem Close','01:53:11','2015-09-09'),
 (806,'Login admin','01:56:10','2015-09-09'),
 (807,'Print Seach Data First Name Pattern ja','01:56:39','2015-09-09'),
 (808,'Print Seach Data First Name Pattern jamie ','01:56:53','2015-09-09'),
 (809,'Logout adminSystem Close','01:57:06','2015-09-09'),
 (810,'Login admin','01:58:51','2015-09-09'),
 (811,'Print Seach Data First Name Pattern j','01:59:06','2015-09-09'),
 (812,'Print Seach Data Alias Pattern ','01:59:47','2015-09-09'),
 (813,'Print Seach Data First Name Pattern ra','02:00:09','2015-09-09'),
 (814,'ABS print date From September 1, 2015 to September 30, 2015','02:03:50','2015-09-09'),
 (815,'IAPS print ID number 1','02:04:29','2015-09-09'),
 (816,'SDC SDS print ID number 1','02:04:48','2015-09-09'),
 (817,'ABS print date From September 1, 2015 to September 30, 2015','02:08:34','2015-09-09'),
 (818,'SDC SDS print ID number 1','02:10:05','2015-09-09');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (819,'SDC SDS print ID number 1','02:11:38','2015-09-09'),
 (820,'SDC SDS print ID number 1','02:12:21','2015-09-09'),
 (821,'Logout adminSystem Close','02:13:18','2015-09-09'),
 (822,'Login admin','02:17:43','2015-09-09'),
 (823,'ABS print date From September 1, 2015 to September 30, 2015','02:18:15','2015-09-09'),
 (824,'Logout adminSystem Close','02:18:34','2015-09-09'),
 (825,'Login admin','02:21:11','2015-09-09'),
 (826,'ABS print date From September 1, 2015 to September 30, 2015','02:21:53','2015-09-09'),
 (827,'ABS print date From September 1, 2015 to September 30, 2015','02:22:08','2015-09-09'),
 (828,'Logout adminSystem Close','02:22:33','2015-09-09'),
 (829,'Login admin','02:29:45','2015-09-09'),
 (830,'ABS print date From September 1, 2015 to September 30, 2015','02:30:30','2015-09-09'),
 (831,'Logout adminSystem Close','02:42:14','2015-09-09'),
 (832,'Updated USER ID 3','02:52:53','2015-09-09'),
 (833,'DELETED USER ID 3','02:53:46','2015-09-09'),
 (834,'Logout System Close','02:54:33','2015-09-09');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (835,'Login admin','02:58:16','2015-09-09'),
 (836,'Logout adminSystem Close','02:58:38','2015-09-09'),
 (837,'Login admin','02:59:20','2015-09-09'),
 (838,'Updated USER ID 4','02:59:40','2015-09-09'),
 (839,'Updated Informant ID 52','03:18:27','2015-09-09'),
 (840,'Updated Informant ID 15','03:22:08','2015-09-09'),
 (841,'Logout adminSystem Close','03:22:47','2015-09-09'),
 (842,'Login admin','03:26:37','2015-09-09'),
 (843,'Updated Informant ID 10','03:27:05','2015-09-09'),
 (844,'Logout adminSystem Close','03:27:53','2015-09-09'),
 (845,'Login admin','03:33:52','2015-09-09'),
 (846,'IAPS print ID number 1','03:34:04','2015-09-09'),
 (847,'IAPS print ID number 1','03:34:37','2015-09-09'),
 (848,'SDC SDS print ID number 1','03:35:18','2015-09-09'),
 (849,'SDC SDS print ID number 1','03:38:43','2015-09-09'),
 (850,'Logout adminSystem Close','03:39:50','2015-09-09'),
 (851,'Login admin','03:42:08','2015-09-09'),
 (852,'Updated Informant ID 1','03:42:36','2015-09-09'),
 (853,'Updated Informant ID 1','03:43:07','2015-09-09');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (854,'SDC SDS print ID number 1','03:43:23','2015-09-09'),
 (855,'Logout adminSystem Close','03:45:46','2015-09-09'),
 (856,'Logout System Close','04:16:04','2015-09-09'),
 (857,'Logout System Close','04:17:19','2015-09-09'),
 (858,'Logout System Close','04:19:14','2015-09-09'),
 (859,'Logout System Close','04:19:48','2015-09-09'),
 (860,'Logout System Close','04:20:14','2015-09-09'),
 (861,'Login admin','04:33:37','2015-09-09'),
 (862,'Logout adminSystem Close','04:36:42','2015-09-09'),
 (863,'Login admin','04:37:04','2015-09-09'),
 (864,'Logout adminSystem Close','04:38:04','2015-09-09'),
 (865,'Logout System Close','06:08:41','2015-09-09'),
 (866,'Logout System Close','06:12:46','2015-09-09'),
 (867,'Logout System Close','06:18:52','2015-09-09'),
 (868,'Logout System Close','06:22:30','2015-09-09'),
 (869,'Login admin','06:38:45','2015-09-09'),
 (870,'Logout adminSystem Close','06:39:30','2015-09-09'),
 (871,'Logout System Close','06:47:33','2015-09-09'),
 (872,'Login admin','06:48:45','2015-09-09');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (873,'Logout adminSystem Close','06:49:54','2015-09-09'),
 (874,'Logout System Close','06:54:44','2015-09-09'),
 (875,'Login admin','07:02:23','2015-09-09'),
 (876,'Logout adminSystem Close','07:02:51','2015-09-09'),
 (877,'Login admin','07:03:13','2015-09-09'),
 (878,'Logout adminSystem Close','07:04:23','2015-09-09'),
 (879,'Logout System Close','07:05:59','2015-09-09'),
 (880,'Logout System Close','07:14:32','2015-09-09'),
 (881,'Login admin','07:15:31','2015-09-09'),
 (882,'Logout adminSystem Close','07:16:27','2015-09-09'),
 (883,'Login admin','07:17:28','2015-09-09'),
 (884,'IAPS print ID number 65','07:18:25','2015-09-09'),
 (885,'Logout adminSystem Close','07:21:50','2015-09-09'),
 (886,'Login admin','07:23:27','2015-09-09'),
 (887,'Logout adminSystem Close','07:25:56','2015-09-09'),
 (888,'Login admin','07:33:03','2015-09-09'),
 (889,'Logout adminSystem Close','07:33:30','2015-09-09'),
 (890,'Login admin','07:35:07','2015-09-09'),
 (891,'Logout adminSystem Close','07:36:00','2015-09-09');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (892,'Login admin','07:39:05','2015-09-09'),
 (893,'Logout adminSystem Close','07:39:26','2015-09-09'),
 (894,'Login admin','07:41:31','2015-09-09'),
 (895,'Logout adminSystem Close','07:41:51','2015-09-09'),
 (896,'Login admin','07:46:15','2015-09-09'),
 (897,'Logout adminSystem Close','07:47:44','2015-09-09');
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;


--
-- Table structure for table `bin`.`opisinfo`
--

DROP TABLE IF EXISTS `opisinfo`;
CREATE TABLE `opisinfo` (
  `idOpisInfo` int(10) unsigned NOT NULL auto_increment,
  `region` varchar(45) NOT NULL default '',
  `op_add` varchar(45) NOT NULL default '',
  `telephone` varchar(45) NOT NULL default '',
  `oic` varchar(45) NOT NULL default '',
  `rank` varchar(45) NOT NULL default '',
  `h_e` varchar(45) NOT NULL default '',
  `ele` varchar(45) NOT NULL default '',
  `career_sc` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`idOpisInfo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bin`.`opisinfo`
--

/*!40000 ALTER TABLE `opisinfo` DISABLE KEYS */;
INSERT INTO `opisinfo` (`idOpisInfo`,`region`,`op_add`,`telephone`,`oic`,`rank`,`h_e`,`ele`,`career_sc`) VALUES 
 (1,'Sulop Municipal Pulis Station','Sulop','123123','Raffy Madula,ECE','FB Sulop MPS','GMAIL','PRC','USEP- MEP ECE');
/*!40000 ALTER TABLE `opisinfo` ENABLE KEYS */;


--
-- Table structure for table `bin`.`useracc`
--

DROP TABLE IF EXISTS `useracc`;
CREATE TABLE `useracc` (
  `idUserAcc` int(10) unsigned NOT NULL auto_increment,
  `Fname` varchar(45) NOT NULL default '',
  `Lname` varchar(45) NOT NULL default '',
  `Mname` varchar(45) NOT NULL default '',
  `Pass` varchar(45) NOT NULL default '',
  `Username` varchar(45) NOT NULL default '',
  `date` date NOT NULL default '0000-00-00',
  `time` time NOT NULL default '00:00:00',
  `type` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`idUserAcc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bin`.`useracc`
--

/*!40000 ALTER TABLE `useracc` DISABLE KEYS */;
INSERT INTO `useracc` (`idUserAcc`,`Fname`,`Lname`,`Mname`,`Pass`,`Username`,`date`,`time`,`type`) VALUES 
 (1,'admin','admin','admin','admin','admin','0000-00-00','00:00:00','admin'),
 (2,'Jamie Eduardo','C.','Rosal','1234','jamie','2015-08-27','07:53:57','user'),
 (4,'hahaasdasd','hahahasdas','hahadasdasd','haha','hahah','2015-09-09','02:58:28','user');
/*!40000 ALTER TABLE `useracc` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

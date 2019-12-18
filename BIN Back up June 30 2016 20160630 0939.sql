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
 (1,'Balasinon',3),
 (2,'Buguis',0),
 (3,'Carre',0),
 (4,'Clib',0),
 (5,'Harada Butai',0),
 (6,'Katipunan',0),
 (7,'Kiblagon',1),
 (8,'Labon',1),
 (9,'Laperas',3),
 (10,'Lapla',0),
 (11,'Litos',0),
 (12,'Luparan',9),
 (13,'Mckinley',4),
 (14,'New Cebu',1),
 (15,'Osmeña',9),
 (16,'Palili',5),
 (17,'Parame',0),
 (18,'Poblacion',14),
 (19,'Roxas',0),
 (20,'Solongvale',1),
 (21,'Tagolilong',1),
 (22,'Tala-o',1),
 (23,'Talas',4),
 (24,'Tanwalang',0),
 (25,'Waterfall',5);
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
 (1,'Bea Tungal Lumbab','November 10, 2009','1'),
 (2,'Joselito Sebonga Jr.','','2'),
 (3,'Divelien Patigayon','','3'),
 (4,'Princess Patigayon','','3'),
 (5,'Harby Bellela','','4'),
 (6,'Dharyl Bellela','','4'),
 (7,'Kherby Bellela','','4'),
 (8,'Kim Ralph Bellela','','4'),
 (12,'Randy','','5'),
 (13,'Paul','','5'),
 (14,'Johannah','','5'),
 (15,'Jay-an','August 11, 1989','6'),
 (16,'Vince Isiah','April 11, 2013','7'),
 (17,'Cluee Jean Diama','October 25, 2006','8'),
 (18,'Sarah Jean Diama','March 25, 2012','8'),
 (19,'Edieline Sumalinog','November 8, 2004','11'),
 (20,'Eduard Sumalinog','August 7, 2002','11');
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
  `Age` varchar(45) character set latin1 collate latin1_bin NOT NULL default '',
  `Nationality` varchar(45) NOT NULL default '',
  `Religion` varchar(45) NOT NULL default '',
  `Mar_status` varchar(45) NOT NULL default '',
  `Education` varchar(85) NOT NULL default '',
  `Alias` varchar(45) NOT NULL default '',
  `Place_Birth` varchar(45) NOT NULL default '',
  `P_Adrress` varchar(60) NOT NULL default '',
  `Per_Adrress` varchar(60) NOT NULL default '',
  `Zipcode` varchar(45) NOT NULL default '',
  `S_Codification` varchar(255) NOT NULL default '',
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
  `Employement` varchar(255) NOT NULL default '',
  `Position` varchar(255) NOT NULL default '',
  `N_Employer` varchar(255) NOT NULL default '',
  `TerminationDate` varchar(45) NOT NULL default '',
  `Mode_Con` varchar(45) NOT NULL default '',
  `Mob_no` varchar(45) NOT NULL default '',
  `Email` varchar(60) NOT NULL default '',
  `P_Con` varchar(80) NOT NULL default '',
  `P_Con_num` varchar(60) NOT NULL default '',
  `EntryTime` varchar(255) NOT NULL default '',
  `EntryDate` varchar(255) NOT NULL default '',
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
  `B_Date` date default NULL,
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
 (1,'Marlon','Arellano','Lumbab','26','Filipino','IPI','Married','Highschool','Mar2x','Davao del Sur','','','8009','U8009MEBMA11III1989A07102015','Active','Laperas','Select  Barangay','','','','','','','','','','','','','','Tricycle Driver','','','CP','09057525103','','','','','2050/09/28','not available','','','PO3 Telmo','','Marjorie Tungal Lumbab','','MALE','','2015-07-10','1989-03-11','03:38:17','2050-09-28','Davao del Sur','','Sulop','Philippines','','','','','C:/BIN/legacy/MarlonLumbabArellanoIAPS.jpg','C:/BIN/legacy/MarlonLumbabArellanoSDCSCS.jpg',''),
 (2,'Joselito','C','Sebonga','44','Filipino','RC','Married','','Gamay','North Cotabato','','','8009','U8009MEBMA11III1971A071015','Active','Laperas','Select  Barangay','','','','','','','','','','','','','','Driver','','','Radio Base',' ','','','','','2015/10/1','not available','','','PO3 Ramonito B Telmo','','Elezabeth Sebonga','','MALE','','2015-07-10','1971-07-28','04:40:16','2015-10-01','Davao del Sur','','Sulop','Philippines','','','','','C:/BIN/legacy/JoselitoSebongaCIAPS.jpg','C:/BIN/legacy/JoselitoSebongaCSDCSCS.jpg','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (3,'Diby','Gallarde','Patigayon','33','Filipino','RC','Married','Highschool','Dev','Davao del Sur','','','8009','U8009MEBMA11III1982A071215','Active','Waterfall','Select  Barangay','','','','','','','','','','','','','','Driver','','','Radio Base','','','','','','2015/10/1','not available','','','PO3 Ramonito B Telmo','','Analyn Patigayon','','MALE','','2015-07-12','1982-02-09','04:40:27','2015-10-01','Davao del Sur','','Sulop','Philippines','','','','','C:/BIN/legacy/DibyPatigayonGallardeIAPS.jpg','C:/BIN/legacy/DibyPatigayonGallardeSDCSCS.jpg',''),
 (4,'Alberto','Aurena','Bellela','39','Filipino',' RC','Married','','Bert','Davao del Sur','','','8009','U8009MEBMA11III1976A071315','Active','Tagolilong','Select  Barangay','','','','','','','','','','','','','','Farmer','','','CP','09468213696','','','','','2015/09/28','not available','','','PO3 Telmo','','Charilyn Bellela','','MALE','','2015-07-13','1976-01-07','02:48:28','2015-09-28','Davao del Sur','','Sulop','Philippines','','','','January 28, 1980','C:/BIN/legacy/AlbertoBellelaAurenaIAPS.jpg','C:/BIN/legacy/AlbertoBellelaAurenaSDCSCS.jpg','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (5,'Randy','Pingot','Masigbad','39','Filipino','RC','Married','','Randy','Davao del Sur','','','8009','U8009MEBMA11III1976A071515','Active','Labon','Select  Barangay','','','','','','','','','','','','','','Driver','','','Radio Base','','','','','','2015/10/1','not available','','','PO3 Ramonito B Telmo','','Jonalyn Alferez Masigbad','','MALE','','2015-07-15','1976-04-18','04:40:41','2015-10-01','Davao del Sur','','Sulop','Philippines','','','','','C:/BIN/legacy/RandyMasigbadPingotIAPS.jpg','C:/BIN/legacy/RandyMasigbadPingotSDCSCS.jpg',''),
 (6,'Pulito','Cole','Bentulan','52','Filipino','RC','Married','','Lits','Davao del Sur','','','8009','U8009MEBMA11III1963A071415','Active','Luparan','Select  Barangay','','','','','','','','','','','','','','Driver','','','Radio Base','','','','','','2015/10/1','not available','','','PO3 Ramonito B Telmo','','Rebecca A. Morales','','MALE','','2015-07-14','1963-08-22','04:40:34','2015-10-01','Davao del Sur','','Sulop','Philippines','','','','','C:/BIN/legacy/PulitoBentulanColeIAPS.jpg','C:/BIN/legacy/PulitoBentulanColeSDCSCS.jpg','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (7,'Vincent','Cañedo','Flores','22','Filipino','RC','Married','','Enting','Davao del Sur','P-3','','8009','U8009MEBMA11III1993A07','Active','Poblacion','Select  Barangay','','','','','','','','','','','','','','Driver','','','CP','09482245621','','','','','2015/10/1','not available','','','PO3 Ramonito B Telmo','','Alyza Escaner','','MALE','','2015-07-16','1993-04-16','04:40:49','2015-10-01','Davao del Sur','','Sulop','Philippines','','','','','C:/BIN/legacy/VincentFloresCañedoIAPS.jpg','C:/BIN/legacy/VincentFloresCañedoSDCSCS.jpg',''),
 (8,'Jeffrey','Pancho','Diama','34','Filipino','RC','Married','Elementary Graduate','Thata','Davao del Sur','Purok 2','','8009','U8009MEBMA11III1981A071615','Active','Osmeña','Select  Barangay','','','','','','','','','','','','','','L.G.U.','','','CP','091468741708','','','','','2015/10/1','not available','','','PO3 Ramonito B Telmo','','Ellen Diama ','','MALE','','2015-07-16','1981-12-14','04:41:03','2015-10-01','Davao del Sur','','Sulop','Philippines','','','','','C:/BIN/legacy/JeffreyDiamaPanchoIAPS.jpg','C:/BIN/legacy/JeffreyDiamaPanchoSDCSCS.jpg','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (9,'Jeffrey','Soltes','Matalaban','23','Filipino','RC','Single','Graduate of Bachelor of Arts','Jepoy','Davao del Sur','P-1','','8009','U8009MEBMA11III1992A071915','Active','Kiblagon','Select  Barangay','','Black','Fair','Black','Medium','','','','5\'7','','','','','None','','','CP','09094822969','','','','','2015/10/2','not available','','','PO3 Ramonito B Telmo','','','','MALE','','2015-07-19','1992-10-12','02:57:59','2015-10-02','Davao del Sur','','Sulop','Philippines','','','','','C:/BIN/legacy/JeffreyMatalabanSoltesIAPS.jpg','C:/BIN/legacy/JeffreyMatalabanSoltesSDCSCS.jpg',''),
 (10,'Ryan','Lopez','Cabanay','21','Filipino','Islam','Single','College level','Gahol','Davao del Sur','','','8009','U8009MEBMA11III1994A072015','Active','Balasinon','Select  Barangay','','','Fair','','','','','','','','','','','Driver','','','CP','09486511504','','','','','2015/10/1','not available','','','PO3 Ramonito B Telmo','','','','MALE','','2015-07-20','1994-11-14','04:41:16','2015-10-01','Davao del Sur','','Sulop','Philippines','','','','','C:/BIN/legacy/RyanCabanayLopezIAPS.jpg','C:/BIN/legacy/RyanCabanayLopezSDCSCS.jpg','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (11,'Eduardo','Plania','Sumalinog Jr.','34','Filipino','RC','Married','','Ghaga','Davao del Sur','Purok 8','','8009','U8009MEBMA11III1981A072115','Active','Poblacion','Select  Barangay','','','Fair','','','','','','','','','','','Driver/Delivery','','','CP','09104037110','','','','','2015/10/1','not available','','','PO3 Ramonito B Telmo','','Jacqueline Almacin Sumalinog','','MALE','','2015-07-21','1981-06-11','04:41:24','2015-10-01','Davao del Sur','','Sulop','Philippines','','','','','C:/BIN/legacy/EduardoSumalinog Jr.PlaniaIAPS.jpg','C:/BIN/legacy/EduardoSumalinog Jr.PlaniaSDCSCS.jpg',''),
 (12,'Fidel','Lagnason','Magocol','55','Filipino','RC','Married','','Todoy','Davao del Sur','','','8009','U8009MEBMA11III1960A09212015','Active','Luparan','Select  Barangay','','','Fair','','','','','','','','','','','Farmer','','','Radio Base',' ','','','','','2015/10/2','not available','','','PO3 Ramonito B Telmo','','','','MALE','','2015-09-21','1960-11-05','02:53:09','2015-10-02','Davao del Sur','','Sulop','Philippines','','','','','C:/BIN/legacy/FidelMagocolLagnasonIAPS.jpg','C:/BIN/legacy/FidelMagocolLagnasonSDCSCS.jpg','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (13,'Ronelo','Gemino','Arellano','40','Filipino','RC','Married','','Ronel','Davao del Sur','','','8009','U8009MEBMA11III1975A092315','Active','Luparan','Select  Barangay','','','','','','','','','','','','','','Brgy Tanod','','','Radio Base','','','','','','2015/10/1','not available','','','PO3 Ramonito B Telmo','','','','MALE','','2015-09-23','1975-10-28','04:40:08','2015-10-01','Davao del Sur','','Sulop','Philippines','','','','','C:/BIN/legacy/RoneloArellanoGeminoIAPS.jpg','C:/BIN/legacy/RoneloArellanoGeminoSDCSCS.jpg',''),
 (14,'Ricardo','Brigole','Ressurreccion','53','Filipino','RC','Married','','Cardo','Davao del Sur','','','8009','U8009MEBMA11III1962A092315','Active','Luparan','','','','','','','','','','','','','','','Farmer','','','Radio Base','','','','','04:45:27','2015/10/1','not available','','','PO3 Ramonito B Telmo','','','','MALE','','2015-09-23','1962-03-29','04:45:27','2015-10-01','Davao del Sur','','Sulop','Philippines','','','',NULL,'C:/BIN/legacy/RicardoRessurreccionBrigoleIAPS.jpg','C:/BIN/legacy/RicardoRessurreccionBrigoleSDCSCS.jpg','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (15,'Romeo','Bartolaba','Paglinawan','46','Filipino','RC','Married','','Meo','Davao del Sur','','','8009','U8009MEBMA11III1969A092315','Active','Luparan','Select  Barangay','','','','','','','','','','','','','','Farmer','','','Radio Base',' ','','','','','2015/10/2','not available','','','PO3 Ramonito B Telmo','','','','MALE','','2015-09-23','1969-03-21','02:56:24','2015-10-02','Davao del Sur','','Sulop','Philippines','','','','','C:/BIN/legacy/RomeoPaglinawanBartulabaIAPS.jpg','C:/BIN/legacy/RomeoPaglinawanBartulabaSDCSCS.jpg',''),
 (16,'Antonio','Cavan','Mellejor','41','Filipino','RC','Married','','Tonio','Davao del Sur','','','8009','U8009MEBMA11III1974A092315','Active','Osmeña','','','','','','','','','','','','','','','Habal2x Driver','','','Radio Base','','','','','09:14:39','2015/10/2','not available','','','PO3 Ramonito B Telmo','','','','MALE','','2015-09-23','1974-02-09','09:14:39','2015-10-02','Davao del Sur','','Sulop','Philippines','','','',NULL,'C:/BIN/legacy/AntonioMellejorCavanIAPS.jpg','C:/BIN/legacy/AntonioMellejorCavanSDCSCS.jpg','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (17,'Vicente','Tumarong','Llamos','44','Filipino','RC','Married','','Enting','Davao del Sur','','','8009','U8009MEBMA11III1971A092115','Active','Luparan','Select  Barangay','','','Fair','','','','','','','','','','','Barangay Tanod','','','CP','09129380784','','','','','2015/10/2','not available','','','PO3 Ramonito B Telmo','','','','MALE','','2015-09-21','1971-07-19','02:53:14','2015-10-02','Davao del Sur','','Sulop','Philippines','','','','','C:/BIN/legacy/VicenteLlamosTumarongIAPS.jpg','C:/BIN/legacy/VicenteLlamosTumarongSDCSCS.jpg',''),
 (18,'Randy','Daligdig','Cabasag','31','Filipino','RC','Married','','Idol','Gensan City','','','8009','U8009MEBMA11III1984A092115','Active','Osmeña','Select  Barangay','','','Fair','','','','','','','','','','','Driver','','','CP','09268303934','','','','','2015/10/2','not available','','','PO3 Ramonito B Telmo','','','','MALE','','2015-09-21','1984-08-28','02:53:18','2015-10-02','Davao del Sur','','Sulop','Philippines','','','','','C:/BIN/legacy/RandyCabasagDaligdigIAPS.jpg','C:/BIN/legacy/RandyCabasagDaligdigSDCSCS.jpg','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (19,'Richie','Escaner','Comeros','34','Filipino','RC','Married','','Toto','Bukidnon Quezon City','','','8009','U8009MEBMA11III1981A092115','Active','Luparan','Select  Barangay','','','Fair','','','','','','','','','','','Farmer','','','CP','09484896648','','','','','2015/10/2','not available','','','PO3 Ramonito B Telmo','','','','MALE','','2015-09-21','1981-02-01','02:53:22','2015-10-02','Davao del Sur','','Sulop','Philippines','','','','','C:/BIN/legacy/RichieComerosEscanerIAPS.jpg','C:/BIN/legacy/RichieComerosEscanerSDCSCS.jpg',''),
 (20,'Elizabeth','Dangle','Preglo','50','Filipino','RC','Married','','Beth','Koronadal City','','','8009','U8009MEBMA11III1965A092215','Active','Luparan','Select  Barangay','','','Fair','','','','','','','','','','','Housekeeper','','','CP','09169736703','','','','','2015/10/2','not available','','','PO3 Ramonito B Telmo','','','','FEMALE','','2015-09-22','1965-09-16','02:53:25','2015-10-02','Davao del Sur','','Sulop','Philippines','','','','','C:/BIN/legacy/ElizabethPregloDangleIAPS.jpg','C:/BIN/legacy/ElizabethPregloDangleSDCSCS.jpg','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (21,'Arsenio','Durog','Modequillo','40','Filipino','RC','Married','','Teting','Davao del Sur','','','8009','U8009MEBMA11III1975A0092215','Active','Laperas','Select  Barangay','','','Fair','','','','','','','','','','','Farmer','','','CP','09363391500','','','','','2015/10/2','not available','','','PO3 Ramonito B Telmo','','','','MALE','','2015-09-22','1975-06-21','02:53:28','2015-10-02','Davao del Sur','','Sulop','Philippines','','','','','C:/BIN/legacy/ArsenioModequilloDurogIAPS.jpg','C:/BIN/legacy/ArsenioModequilloDurogSDCSCS.jpg',''),
 (22,'Oscar','Mondejar','Preglo','41','Filipino','Christian','Married','','Oca','Davao del Sur','','','8009','U8009MEBMA11III1974A092215','Active','Mckinley','Select  Barangay','','','Fair','','','','','','','','','','','Carpenter','','','CP','09359045083','','','','','2015/10/2','not available','','','PO3 Ramonito B Telmo','','','','MALE','','2015-09-22','1974-03-08','02:53:32','2015-10-02','Davao del Sur','','Sulop','Philippines','','','','','C:/BIN/legacy/OscarPregloMondejarIAPS.jpg','C:/BIN/legacy/OscarPregloMondejarSDCSCS.jpg','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (23,'Rodel','Duhilag','Roxas','37','Filipino','Christian','Single','','Odek','Davao del Sur','','','8009','U8009MEBMA11III1978A092015','Active','Osmeña','Select  Barangay','','','','','','','','','','','','','','Farmer','','','Radio Base','','','','','','2015/10/2','not available','','','PO3 Ramonito B Telmo','','','','MALE','','2015-09-20','1978-01-21','02:53:02','2015-10-02','Davao del Sur','','Sulop','Philippines','','','','','C:/BIN/legacy/RodelRoxasDuhilagIAPS.jpg','C:/BIN/legacy/RodelRoxasDuhilagSDCSCS.jpg',''),
 (24,'Erik','Armicin','Bantilan','24','Filipino','RC','Married','','Erik','Davao del Sur','','','8009','U8009MEBMA11III1991A092215','Active','Osmeña','Select  Barangay','','','Fair','','','','','','','','','','','Farmer','','','CP','09125153807','','','','','2015/10/2','not available','','','PO3 Ramonito B Telmo','','','','MALE','','2015-09-22','1991-05-04','02:53:35','2015-10-02','Davao del Sur','','Sulop','Philippines','','','','','C:/BIN/legacy/ErikBantilanArmicinIAPS.jpg','C:/BIN/legacy/ErikBantilanArmicinSDCSCS.jpg','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (25,'Renato','Cuaton','Bantillan','29','Filipino','RC','Married','','Natoy','Davao del Sur','','','8009','U8009MEBMA11III1986A092315','Active','Osmeña','','','','','','','','','','','','','','','Farmer','','','Radio Base','','','','','10:40:54','2015/10/2','not available','','','PO3 Ramonito B Telmo','','','','MALE','','2015-09-23','1986-06-14','10:40:54','2015-10-02','Davao del Sur','','Sulop','Philippines','','','',NULL,'C:/BIN/legacy/RenatoBantillanCuatonIAPS.jpg','C:/BIN/legacy/RenatoBantillanCuatonSDCSCS.jpg',''),
 (26,'John Mark','Hisoro','Ropo','28','Filipino','RC','Single','','Macoy','Davao del Sur','','','8009','U8009MEBMA11III1987A092315','Active','Osmeña','Select  Barangay','','','','','','','','','','','','','','Habal2x Driver','','','CP','09364018766','','','','','2015/10/2','not available','','','PO3 Ramonito B Telmo','','','','MALE','','2015-09-23','1987-11-27','02:56:08','2015-10-02','Davao del Sur','','Sulop','Philippines','','','','','C:/BIN/legacy/John MarkRopoHisoroIAPS.jpg','C:/BIN/legacy/John MarkRopoHisoroSDCSCS.jpg','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (27,'Godfre','Candia','Eliaga','30','Filipino','RC','Married','','Fre','Davao del Sur','','','8009','U8009MEBMA11III1985A092015','Active','Osmeña','Select  Barangay','','','','','','','','','','','','','','Barangay Utility','','','Radio Base','','','','','','2015/10/2','not available','','','PO3 Ramonito B Telmo','','','','MALE','','2015-09-20','1985-05-29','02:53:06','2015-10-02','Davao del Sur','','Sulop','Philippines','','','','','C:/BIN/legacy/GodfreEliagaCandiaIAPS.jpg','C:/BIN/legacy/GodfreEliagaCandiaSDCSCS.jpg',''),
 (28,'Lojie','Argallon','Mamalias','26','Filipino','RC','Married','','Jie','Davao City','','','8009','U8009MEBMA11III1989A092315','Active','Osmeña','','','','','','','','','','','','','','','Farmer','','','CP','09075374872','','','','11:04:28','2015/10/2','not available','','','PO3 Ramonito B Telmo','','','','MALE','','2015-09-23','1989-03-04','11:04:28','2015-10-02','Davao del Sur','','Sulop','Philippines','','','',NULL,'C:/BIN/legacy/LojieMamaliasArgallonIAPS.jpg','C:/BIN/legacy/LojieMamaliasArgallonSDCSCS.jpg','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (29,'Gilbert','Espino','Nasi-ad','36','Filipino','RC','Married','','Nas','Davao del Sur','','','8009','U8009MEBMA11III1979A092155','Active','Mckinley','Select  Barangay','','','','','','','','','','','','','','Farmer','','','Radio Base','','','','','','2015/10/2','not available','','','PO3 Ramonito B Telmo','','','','MALE','','2015-09-15','1979-06-24','02:52:52','2015-10-02','Davao del Sur','','Sulop','Philippines','','','','','C:/BIN/legacy/GilbertNasi-adEspinoIAPS.jpg','C:/BIN/legacy/GilbertNasi-adEspinoSDCSCS.jpg',''),
 (30,'Joven','Barsalote','Arendain','44','Filipino','RC','Married','','Entoy','Davao del Sur','','','8009','U8009MEBMA11III1971A091515','Active','Mckinley','Select  Barangay','','','','','','','','','','','','','','Farmer','','','CP','0906886484','','','','','2015/10/2','not available','','','PO3 Ramonito B Telmo','','','','MALE','','2015-09-15','1971-05-04','02:52:58','2015-10-02','Davao del Sur','','Sulop','Philippines','','','','','C:/BIN/legacy/JovenArendainBarsaloteIAPS.jpg','C:/BIN/legacy/JovenArendainBarsaloteSDCSCS.jpg','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (31,'Luis','Salanap','Lungay','34','Filipino','RC','Single','','Boy','Davao del Sur','','','8009','U8009MEBMA11III1981A090815','Active','Balasinon','','','','','','','','','','','','','','','Farmer','','','','','','','','11:29:20','2015/10/2','','','','PO3 Ramonito B Telmo','','','','MALE','','2015-09-08','1981-03-15','11:29:20','2015-10-02','Davao del Sur','','Sulop','Philippines','','','',NULL,'C:/BIN/legacy/LuisLungaySalanapIAPS.jpg','C:/BIN/legacy/LuisLungaySalanapSDCSCS.jpg',''),
 (32,'Niño','Patigayon','Albarracin','27','Filipino','RC','Married','','Nino','Davao del Sur','','','8009','U8009MEBMA11III1988A05302015','Active','Palili','','','','','','','','','','','','','','','Tricycle Driver','','','Radio Base','','','','','12:56:47','2015/10/6','not available','','','PO3 Ramonito B Telmo','','','','MALE','','2015-05-30','1988-10-08','12:56:47','2015-10-06','Davao del Sur','','Sulop','Philippines','','','',NULL,'C:/BIN/legacy/NiñoAlbarracinPatigayonIAPS.jpg','C:/BIN/legacy/NiñoAlbarracinPatigayonSDCSCS.jpg','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (33,'Alvin','Librea','Arnado','23','Filipino','RC','Single','','Alvin','Davao del Sur','','','8009','U8009MEBMA11III1992A053015','Active','Poblacion','Select  Barangay','','','','','','','','','','','','','','Tricycle Driver','','','CP','09489963183','','','','','2015/10/8','not available','','','PO3 Ramonito B Telmo','','','','MALE','','2015-05-30','1992-06-07','09:01:09','2015-10-08','Davao del Sur','','Sulop','Philippines','','','','','C:/BIN/legacy/AlvinArnadoLibreaIAPS.jpg','C:/BIN/legacy/AlvinArnadoLibreaSDCSCS.jpg',''),
 (34,'Jannes','Sardido','Sala','32','Filipino','RC','Single','','Niz','Davao del Sur','','','8009','U8009MEBMA11III1983A053015','Active','Poblacion','','','','','','','','','','','','','','','JO LGU Timekeeper','','','CP','09983048731','','','','01:18:10','2015/10/6','not available','','','PO3 Ramonito B Telmo','','','','MALE','','2015-05-30','1983-02-09','01:18:10','2015-10-06','Davao del Sur','','Sulop','Philippines','','','',NULL,'C:/BIN/legacy/JannesSalaSardidoIAPS.jpg','C:/BIN/legacy/JannesSalaSardidoSDCSCS.jpg','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (35,'Edgar','Bajenting','Albarracin','40','Filipino','RC','Married','','Edgar','Davao del Sur','','','8009','U8009MEBMA11III1975A053015','Active','Palili','','','','','','','','','','','','','','','Driver','','','CP','09489684296','','','','01:22:00','2015/10/6','not available','','','PO3 Ramonito B Telmo','','','','MALE','','2015-05-30','1975-02-02','01:22:00','2015-10-06','Davao del Sur','','Sulop','Philippines','','','',NULL,'C:/BIN/legacy/EdgarAlbarracinBajentingIAPS.jpg','C:/BIN/legacy/EdgarAlbarracinBajentingSDCSCS.jpg',''),
 (36,'Rey','Arendain','Tapdasan','38','Filipino','RC','Married','','Tata','Davao del Sur','','','8009','U8009MEBMA11III1977A053015','Active','Talas','','','','','','','','','','','','','','','Driver','','','Radio Base','','','','','01:25:30','2015/10/6','not available','','','PO3 Ramonito B Telmo','','','','MALE','','2015-05-30','1977-02-22','01:25:30','2015-10-06','Davao del Sur','','Sulop','Philippines','','','',NULL,'C:/BIN/legacy/ReyTapdasanArendainIAPS.jpg','C:/BIN/legacy/ReyTapdasanArendainSDCSCS.jpg','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (37,'Joenard','Dura','Reponte','39','Filipino','RC','Married','','Nardz','Davao del Sur','','','8009','U8009MEBMA11III1976A060115','Active','Talas','','','','','','','','','','','','','','','Tricycle Driver','','','CP','09192940454','','','','01:29:01','2015/10/6','not available','','','PO3 Ramonito B Telmo','','','','MALE','','2015-06-01','1976-11-30','01:29:01','2015-10-06','Davao del Sur','','Sulop','Philippines','','','',NULL,'C:/BIN/legacy/JoenardReponteDuraIAPS.jpg','C:/BIN/legacy/JoenardReponteDuraSDCSCS.jpg',''),
 (38,'Antonio','Noval','Palma','54','Filipino','','Married','','Rey','Davao del Sur','','','8009','U8009MEBMA11III1961A053015','Active','Poblacion','','','','','','','','','','','','','','','Tricycle Driver','','','CP','09197856164','','','','01:34:09','2015/10/6','not available','','','PO3 Ramonito B Telmo','','','','MALE','','2015-05-30','1961-06-12','01:34:09','2015-10-06','Davao del Sur','','Sulop','Philippines','','','',NULL,'C:/BIN/legacy/AntonioPalmaNovalIAPS.jpg','C:/BIN/legacy/AntonioPalmaNovalSDCSCS.jpg','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (39,'Jayron Dale','Martinez','Albarracin','19','Filipino','RC','Single','','Norjas','Davao del Sur','','','8009','U8009MEBMA11III1996A053015','Active','Tala-o','Select  Barangay','','','','','','','','','','','','','','Student','','','CP','09207960215','','','','','2015/10/6','not available','','','PO3 Ramonito B Telmo','','','','MALE','','2015-05-30','1996-01-12','03:32:41','2015-10-06','Davao del Sur','','Sulop','Philippines','','','','','C:/BIN/legacy/Jayron DaleAlbarracinMartinezIAPS.jpg','C:/BIN/legacy/Jayron DaleAlbarracinMartinezSDCSCS.jpg',''),
 (40,'Jennifer','Sumalinog','Nuñez','28','Filipino','RC','Married','','Botchoy','Davao del Sur','','','8009','U8009MEBMA11III1987A053015','Active','Mckinley','','','','','','','','','','','','','','','Driver','','','CP','09127828279','','','','01:54:25','2015/10/6','not available','','','PO3 Ramonito B Telmo','','','','MALE','','2015-05-30','1987-01-26','01:54:25','2015-10-06','Davao del Sur','','Sulop','Philippines','','','',NULL,'C:/BIN/legacy/JenniferNuñezSumalinogIAPS.jpg','C:/BIN/legacy/JenniferNuñezSumalinogSDCSCS.jpg','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (41,'Miguel','Brigole','Wabinga','59','Filipino','RC','Married','','Egui','Davao del Sur','','','8009','U8009MEBMA11III1956A053015','Active','Waterfall','','','','','','','','','','','','','','','Driver','','','Radio Base','','','','','02:13:58','2015/10/6','not available','','','PO3 Ramonito B Telmo','','','','MALE','','2015-05-30','1956-09-19','02:13:58','2015-10-06','Davao del Sur','','Sulop','Philippines','','','',NULL,'C:/BIN/legacy/MiguelWabingaBrigoleIAPS.jpg','C:/BIN/legacy/MiguelWabingaBrigoleSDCSCS.jpg',''),
 (42,'Fred','Barquio','Samoyan','45','Filipino','Islam','Married','','Dodong','Davao del Sur','','','8009','U8009MEBMA11III1970A060415','Active','Poblacion','','','','','','','','','','','','','','','Driver','','','CP','09465346779','','','','02:37:30','2015/10/6','not available','','','PO3 Ramonito B Telmo','','','','MALE','','2015-06-04','1970-01-25','02:37:30','2015-10-06','Davao del Sur','','Sulop','Philippines','','','',NULL,'C:/BIN/legacy/FredSamoyanBarquioIAPS.jpg','C:/BIN/legacy/FredSamoyanBarquioSDCSCS.jpg','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (43,'Manuelito','Alforque','Elevira','42','Filipino','RC','Married','','Lito','Davao del Sur','Purok 2','','8009','U8009MEBMA11III1973A053015','Active','Poblacion','Select  Barangay','','','','','','','','','','','','','','Tricycle Driver','','','CP','09301114991','','','','','2015/10/6','not available','','','PO3 Ramonito B Telmo','','','','MALE','','2015-05-30','1973-05-26','03:21:19','2015-10-06','Davao del Sur','','Sulop','Philippines','','','','','C:/BIN/legacy/ManuelitoEleviraAlforqueIAPS.jpg','C:/BIN/legacy/ManuelitoEleviraAlforqueSDCSCS.jpg',''),
 (44,'Raul','Desirto','Ondoy Sr.','38','Filipino','RC','Married','','Raul','Davao del Sur','','','8009','U8009MEBMA11III1977A053015','Active','Poblacion','Select  Barangay','','','','','','','','','','','','','','Driver','','','CP','09309675965','','','','','2015/10/6','not available','','','PO3 Ramonito B Telmo','','','','MALE','','2015-05-30','1977-08-17','05:06:00','2015-10-06','Davao del Sur','','Sulop','Philippines','','','','','C:/BIN/legacy/RaulOndoyDIAPS.jpg','C:/BIN/legacy/RaulOndoyDSDCSCS.jpg','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (45,'Maximo','Amolong','Oñes','59','Filipino','RC','Married','','Loloy','Cortes, Bohol','Purok 2','','8009','U8009MEBMA11III1956A060515','Active','Poblacion','Select  Barangay','','','','','','','','','','','','','','Farmer','','','Radio Base','','','','','','2015/10/6','not available','','','PO3 Ramonito B Telmo','','','','MALE','','2015-06-05','1956-11-21','03:20:25','2015-10-06','Davao del Sur','','Sulop','Philippines','','','','','C:/BIN/legacy/MaximoOnesAmolongIAPS.jpg','C:/BIN/legacy/MaximoOnesAmolongSDCSCS.jpg',''),
 (46,'Rodolfo','Malasado','Pabanua Jr','40','Filipino','RC','Married','','Lito','Davao del Sur','','','8009','U8009MEBMA11III1975A052915','Active','Waterfall','','','','','','','','','','','','','','','Driver','','','CP','09307205348','','','','03:07:12','2015/10/6','not available','','','PO3 Ramonito B Telmo','','','','MALE','','2015-05-29','1975-08-02','03:07:12','2015-10-06','Davao del Sur','','Sulop','Philippines','','','',NULL,'C:/BIN/legacy/RodolfoPabanua JrMalasadoIAPS.jpg','C:/BIN/legacy/RodolfoPabanua JrMalasadoSDCSCS.jpg','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (47,'Danilo','Momo','Pacilan','43','Filipino','RC','Married','','Danny','Davao del Sur','','','8009','U8009MEBMA11III1972A053015','Active','Poblacion','Select  Barangay','','','','','','','','','','','','','','Driver','','','CP','09095381317','','','','','2015/10/6','not available','','','PO3 Ramonito B Telmo','','','','MALE','','2015-05-30','1972-03-30','03:32:02','2015-10-06','Davao del Sur','','Sulop','Philippines','','','','','C:/BIN/legacy/DaniloPacilanMomoIAPS.jpg','C:/BIN/legacy/DaniloPacilanMomoSDCSCS.jpg',''),
 (48,'Cleomar','Diaz','Armilla','32','Filipino','RC','Live-In','','Omar','Malungon, Sarangani Province','','','8009','U8009MEBMA11III1983A060915','Active','Poblacion','Select  Barangay','','','','','','','','','','','','','','Pedicab Driver','','','CP','09498672183','','','','','2015/10/6','not available','','','PO3 Ramonito B Telmo','','','','MALE','','2015-06-09','1983-09-15','03:32:18','2015-10-06','Davao del Sur','','Sulop','Philippines','','','','','C:/BIN/legacy/CleomarArmillaDiazIAPS.jpg','C:/BIN/legacy/CleomarArmillaDiazSDCSCS.jpg','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (49,'Rhonnel','Patigayon','Albarracin','28','Filipino','RC','Married','','Nel','Davao del Sur','','','8009','U8009MEBMA11III1987A053015','Active','Palili','','','','','','','','','','','','','','','Tricycle Driver','','','CP','09295919084','','','','03:30:03','2015/10/6','not available','','','PO3 Ramonito B Telmo','','','','MALE','','2015-05-30','1987-10-10','03:30:03','2015-10-06','Davao del Sur','','Sulop','Philippines','','','',NULL,'C:/BIN/legacy/RhonnelAlbarracinPatigayonIAPS.jpg','C:/BIN/legacy/RhonnelAlbarracinPatigayonSDCSCS.jpg',''),
 (50,'Edwin','Hoyohoy','Ulan-ulan','50','Filipino','RC','Married','','Ed','Davao del Sur','','','8009','U8009MEBMA11III1965A05252015','Active','Waterfall','','','','','','','','','','','','','','','Tricycle Driver','','','CP','09051439671','','','','12:40:03','2015/10/7','not available','','','PO3 Ramonito B Telmo','','','','MALE','','2015-05-24','1965-07-10','12:40:03','2015-10-07','Davao del Sur','','Sulop','Philippines','','','',NULL,'C:/BIN/legacy/EdwinUlan-ulanHoyohoyIAPS.jpg','C:/BIN/legacy/EdwinUlan-ulanHoyohoySDCSCS.jpg','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (51,'Teofilo','Bajenting','Albarracin','51','Filipino','','Married','','Pilo','Davao del Sur','','','8009','U8009MEBMA11III1964A052515','Active','Palili','','','','','','','','','','','','','','','Driver','','','Radio Base','','','','','12:53:59','2015/10/7','not available','','','PO3 Ramonito B Telmo','','','','MALE','','2015-05-24','1964-03-06','12:53:59','2015-10-07','Davao del Sur','','Sulop','Philippines','','','',NULL,'C:/BIN/legacy/TeofiloAlbarracinBajentingIAPS.jpg','C:/BIN/legacy/TeofiloAlbarracinBajentingSDCSCS.jpg',''),
 (52,'Boyet','Revilla','Recaña','22','Filipino','RC','Single','','Boyet','Davao del Sur','Purok 4','','8009','U8009MEBMA11III1993A052515','Active','Solongvale','Select  Barangay','','','','','','','','','','','','','',' ','','','CP','09265441200','','','','','2015/10/23','not available','','','PO3 Ramonito B Telmo','','','','MALE','','2015-05-24','1993-09-12','10:34:30','2015-10-23','Davao del Sur','','Sulop','Philippines','','','','','C:/BIN/legacy/BoyetRecañaRevillaIAPS.jpg','C:/BIN/legacy/BoyetRecañaRevillaSDCSCS.jpg','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (53,'Roger','Cartilla','Quiobe','34','Filipino','RC','Married','','Dodong','Davao del Sur','','','8009','U8009MEBMA11III1982A052515','Active','Luparan','Select  Barangay','','','','','','','','','','','','','','Farmer','','','Radio Base','','','','','','2016/05/26','not available','','','PO3 Ramonito B Telmo','','X','','MALE','','2015-05-24','1982-01-16','03:44:56','2016-05-26','Davao del Sur','','Sulop','Philippines','','','','May 26, 2014','C:/BIN/legacy/RogerQuiobeCartillaIAPS.jpg','C:/BIN/legacy/RogerQuiobeCartillaSDCSCS.jpg',''),
 (54,'Sixto','Betic','Lanticse','61','Filipino','RC','Married','','Estong','Davao del Sur','','','8009','U8009MEBMA11III1954A052515','Active','New Cebu','','','','','','','','','','','','','','','Tricycle Driver','','','Radio Base','','','','','01:08:10','2015/10/7','not available','','','PO3 Ramonito B Telmo','','','','MALE','','2015-05-24','1954-08-05','01:08:10','2015-10-07','Davao del Sur','','Sulop','Philippines','','','',NULL,'C:/BIN/legacy/SixtoLanticseBeticIAPS.jpg','C:/BIN/legacy/SixtoLanticseBeticSDCSCS.jpg','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (55,'Ethel','Camacho','Dutosme','27','Filipino','RC','Single','','Thel','Davao City','','','8009','U8009MEBMA11III1988A052515','Active','Poblacion','','','','','','','','','','','','','','',' ','','','CP','09098041764','','','','01:20:20','2015/10/7','not available','','','PO3 Ramonito B Telmo','','','','FEMALE','','2015-05-24','1988-11-08','01:20:20','2015-10-07','Davao del Sur','','Sulop','Philippines','','','',NULL,'C:/BIN/legacy/EthelDutosmeCamachoIAPS.jpg','C:/BIN/legacy/EthelDutosmeCamachoSDCSCS.jpg',''),
 (56,'Junrey','Areate','Banga','26','Filipino',' ','Married','','Rey','Mati, Davao Oriental','','','8009','U8009MEBMA11III1989A052515','Active','Talas','','','','','','','','','','','','','','','Construction Worker','','','Radio Base','','','','','01:25:34','2015/10/7','not available','','','PO3 Ramonito B Telmo','','','','MALE','','2015-05-24','1989-02-06','01:25:34','2015-10-07','Davao del Sur','','Sulop','Philippines','','','',NULL,'C:/BIN/legacy/JunreyBangaAreateIAPS.jpg','C:/BIN/legacy/JunreyBangaAreateSDCSCS.jpg','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (57,'Joan','Casonete','Escobar','23','Filipino','RC','Single','','Joan','Davao del Sur','','','8009','U8009MEBMA11III1992A052515','Active','Waterfall','','','','','','','','','','','','','','',' ','','','CP','09468980115','','','','03:38:17','2015/10/7','not available','','','PO3 Ramonito B Telmo','','','','FEMALE','','2015-05-24','1992-01-09','03:38:17','2015-10-07','Davao del Sur','','Sulop','Philippines','','','',NULL,'C:/BIN/legacy/JoanEscobarCasoneteIAPS.jpg','C:/BIN/legacy/JoanEscobarCasoneteSDCSCS.jpg',''),
 (58,'Manolito','Camañan','Pantojan','25','Filipino',' ','Single','','Jun2x','Malungon, Sarangani','','','8009','U8009MEBMA11III1990A052515','Active','Palili','Select  Barangay','','','','','','','','','','','','','','Construction Worker','','','Radio Base','','','','','','2015/10/8','not available','','','PO3 Ramonito B Telmo','','','','MALE','','2015-05-24','1990-05-29','08:38:24','2015-10-08','Davao del Sur','','Sulop','Philippines','','','','','C:/BIN/legacy/ManolitoPantojan19CamañanIAPS.jpg','C:/BIN/legacy/ManolitoPantojan19CamañanSDCSCS.jpg','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (59,'Rhivey',' ','Euranggo','19','Filipino',' ','Single','','Wets','Davao del Sur','','','8009','U8009MEBMA11III1996A052515','Active','Talas','','','','','','','','','','','','','','','Construction Worker','','','Radio Base','','','','','08:45:09','2015/10/8','not available','','','PO3 Ramonito B Telmo','','','','MALE','','2015-05-24','1996-07-11','08:45:09','2015-10-08','Davao del Sur','','Sulop','Philippines','','','',NULL,'C:/BIN/legacy/RhiveyEuranggo IAPS.jpg','C:/BIN/legacy/RhiveyEuranggo SDCSCS.jpg',''),
 (60,'Saman','Cotungan','Sayre','51','Filipino','Islam','Married','','Man','Bunawan DC','Purok 8','','8009','U8009MEBMA11III1964A052515','Active','Poblacion','Select  Barangay','','','','','','','','','','','','','','Tricycle Driver','','','CP','09072276143','','','','','2015/10/8','not available','','','PO3 Ramonito B Telmo','','','','MALE','','2015-05-24','1964-01-29','08:58:05','2015-10-08','Davao del Sur','','Sulop','Philippines','','','','','C:/BIN/legacy/SamanSayreCotunganIAPS.jpg','C:/BIN/legacy/SamanSayreCotunganSDCSCS.jpg','');
INSERT INTO `informant_info` (`idInformant_info`,`F_Name`,`M_Name`,`L_Name`,`Age`,`Nationality`,`Religion`,`Mar_status`,`Education`,`Alias`,`Place_Birth`,`P_Adrress`,`Per_Adrress`,`Zipcode`,`S_Codification`,`Status`,`B_PAdrress`,`B_PreAdress`,`Face`,`Hair`,`Complexion`,`Eyes`,`Build`,`Body`,`Gen_App`,`Iden_Char`,`Height`,`Mel_Service`,`Other_Org`,`F_Training`,`Employement`,`Position`,`N_Employer`,`TerminationDate`,`Mode_Con`,`Mob_no`,`Email`,`P_Con`,`P_Con_num`,`EntryTime`,`EntryDate`,`PictureFilePath`,`CodeName`,`Psedonym`,`Handlers`,`OperationProject`,`SpouseName`,`TINNR`,`Gender`,`Target`,`D_Recuitment`,`B_Date`,`E_Time`,`E_Date`,`Provice`,`Threat`,`Mun_City`,`BirthCounty`,`Type`,`Category`,`CriminalR`,`Spouse_Bdate`,`IAPS_loc`,`SDCSDS_loc`,`infoType`) VALUES 
 (61,'Ricardo','Tamayo','Patcho','43','Filipino','','Married','','Loy','Davao del Sur','Purok 11','','8009','U8009MEBMA11III1972A052515','Active','Poblacion','Select  Barangay','','','','','','','','','','','','','','Tricycle Driver','','','CP','09153109024','','','','','2015/10/8','not available','','','PO3 Ramonito B Telmo','','','','MALE','','2015-05-24','1972-12-18','08:58:29','2015-10-08','Davao del Sur','','Sulop','Philippines','','','','','C:/BIN/legacy/RicardoPatchoTamayoIAPS.jpg','C:/BIN/legacy/RicardoPatchoTamayoSDCSCS.jpg',''),
 (62,' ',' ',' ','0','Filipino','','Single','',' ',' ','','','8009',' ','Active','Balasinon','','','','','','','','','','','','','','',' ','','',' ',' ','','','','01:46:53','2015/10/21','not available','','','','','','','MALE','','2015-10-08','2015-10-31','01:46:53','2015-10-21','Davao del Sur','','Sulop','Philippines','','','',NULL,'C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/legacy/   IAPS.jpg','C:/Users/JAMIEXXX3/Documents/NetBeansProjects/BIN/legacy/   SDCSCS.jpg','');
/*!40000 ALTER TABLE `informant_info` ENABLE KEYS */;


--
-- Table structure for table `bin`.`logs`
--

DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs` (
  `idlogs` bigint(20) unsigned NOT NULL auto_increment,
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
 (2287,'Login admin','09:20:34','2015-09-28'),
 (2288,'Logout admin','09:29:38','2015-09-28'),
 (2289,'System Closed','09:29:41','2015-09-28'),
 (2290,'Login admin','09:34:34','2015-09-28'),
 (2291,'Logout adminSystem Close','10:11:00','2015-09-28'),
 (2292,'Login pnpsulopBIN','10:42:46','2015-09-28'),
 (2293,'ABS print date From July 1, 2015 to July 31, 2015','10:56:34','2015-09-28'),
 (2294,'Updated Informant ID 1','10:57:00','2015-09-28'),
 (2295,'ABS print date From July 1, 2015 to July 31, 2015','10:57:07','2015-09-28'),
 (2296,'Updated Informant ID 2','10:57:16','2015-09-28'),
 (2297,'Updated Informant ID 2','10:57:26','2015-09-28'),
 (2298,'Updated Informant ID 2','11:17:15','2015-09-28'),
 (2299,'ABS print date From June 21, 2015 to July 31, 2015','11:17:38','2015-09-28'),
 (2300,'ABS print date From June 21, 2015 to July 31, 2015','11:17:58','2015-09-28'),
 (2301,'Updated Informant ID 2','11:18:15','2015-09-28'),
 (2302,'ABS print date From June 21, 2015 to July 31, 2015','11:18:23','2015-09-28'),
 (2303,'ABS print date From June 21, 2015 to July 31, 2015','11:18:37','2015-09-28');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (2304,'ABS print date From June 21, 2015 to July 31, 2015','11:18:54','2015-09-28'),
 (2305,'ABS print date From July 1, 2015 to September 28, 2015','11:40:32','2015-09-28'),
 (2306,'ABS print date From July 1, 2015 to September 28, 2015','11:41:49','2015-09-28'),
 (2307,'ABS print date From July 1, 2015 to September 28, 2015','11:42:06','2015-09-28'),
 (2308,'ABS print date From July 1, 2015 to September 28, 2015','11:42:17','2015-09-28'),
 (2309,'ABS print date From July 1, 2015 to September 28, 2015','11:42:24','2015-09-28'),
 (2310,'ABS print date From July 1, 2015 to September 28, 2015','11:44:20','2015-09-28'),
 (2311,'ABS print date From July 1, 2015 to September 28, 2015','11:44:36','2015-09-28'),
 (2312,'Print Seach Data First Name Pattern l','11:46:02','2015-09-28'),
 (2313,'ABS print date From July 1, 2015 to September 28, 2015','11:52:14','2015-09-28'),
 (2314,'Updated Informant ID 3','11:52:37','2015-09-28'),
 (2315,'ABS print date From July 1, 2015 to September 28, 2015','11:52:49','2015-09-28'),
 (2316,'Updated Informant ID 9','11:56:38','2015-09-28');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (2317,'ABS print date From June 29, 2015 to September 28, 2015','11:56:56','2015-09-28'),
 (2318,'ABS print date From June 29, 2015 to September 28, 2015','12:03:59','2015-09-28'),
 (2319,'Logout pnpsulopBINSystem Close','12:12:16','2015-09-28'),
 (2320,'Login pnpsulopBIN','12:14:33','2015-09-28'),
 (2321,'ABS print date From July 1, 2015 to September 30, 2015','12:15:29','2015-09-28'),
 (2322,'Login pnpsulopBIN','01:11:33','2015-09-28'),
 (2323,'Updated Informant ID 1','01:12:38','2015-09-28'),
 (2324,'ABS print date From July 1, 2015 to September 30, 2015','01:12:54','2015-09-28'),
 (2325,'ABS print date From July 1, 2015 to September 30, 2015','01:15:05','2015-09-28'),
 (2326,'ABS print date From July 1, 2015 to September 30, 2015','01:16:45','2015-09-28'),
 (2327,'ABS print date From June 1, 2015 to September 30, 2015','01:22:06','2015-09-28'),
 (2328,'Logout pnpsulopBIN','01:24:43','2015-09-28'),
 (2329,'System Closed','01:24:48','2015-09-28'),
 (2330,'Login pnpsulopBIN','01:26:36','2015-09-28');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (2331,'Logout pnpsulopBIN','01:27:19','2015-09-28'),
 (2332,'Login COP Sulop','01:27:38','2015-09-28'),
 (2333,'ABS print date From June 1, 2015 to September 30, 2015','01:28:07','2015-09-28'),
 (2334,'ABS print date From June 1, 2015 to September 30, 2015','01:29:04','2015-09-28'),
 (2335,'ABS print date From June 1, 2015 to September 30, 2015','01:29:33','2015-09-28'),
 (2336,'ABS print date From June 1, 2015 to September 30, 2015','01:29:37','2015-09-28'),
 (2337,'ABS print date From June 1, 2015 to September 30, 2015','01:30:14','2015-09-28'),
 (2338,'ABS print date From June 1, 2015 to September 30, 2015','01:30:19','2015-09-28'),
 (2339,'ABS print date From June 1, 2015 to September 30, 2015','01:32:31','2015-09-28'),
 (2340,'ABS print date From May 7, 2015 to September 30, 2015','01:37:00','2015-09-28'),
 (2341,'Logout COP Sulop','01:40:11','2015-09-28'),
 (2342,'System Closed','01:40:13','2015-09-28'),
 (2343,'Login COP Sulop','01:43:46','2015-09-28'),
 (2344,'ABS print date From June 3, 2015 to September 30, 2015','01:44:07','2015-09-28');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (2345,'ABS print date From June 3, 2015 to September 30, 2015','01:45:08','2015-09-28'),
 (2346,'ABS print date From June 3, 2015 to September 30, 2015','01:45:30','2015-09-28'),
 (2347,'ABS print date From June 3, 2015 to September 30, 2015','01:45:40','2015-09-28'),
 (2348,'Logout COP SulopSystem Close','01:46:11','2015-09-28'),
 (2349,'Login COP Sulop','01:46:47','2015-09-28'),
 (2350,'ABS print date From May 7, 2015 to September 17, 2015','01:47:01','2015-09-28'),
 (2351,'Login COP Sulop','01:49:28','2015-09-28'),
 (2352,'Updated Informant ID 2','01:49:42','2015-09-28'),
 (2353,'ABS print date From April 16, 2015 to September 30, 2015','01:49:59','2015-09-28'),
 (2354,'Updated Informant ID 2','01:51:04','2015-09-28'),
 (2355,'ABS print date From April 16, 2015 to September 30, 2015','01:51:10','2015-09-28'),
 (2356,'Logout COP SulopSystem Close','01:51:25','2015-09-28'),
 (2357,'Login COP Sulop','01:53:12','2015-09-28'),
 (2358,'ABS print date From May 14, 2015 to September 23, 2015','01:53:38','2015-09-28'),
 (2359,'Print Seach Data Middle Name Pattern ','01:53:59','2015-09-28');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (2360,'Print Seach Data Middle Name Pattern ','01:54:11','2015-09-28'),
 (2361,'ABS print date From June 28, 2015 to September 28, 2015','02:03:54','2015-09-28'),
 (2362,'Logout COP SulopSystem Close','02:04:09','2015-09-28'),
 (2363,'Login COP Sulop','02:05:13','2015-09-28'),
 (2364,'ABS print date From June 1, 2015 to September 28, 2015','02:05:28','2015-09-28'),
 (2365,'ABS print date From June 1, 2015 to September 28, 2015','02:07:16','2015-09-28'),
 (2366,'ABS print date From May 13, 2015 to September 30, 2015','02:10:11','2015-09-28'),
 (2367,'ABS print date From May 13, 2015 to September 30, 2015','02:23:52','2015-09-28'),
 (2368,'Updated Informant ID 4','02:24:27','2015-09-28'),
 (2369,'ABS print date From May 13, 2015 to September 30, 2015','02:24:32','2015-09-28'),
 (2370,'Updated Informant ID 1','02:28:34','2015-09-28'),
 (2371,'Print barangay statistic','02:30:38','2015-09-28'),
 (2372,'Print barangay statistic from May 28, 2015 to September 28, 2015 ','02:30:57','2015-09-28'),
 (2373,'Updated Informant ID 2','02:38:25','2015-09-28');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (2374,'ABS print date From May 13, 2015 to September 30, 2015','02:38:31','2015-09-28'),
 (2375,'Print barangay statistic','02:38:51','2015-09-28'),
 (2376,'ABS print date From June 28, 2015 to September 28, 2015','02:41:11','2015-09-28'),
 (2377,'ABS print date From July 16, 2015 to July 16, 2015','02:41:49','2015-09-28'),
 (2378,'Updated Informant ID 3','02:43:21','2015-09-28'),
 (2379,'Updated Informant ID 3','02:45:01','2015-09-28'),
 (2380,'Updated Informant ID 4','02:48:29','2015-09-28'),
 (2381,'Updated Informant ID 6','02:49:33','2015-09-28'),
 (2382,'Updated Informant ID 6','02:49:52','2015-09-28'),
 (2383,'Updated Informant ID 6','02:50:57','2015-09-28'),
 (2384,'Updated Informant ID 5','02:51:50','2015-09-28'),
 (2385,'Updated Informant ID 5','02:51:54','2015-09-28'),
 (2386,'Updated Informant ID 6','02:53:42','2015-09-28'),
 (2387,'Logout COP SulopSystem Close','02:53:48','2015-09-28'),
 (2388,'Login COP Sulop','02:55:12','2015-09-28'),
 (2389,'ABS print date From May 28, 2015 to September 28, 2015','02:56:29','2015-09-28');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (2390,'Updated Informant ID 5','02:57:22','2015-09-28'),
 (2391,'Updated Informant ID 7','03:02:10','2015-09-28'),
 (2392,'Updated Informant ID 8','03:05:00','2015-09-28'),
 (2393,'Updated Informant ID 8','03:05:57','2015-09-28'),
 (2394,'Updated Informant ID 9','03:27:40','2015-09-28'),
 (2395,'Updated Informant ID 9','03:28:20','2015-09-28'),
 (2396,'Updated Informant ID 10','03:29:53','2015-09-28'),
 (2397,'Updated Informant ID 11','03:34:21','2015-09-28'),
 (2398,'Updated Informant ID 11','03:34:34','2015-09-28'),
 (2399,'Updated Informant ID 11','03:35:13','2015-09-28'),
 (2400,'Logout COP SulopSystem Close','03:35:17','2015-09-28'),
 (2401,'Login COP Sulop','03:36:19','2015-09-28'),
 (2402,'Logout COP SulopSystem Close','03:43:39','2015-09-28'),
 (2403,'Login COP Sulop','03:46:24','2015-09-28'),
 (2404,'DELETED USER ID 2','03:46:31','2015-09-28'),
 (2405,'ABS print date From July 1, 2015 to July 31, 2015','03:47:26','2015-09-28'),
 (2406,'ABS print date From July 1, 2015 to July 31, 2015','03:57:38','2015-09-28');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (2407,'ABS print date From July 1, 2015 to July 31, 2015','03:58:37','2015-09-28'),
 (2408,'ABS print date From July 1, 2015 to July 31, 2015','03:59:13','2015-09-28'),
 (2409,'Login COP Sulop','04:22:10','2015-09-28'),
 (2410,'Print barangay statistic','04:22:35','2015-09-28'),
 (2411,'Logout COP Sulop','04:23:38','2015-09-28'),
 (2412,'System Closed','04:30:27','2015-09-28'),
 (2413,'Login COP Sulop','08:33:11','2015-09-30'),
 (2414,'Login COP Sulop','03:13:24','2015-10-01'),
 (2415,'Login COP Sulop','04:28:27','2015-10-01'),
 (2416,'Login COP Sulop','04:29:32','2015-10-01'),
 (2417,'Updated Informant ID 12','04:39:49','2015-10-01'),
 (2418,'Updated Informant ID 2','04:40:17','2015-10-01'),
 (2419,'Updated Informant ID 3','04:40:24','2015-10-01'),
 (2420,'Updated Informant ID 6','04:40:36','2015-10-01'),
 (2421,'Updated Informant ID 5','04:40:43','2015-10-01'),
 (2422,'Updated Informant ID 7','04:40:50','2015-10-01'),
 (2423,'Updated Informant ID 8','04:40:58','2015-10-01'),
 (2424,'Updated Informant ID 8','04:41:04','2015-10-01');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (2425,'Updated Informant ID 9','04:41:11','2015-10-01'),
 (2426,'Updated Informant ID 10','04:41:18','2015-10-01'),
 (2427,'Updated Informant ID 11','04:41:25','2015-10-01'),
 (2428,'Logout COP SulopSystem Close','04:47:55','2015-10-01'),
 (2429,'Login COP Sulop','09:04:50','2015-10-02'),
 (2430,'Updated Informant ID 15','09:10:46','2015-10-02'),
 (2431,'Updated Informant ID 19','09:38:31','2015-10-02'),
 (2432,'Updated Informant ID 6','09:47:40','2015-10-02'),
 (2433,'Logout COP Sulop','01:29:26','2015-10-02'),
 (2434,'Login Telmo.R','01:29:35','2015-10-02'),
 (2435,'ABS print date From July 1, 2015 to July 31, 2015','02:50:00','2015-10-02'),
 (2436,'Logout Telmo.RSystem Close','02:50:37','2015-10-02'),
 (2437,'Login COP Sulop','02:51:05','2015-10-02'),
 (2438,'Logout COP Sulop','02:53:56','2015-10-02'),
 (2439,'Login COP Sulop','02:54:08','2015-10-02'),
 (2440,'Logout COP Sulop','02:54:16','2015-10-02'),
 (2441,'Login Telmo.R','02:54:27','2015-10-02'),
 (2442,'Logout Telmo.R','02:55:29','2015-10-02');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (2443,'Login COP Sulop','02:55:37','2015-10-02'),
 (2444,'Updated Informant ID 26','02:55:59','2015-10-02'),
 (2445,'Updated Informant ID 26','02:56:09','2015-10-02'),
 (2446,'Print barangay statistic','02:56:43','2015-10-02'),
 (2447,'Print barangay statistic','02:56:48','2015-10-02'),
 (2448,'Print barangay statistic from September 1, 2015 to September 30, 2015 ','02:58:40','2015-10-02'),
 (2449,'Print barangay statistic from September 1, 2015 to September 30, 2015 ','02:58:51','2015-10-02'),
 (2450,'Print barangay statistic','02:59:02','2015-10-02'),
 (2451,'Print barangay statistic from September 1, 2015 to September 30, 2015 ','02:59:06','2015-10-02'),
 (2452,'Print barangay statistic','02:59:38','2015-10-02'),
 (2453,'Print barangay statistic from September 1, 2015 to September 30, 2015 ','02:59:42','2015-10-02'),
 (2454,'ABS print date From July 1, 2015 to September 30, 2015','03:00:20','2015-10-02'),
 (2455,'Login COP Sulop','09:08:05','2015-10-05'),
 (2456,'ABS print date From May 1, 2015 to October 5, 2015','09:35:20','2015-10-05');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (2457,'Logout COP Sulop','09:52:55','2015-10-05'),
 (2458,'Logout COP Sulop','09:53:00','2015-10-05'),
 (2459,'Logout COP Sulop','09:53:05','2015-10-05'),
 (2460,'Login Telmo.R','09:53:30','2015-10-05'),
 (2461,'Login COP Sulop','03:45:47','2015-10-05'),
 (2462,'Login COP Sulop','12:11:13','2015-10-06'),
 (2463,'Updated Informant ID 44','03:09:09','2015-10-06'),
 (2464,'Updated Informant ID 45','03:20:27','2015-10-06'),
 (2465,'Updated Informant ID 43','03:21:00','2015-10-06'),
 (2466,'Updated Informant ID 47','03:32:03','2015-10-06'),
 (2467,'Logout COP SulopSystem Close','03:33:37','2015-10-06'),
 (2468,'Login COP Sulop','05:05:36','2015-10-06'),
 (2469,'Updated Informant ID 44','05:06:02','2015-10-06'),
 (2470,'Logout COP Sulop','05:06:26','2015-10-06'),
 (2471,'System Closed','05:06:28','2015-10-06'),
 (2472,'Login COP Sulop','12:03:17','2015-10-07'),
 (2473,'Print barangay statistic','12:40:15','2015-10-07'),
 (2474,'Login COP Sulop','08:34:19','2015-10-08'),
 (2475,'Updated Informant ID 58','08:38:25','2015-10-08');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (2476,'Updated Informant ID 52','08:57:12','2015-10-08'),
 (2477,'Updated Informant ID 60','08:58:07','2015-10-08'),
 (2478,'Updated Informant ID 61','08:58:31','2015-10-08'),
 (2479,'Login COP Sulop','07:48:20','2015-10-12'),
 (2480,'ABS print date From October 1, 2011 to October 31, 2015','07:49:22','2015-10-12'),
 (2481,'Print barangay statistic','07:53:47','2015-10-12'),
 (2482,'Print barangay statistic from October 1, 2011 to October 31, 2015 ','07:53:51','2015-10-12'),
 (2483,'Print barangay statistic from September 1, 2015 to September 30, 2015 ','07:56:51','2015-10-12'),
 (2484,'Logout COP SulopSystem Close','08:29:44','2015-10-12'),
 (2485,'Login COP Sulop','09:25:15','2015-10-12'),
 (2486,'ABS print date From July 1, 2015 to July 15, 2015','09:29:16','2015-10-12'),
 (2487,'Logout COP SulopSystem Close','09:33:56','2015-10-12'),
 (2488,'Login COP Sulop','12:10:13','2015-10-12'),
 (2489,'Logout COP SulopSystem Close','12:11:24','2015-10-12'),
 (2490,'Login COP Sulop','12:27:32','2015-10-21');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (2491,'SDC SDS print ID number 0','12:28:01','2015-10-21'),
 (2492,'Logout COP SulopSystem Close','12:28:09','2015-10-21'),
 (2493,'IAPS print ID number 0','12:31:20','2015-10-21'),
 (2494,'IAPS print ID number 0','12:34:08','2015-10-21'),
 (2495,'Login COP Sulop','12:38:35','2015-10-21'),
 (2496,'IAPS print ID number 51','12:38:53','2015-10-21'),
 (2497,'IAPS print ID number 51','12:38:56','2015-10-21'),
 (2498,'SDC SDS print ID number 51','12:39:03','2015-10-21'),
 (2499,'Logout COP SulopSystem Close','12:39:15','2015-10-21'),
 (2500,'IAPS print ID number 0','12:48:34','2015-10-21'),
 (2501,'IAPS print ID number 0','12:50:10','2015-10-21'),
 (2502,'IAPS print ID number 0','12:51:28','2015-10-21'),
 (2503,'IAPS print ID number 0','12:53:10','2015-10-21'),
 (2504,'IAPS print ID number 0','12:55:19','2015-10-21'),
 (2505,'IAPS print ID number 0','01:04:38','2015-10-21'),
 (2506,'IAPS print ID number 0','01:43:39','2015-10-21'),
 (2507,'Login COP Sulop','01:45:46','2015-10-21');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (2508,'Logout COP SulopSystem Close','01:47:00','2015-10-21'),
 (2509,'IAPS print ID number 0','01:57:41','2015-10-21'),
 (2510,'Login COP Sulop','02:06:37','2015-10-21'),
 (2511,'Logout COP SulopSystem Close','02:07:33','2015-10-21'),
 (2512,'Login COP Sulop','09:41:15','2015-10-23'),
 (2513,'Print Seach Data Alias Pattern e','09:43:03','2015-10-23'),
 (2514,'Logout COP SulopSystem Close','09:44:28','2015-10-23'),
 (2515,'Login COP Sulop','09:55:49','2015-10-23'),
 (2516,'Print Seach Data Alias Pattern ','09:56:02','2015-10-23'),
 (2517,'Print barangay statistic','10:10:14','2015-10-23'),
 (2518,'Print barangay statistic','10:10:49','2015-10-23'),
 (2519,'Print barangay statistic from October 1, 2015 to October 31, 2015 ','10:10:52','2015-10-23'),
 (2520,'Print barangay statistic from October 1, 2015 to October 31, 2015 ','10:11:07','2015-10-23'),
 (2521,'Logout COP SulopSystem Close','10:11:56','2015-10-23'),
 (2522,'Login COP Sulop','10:24:41','2015-10-23'),
 (2523,'Print barangay statistic','10:25:59','2015-10-23');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (2524,'Logout COP SulopSystem Close','10:26:43','2015-10-23'),
 (2525,'Login COP Sulop','10:29:21','2015-10-23'),
 (2526,'Logout COP SulopSystem Close','10:29:44','2015-10-23'),
 (2527,'Login COP Sulop','10:31:52','2015-10-23'),
 (2528,'Logout COP SulopSystem Close','10:32:48','2015-10-23'),
 (2529,'Login COP Sulop','10:34:12','2015-10-23'),
 (2530,'Logout COP SulopSystem Close','10:34:45','2015-10-23'),
 (2531,'Login COP Sulop','07:14:38','2015-10-23'),
 (2532,'Print barangay statistic','07:15:31','2015-10-23'),
 (2533,'Logout COP SulopSystem Close','07:16:44','2015-10-23'),
 (2534,'Login COP Sulop','11:34:04','2015-10-26'),
 (2535,'Logout COP SulopSystem Close','11:36:49','2015-10-26'),
 (2536,'Login COP Sulop','11:40:14','2015-10-26'),
 (2537,'Logout COP Sulop','11:41:20','2015-10-26'),
 (2538,'Logout COP Sulop','11:41:31','2015-10-26'),
 (2539,'Logout COP Sulop','11:42:19','2015-10-26'),
 (2540,'Login COP Sulop','11:44:14','2015-10-26'),
 (2541,'Logout COP Sulop','11:44:18','2015-10-26');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (2542,'Login COP Sulop','11:44:29','2015-10-26'),
 (2543,'Logout COP Sulop','11:44:53','2015-10-26'),
 (2544,'Login Telmo.R','11:45:22','2015-10-26'),
 (2545,'Logout COP SulopSystem Close','11:45:55','2015-10-26'),
 (2546,'Logout Telmo.R','11:46:03','2015-10-26'),
 (2547,'Login COP Sulop','11:46:15','2015-10-26'),
 (2548,'Logout COP SulopSystem Close','11:46:32','2015-10-26'),
 (2549,'Login Telmo.R','11:50:13','2015-10-26'),
 (2550,'Logout Telmo.R','11:50:29','2015-10-26'),
 (2551,'Login COP Sulop','11:50:41','2015-10-26'),
 (2552,'Logout COP SulopSystem Close','11:52:49','2015-10-26'),
 (2553,'Logout System Close','11:55:56','2015-10-26'),
 (2554,'Logout System Close','11:56:59','2015-10-26'),
 (2555,'Login COP Sulop','12:00:07','2015-10-26'),
 (2556,'Logout COP SulopSystem Close','12:00:31','2015-10-26'),
 (2557,'ABS print date From January 1, 2015 to June 30, 2015','12:06:50','2015-10-26'),
 (2558,'Logout System Close','12:08:32','2015-10-26'),
 (2559,'Logout System Close','12:42:50','2015-10-27');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (2560,'Logout System Close','12:57:55','2015-10-27'),
 (2561,'Logout System Close','01:41:46','2015-10-27'),
 (2562,'Logout System Close','01:58:54','2015-11-03'),
 (2563,'Login COP Sulop','09:14:20','2015-11-09'),
 (2564,'ABS print date From November 1, 2015 to December 31, 2015','09:15:05','2015-11-09'),
 (2565,'ABS print date From November 1, 2000 to December 31, 2015','09:15:30','2015-11-09'),
 (2566,'Logout COP SulopSystem Close','09:19:20','2015-11-09'),
 (2567,'Logout COP SulopSystem Close','09:24:48','2015-11-09'),
 (2568,'ABS print date From November 4, 2000 to November 12, 2015','09:33:18','2015-11-09'),
 (2569,'ABS print date From September 1, 2015 to September 30, 2015','09:34:53','2015-11-09'),
 (2570,'Logout COP SulopSystem Close','09:41:31','2015-11-09'),
 (2571,'Logout COP SulopSystem Close','09:41:34','2015-11-09'),
 (2572,'Logout COP SulopSystem Close','10:00:41','2015-11-09'),
 (2573,'Logout COP SulopSystem Close','10:04:27','2015-11-09'),
 (2574,'Logout COP Sulop','10:05:05','2015-11-09');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (2575,'Logout COP SulopSystem Close','10:05:48','2015-11-09'),
 (2576,'Logout COP SulopSystem Close','10:09:04','2015-11-09'),
 (2577,'Login COP Sulop','10:11:25','2015-11-09'),
 (2578,'Logout COP SulopSystem Close','10:20:04','2015-11-09'),
 (2579,'Logout COP SulopSystem Close','10:27:09','2015-11-09'),
 (2580,'Login COP Sulop','11:45:06','2015-11-09'),
 (2581,'Logout COP SulopSystem Close','11:45:14','2015-11-09'),
 (2582,'Login COP Sulop','11:45:35','2015-11-09'),
 (2583,'ABS print date From August 1, 2015 to November 9, 2015','11:45:57','2015-11-09'),
 (2584,'Logout COP SulopSystem Close','11:46:17','2015-11-09'),
 (2585,'Profile sheet viewed Id 52','11:54:22','2015-11-09'),
 (2586,'Source Data card viewed Id 0','11:55:10','2015-11-09'),
 (2587,'Source Data card viewed Id 54','11:55:14','2015-11-09'),
 (2588,'Logout System Close','11:55:30','2015-11-09'),
 (2589,'Profile sheet viewed Id 0','11:59:19','2015-11-09'),
 (2590,'Source Data card viewed Id 0','11:59:31','2015-11-09'),
 (2591,'Login COP Sulop','12:05:37','2015-11-09');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (2592,'Logout COP SulopSystem Close','12:05:57','2015-11-09'),
 (2593,'Login COP Sulop','12:07:06','2015-11-09'),
 (2594,'Profile sheet viewed Id 0','12:07:15','2015-11-09'),
 (2595,'Profile sheet viewed Id 0','12:07:26','2015-11-09'),
 (2596,'Logout COP SulopSystem Close','12:07:36','2015-11-09'),
 (2597,'ABS print date From May 1, 2015 to November 30, 2015','19:46:32','2015-11-18'),
 (2598,'Logout System Close','07:46:54','2015-11-18'),
 (2599,'Login COP Sulop','19:50:04','2015-11-18'),
 (2600,'ABS print date From July 1, 2015 to November 30, 2015','19:53:11','2015-11-18'),
 (2601,'Logout COP SulopSystem Close','07:53:40','2015-11-18'),
 (2602,'Login COP Sulop','10:07:44','2015-12-11'),
 (2603,'Logout COP SulopSystem Close','10:23:06','2015-12-11'),
 (2604,'Logout System Close','12:16:27','2015-12-11'),
 (2605,'Logout System Close','01:25:31','2015-12-11'),
 (2606,'Login COP Sulop','03:53:43','2015-12-29'),
 (2607,'Logout COP SulopSystem Close','03:56:44','2015-12-29'),
 (2608,'Login COP Sulop','10:21:18','2016-01-14');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (2609,'Logout COP SulopSystem Close','10:21:40','2016-01-14'),
 (2610,'Login COP Sulop','09:03:24','2016-01-15'),
 (2611,'Print barangay statistic','09:03:39','2016-01-15'),
 (2612,'Logout COP SulopSystem Close','09:05:30','2016-01-15'),
 (2613,'Login COP Sulop','10:14:23','2016-01-15'),
 (2614,'ABS print date From January 1, 2010 to December 31, 2016','10:15:34','2016-01-15'),
 (2615,'Logout COP SulopSystem Close','10:16:23','2016-01-15'),
 (2616,'Logout System Close','10:34:09','2016-01-15'),
 (2617,'Logout System Close','10:41:41','2016-01-15'),
 (2618,'Login COP Sulop','10:43:30','2016-01-15'),
 (2619,'Logout COP SulopSystem Close','10:46:12','2016-01-15'),
 (2620,'Logout System Close','10:47:38','2016-01-15'),
 (2621,'Logout System Close','11:24:12','2016-01-15'),
 (2622,'Logout System Close','12:02:18','2016-01-15'),
 (2623,'Logout System Close','12:08:52','2016-01-15'),
 (2624,'Logout System Close','12:13:54','2016-01-15'),
 (2625,'Logout System Close','12:26:24','2016-01-15');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (2626,'Logout System Close','12:32:01','2016-01-15'),
 (2627,'ABS print date From January 1, 2012 to January 30, 2016','17:45:58','2016-01-20'),
 (2628,'Logout System Close','05:47:56','2016-01-20'),
 (2629,'Logout System Close','09:49:27','2016-01-22'),
 (2630,'Print source of cofication of Solongvale  ','09:56:22','2016-01-22'),
 (2631,'Logout System Close','09:58:14','2016-01-22'),
 (2632,'Print source of cofication of Luparan  ','09:58:58','2016-01-22'),
 (2633,'Logout System Close','10:00:18','2016-01-22'),
 (2634,'Logout System Close','12:15:10','2016-01-22'),
 (2635,'Login COP Sulop','12:18:04','2016-01-22'),
 (2636,'Logout COP SulopSystem Close','12:18:16','2016-01-22'),
 (2637,'Login COP Sulop','12:19:07','2016-01-22'),
 (2638,'Print source of cofication of Palili  ','12:19:39','2016-01-22'),
 (2639,'Logout COP SulopSystem Close','12:19:43','2016-01-22'),
 (2640,'Login COP Sulop','12:21:58','2016-01-22'),
 (2641,'Print ALL source of cofication    ','12:22:05','2016-01-22'),
 (2642,'Print source of cofication of New Cebu  ','12:22:23','2016-01-22');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (2643,'Logout COP SulopSystem Close','12:22:56','2016-01-22'),
 (2644,'Login COP Sulop','12:24:11','2016-01-22'),
 (2645,'Print ALL source of cofication    ','12:24:31','2016-01-22'),
 (2646,'Print ALL source of cofication    ','12:25:00','2016-01-22'),
 (2647,'Print source of cofication of Balasinon  ','12:25:08','2016-01-22'),
 (2648,'Login COP Sulop','12:26:11','2016-01-22'),
 (2649,'Print ALL source of cofication    ','12:26:19','2016-01-22'),
 (2650,'Print source of cofication of Poblacion  ','12:26:47','2016-01-22'),
 (2651,'Logout COP SulopSystem Close','12:27:06','2016-01-22'),
 (2652,'Logout COP SulopSystem Close','12:27:28','2016-01-22'),
 (2653,'Login COP Sulop','12:29:34','2016-01-22'),
 (2654,'Profile sheet viewed Id 60','12:29:52','2016-01-22'),
 (2655,'Logout COP SulopSystem Close','12:30:00','2016-01-22'),
 (2656,'Login COP Sulop','12:43:17','2016-01-22'),
 (2657,'Logout COP SulopSystem Close','12:43:24','2016-01-22'),
 (2658,'Login COP Sulop','14:11:28','2016-01-26');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (2659,'Print ALL source of cofication    ','14:11:43','2016-01-26'),
 (2660,'Print source of cofication of Balasinon  ','14:12:03','2016-01-26'),
 (2661,'Logout COP SulopSystem Close','02:19:28','2016-01-26'),
 (2662,'Login COP Sulop','14:25:33','2016-01-26'),
 (2663,'Print ALL source of cofication    ','14:25:38','2016-01-26'),
 (2664,'Print ALL source of cofication    ','14:27:22','2016-01-26'),
 (2665,'Logout COP SulopSystem Close','02:27:27','2016-01-26'),
 (2666,'Print ALL source of cofication    ','14:27:51','2016-01-26'),
 (2667,'Logout System Close','02:27:58','2016-01-26'),
 (2668,'Login COP Sulop','14:46:16','2016-01-26'),
 (2669,'Print ALL source of cofication    ','14:46:28','2016-01-26'),
 (2670,'Print ALL source of cofication    ','14:48:29','2016-01-26'),
 (2671,'Logout COP SulopSystem Close','02:50:32','2016-01-26'),
 (2672,'Login COP Sulop','14:57:34','2016-01-26'),
 (2673,'Print ALL source of cofication    ','14:57:46','2016-01-26'),
 (2674,'Logout COP SulopSystem Close','02:57:49','2016-01-26');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (2675,'Login COP Sulop','15:02:20','2016-01-26'),
 (2676,'Print ALL source of cofication    ','15:07:47','2016-01-26'),
 (2677,'Logout COP SulopSystem Close','03:07:51','2016-01-26'),
 (2678,'Print ALL source of cofication    ','15:09:09','2016-01-26'),
 (2679,'Logout System Close','03:09:16','2016-01-26'),
 (2680,'Login COP Sulop','15:10:17','2016-01-26'),
 (2681,'Print ALL source of cofication    ','15:10:52','2016-01-26'),
 (2682,'Logout COP SulopSystem Close','03:13:18','2016-01-26'),
 (2683,'Login COP Sulop','15:15:09','2016-01-26'),
 (2684,'Print ALL source of cofication    ','15:15:13','2016-01-26'),
 (2685,'Logout COP SulopSystem Close','03:15:23','2016-01-26'),
 (2686,'Login COP Sulop','09:28:02','2016-02-02'),
 (2687,'Print ALL source of cofication    ','09:28:17','2016-02-02'),
 (2688,'Logout COP SulopSystem Close','09:28:45','2016-02-02'),
 (2689,'Login COP Sulop','09:42:16','2016-02-02'),
 (2690,'Print ALL source of cofication    ','09:42:21','2016-02-02'),
 (2691,'Logout COP SulopSystem Close','09:42:25','2016-02-02');
INSERT INTO `logs` (`idlogs`,`Act`,`Time`,`Date`) VALUES 
 (2692,'Login COP Sulop','10:49:55','2016-02-08'),
 (2693,'Profile sheet viewed Id 53','10:51:01','2016-02-08'),
 (2694,'Logout COP SulopSystem Close','10:54:40','2016-02-08'),
 (2695,'Print barangay statistic','15:43:32','2016-04-27'),
 (2696,'ABS print date From April 27, 1990 to April 27, 2016','15:45:58','2016-04-27'),
 (2697,'Print barangay statistic','15:46:35','2016-04-27'),
 (2698,'Print ALL source of cofication    ','15:46:43','2016-04-27'),
 (2699,'Logout System Close','03:48:13','2016-04-27'),
 (2700,'Login COP Sulop','15:28:04','2016-05-26'),
 (2701,'Updated Informant ID 53','03:44:59','2016-05-26'),
 (2702,'Logout COP SulopSystem Close','04:28:20','2016-05-26'),
 (2703,'Login COP Sulop','17:28:08','2016-05-31'),
 (2704,'Profile sheet viewed Id 53','17:28:17','2016-05-31'),
 (2705,'Logout COP SulopSystem Close','05:28:36','2016-05-31');
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
 (1,'Sulop Municipal Police Station','Barangay Poblacion, Sulop, Davao del Sur','+639288542119','PSI IVAN JAVA SAMORAGA','Sulop MPS','sulopmps_davsur@yahoo.com','PRC','USEP- MEP ECE');
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
 (1,'admin','admin','admin','BSPS2010','COP Sulop','0000-00-00','00:00:00','admin'),
 (2,'Ramonito','Bautista','Telmo','theintelpnco','Telmo.R','2015-10-02','01:28:10','user');
/*!40000 ALTER TABLE `useracc` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

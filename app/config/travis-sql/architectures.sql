-- MySQL dump 10.13  Distrib 5.5.41, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: licotest
-- ------------------------------------------------------
-- Server version	5.5.41-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `architectures`
--

DROP TABLE IF EXISTS `architectures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `architectures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(24) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `architectures`
--

LOCK TABLES `architectures` WRITE;
/*!40000 ALTER TABLE `architectures` DISABLE KEYS */;
INSERT INTO `architectures` VALUES (1,''),(2,'&4 bits'),(3,'(ARM Cortex-A8 8'),(4,'-'),(5,'.'),(6,'1.6GHz'),(7,'100 gig memory 1'),(8,'1386'),(9,'1387'),(10,'1686'),(11,'1796MB (608MB us'),(12,'1866.563'),(13,'2'),(14,'2.6'),(15,'2.6.22'),(16,'2.6.35'),(17,'2.6.37'),(18,'2.6.37.6'),(19,'2.6.38'),(20,'2.6.38.5'),(21,'2gb'),(22,'2x AMD A4-3400 A'),(23,'3.0.0-11'),(24,'3.11'),(25,'3.12'),(26,'3.3.5-2'),(27,'32'),(28,'32 & 64 bit'),(29,'32 - 64'),(30,'32 - bit'),(31,'32 and 64'),(32,'32 BIST'),(33,'32 bit'),(34,'32 bit AMD'),(35,'32 bits'),(36,'32 nm'),(37,'32-64bits'),(38,'32-bit'),(39,'32-bit ARMv7'),(40,'32-bit PC (x86)'),(41,'32-bit, 64-bit'),(42,'32-bits'),(43,'32/64'),(44,'32b'),(45,'32bit'),(46,'32bit / i586'),(47,'32bits'),(48,'32bytes'),(49,'32nm'),(50,'32x'),(51,'368'),(52,'380'),(53,'386'),(54,'3rd Gen Intel'),(55,'4'),(56,'4.5.2 (x86_64-li'),(57,'45 nm'),(58,'45nm'),(59,'486'),(60,'586'),(61,'586/686'),(62,'596'),(63,'5TE'),(64,'6'),(65,'62'),(66,'64'),(67,'64 b'),(68,'64 bir'),(69,'64 bit'),(70,'64 bit AMD'),(71,'64 bit i686'),(72,'64 bit PC'),(73,'64 bits'),(74,'64 it'),(75,'64 X2'),(76,'64-bit'),(77,'64-bits'),(78,'642.6.30'),(79,'64amd'),(80,'64b'),(81,'64bit'),(82,'64bit  x64-based'),(83,'64bit Core 2'),(84,'64bits'),(85,'64x'),(86,'64x86'),(87,'64_86'),(88,'64_86x'),(89,'64_x86'),(90,'6502'),(91,'681'),(92,'686'),(93,'686 32 bit'),(94,'686 64bit'),(95,'6bit'),(96,'6x86'),(97,'7'),(98,'7401c0-nand'),(99,'750 G3'),(100,'754'),(101,'800 mhz'),(102,'80386'),(103,'8086'),(104,'86'),(105,'86-64'),(106,'86x'),(107,'86x64'),(108,'86_64'),(109,'86_x64'),(110,'962'),(111,'9Mi, 90 nm, CMOS'),(112,':'),(113,'?'),(114,'??'),(115,'a64'),(116,'A8'),(117,'A9'),(118,'accounts: 1cpu+'),(119,'acer aspire one '),(120,'acer multi-media'),(121,'ACER Netbook x64'),(122,'Acer x64 laptop'),(123,'ADM64'),(124,'ADX640WFGMBOX'),(125,'Alix'),(126,'All-in-One Touch'),(127,'alpha'),(128,'AM3'),(129,'AM3+ FX'),(130,'am64'),(131,'AMD'),(132,'AMD  Trinity APU'),(133,'AMD 32 bit'),(134,'AMD 32bits'),(135,'AMD 64'),(136,'AMD 64 bit'),(137,'amd 64 bit + i38'),(138,'AMD 64 bits'),(139,'AMD 64bit'),(140,'AMD A4 3300m'),(141,'AMD ARM'),(142,'AMD Athlon'),(143,'AMD Athlon 500'),(144,'AMD Athlon 64'),(145,'AMD Athlon 64 X2'),(146,'AMD Athlon @ 520'),(147,'AMD Athlon(tm) 6'),(148,'AMD Athlon(tm) I'),(149,'AMD AthlonII'),(150,'amd bobcat'),(151,'AMD Brazos C60 D'),(152,'AMD Fusion'),(153,'amd fx'),(154,'AMD i86'),(155,'AMD K10'),(156,'Amd K8'),(157,'AMD PHENOM 2'),(158,'AMD Phenom II'),(159,'AMD Phenom X4'),(160,'AMD Phenom(tm) 8'),(161,'AMD Phenom(tm) I'),(162,'amd sempron 3400'),(163,'AMD Turion(tm) 6'),(164,'amd turion64x2'),(165,'AMD X64'),(166,'AMD x86-64'),(167,'AMD x86_64'),(168,'amd-64'),(169,'amd-686'),(170,'AMD-x64'),(171,'AMD/x86_64'),(172,'amd4'),(173,'AMD63'),(174,'amd64'),(175,'amd64 (x86_64)'),(176,'AMD64 - X86_64'),(177,'amd64 / x64 / am'),(178,'amd64 7750'),(179,'amd64 x86_64'),(180,'AMD64,x86_64'),(181,'amd86'),(182,'amd868'),(183,'AMDx64'),(184,'amd_64'),(185,'AMD_x64'),(186,'and athon'),(187,'and64'),(188,'Android'),(189,'Android 4.1 OS'),(190,'Android Tablet'),(191,'Apple iMac G3 Gr'),(192,'Apple Mac'),(193,'Apple Macintosh'),(194,'Apple PowerPC x6'),(195,'Arch Linux'),(196,'Arm'),(197,'ARM @ 1.2Ghz'),(198,'ARM A7'),(199,'ARM Cortex A8'),(200,'ARM Cortex A9'),(201,'ARM Cortex-A8'),(202,'ARM Cortex-A9'),(203,'ARM Cortex-A9 ar'),(204,'Arm v.7'),(205,'ARM v5'),(206,'ARM v5TE'),(207,'ARM v5tel'),(208,'ARM v6'),(209,'ARM v6.1'),(210,'ARM v7'),(211,'ARM v7l'),(212,'ARM-Cortex-A9'),(213,'arm-vte5'),(214,'ARM11'),(215,'ARM1176JZ-F'),(216,'ARM32'),(217,'ARM4'),(218,'ARM5'),(219,'arm6'),(220,'arm6l'),(221,'arm7'),(222,'arm9'),(223,'armeabi-v7a'),(224,'armel'),(225,'armel v7'),(226,'armhf'),(227,'armsel'),(228,'ARMv11'),(229,'armv4l'),(230,'armv4tl'),(231,'ARMv5'),(232,'armv5b'),(233,'ARMv5T'),(234,'ARMv5TE'),(235,'armv5teb'),(236,'ARMv5TEJ'),(237,'armv5tejl'),(238,'armv5tel'),(239,'armv6'),(240,'ARMv6 rev 5'),(241,'ARMv6-compatible'),(242,'ARMv6/armhf'),(243,'armv61'),(244,'ARMv6h'),(245,'ARMv6k'),(246,'armv6l'),(247,'ARMv7'),(248,'ARMv7 OMAP'),(249,'ARMv7 rev 0 (v7l'),(250,'ARMv7 rv9'),(251,'ARMv7, Cortex-A8'),(252,'armv71'),(253,'armv7a-hardfloat'),(254,'armv7h'),(255,'armv7I'),(256,'armv7l'),(257,'ARM_32'),(258,'arm_v7'),(259,'Arrm'),(260,'ASIC'),(261,'Aspire One'),(262,'ASUS'),(263,'asus eeepc'),(264,'Asus x64 Noteboo'),(265,'Athlon'),(266,'athlon (i386)'),(267,'athlon-xp (i686)'),(268,'Atom'),(269,'AuthenticAMD-x86'),(270,'Barthon'),(271,'blackfin'),(272,'Bonnell'),(273,'Broadcom'),(274,'broadwell'),(275,'Cedar Trail'),(276,'Celeron'),(277,'CentOS 5'),(278,'Centrino'),(279,'CHRP'),(280,'cisc'),(281,'CISC i386'),(282,'Cisk'),(283,'Compaq Presario '),(284,'Conroe'),(285,'Core'),(286,'Core 2'),(287,'Core 2 Duo'),(288,'Core 2 i7'),(289,'core 5i'),(290,'Core Duo'),(291,'Core i'),(292,'Core i5'),(293,'core i7'),(294,'Core2'),(295,'Core2/i686'),(296,'Core2Duo'),(297,'Cortex'),(298,'cortex A7'),(299,'Cortex A8'),(300,'CPU'),(301,'cyrix'),(302,'deb'),(303,'Debian'),(304,'Debian Jessie'),(305,'Debian Release 7'),(306,'Debian/Mint'),(307,'default i686'),(308,'dell'),(309,'Dell Desktop'),(310,'Dell Desktop x86'),(311,'Dell Inc. Inspir'),(312,'Dell Laptop x64'),(313,'Dell Latitude D6'),(314,'Dell OptiPlex 17'),(315,'Dell OptiPlex 74'),(316,'Dell OptiPlex 78'),(317,'Dell XPS M1330'),(318,'Deneb'),(319,'Desktop'),(320,'desktop i686'),(321,'DI524'),(322,'Diamondville'),(323,'double core'),(324,'Dual core'),(325,'dual core AMD Tu'),(326,'Dual Core ARM'),(327,'dual core x64'),(328,'dunno'),(329,'Eee Pc'),(330,'EM64T'),(331,'embedded'),(332,'EMT-64 (AMD-64)'),(333,'EMT64'),(334,'epia'),(335,'Esprimo Mobile U'),(336,'ESX VM'),(337,'ext3'),(338,'ext4'),(339,'Exynos'),(340,'Exynos 4412 Quad'),(341,'F1A75-V Motherbo'),(342,'family(6) model('),(343,'Family, model, s'),(344,'Fedora'),(345,'Fedora Core 15 x'),(346,'Fujitsu Siemens'),(347,'GenuineIntel'),(348,'geode'),(349,'Gigabyte'),(350,'GNOME'),(351,'gnome 2.26.1'),(352,'GNU/Linux'),(353,'Haswell'),(354,'HP'),(355,'i'),(356,'I 386'),(357,'i 686'),(358,'i-386'),(359,'i-486'),(360,'i3'),(361,'i32'),(362,'i368'),(363,'i385-64'),(364,'i386'),(365,'i386 (32-bit)'),(366,'i386 (32bit)'),(367,'i386 64 bits'),(368,'i386 AMD'),(369,'i386 GNU/Linux'),(370,'i386 intel Atom'),(371,'i386 X64'),(372,'i386 x86_64'),(373,'i386, x86_64'),(374,'i386-32'),(375,'i386-x64'),(376,'i386/32'),(377,'i386/amd64'),(378,'i386/ia64'),(379,'i386/intel atom'),(380,'I386x64'),(381,'i386_64'),(382,'i386_x64'),(383,'i486'),(384,'i5'),(385,'I512'),(386,'i585'),(387,'i586'),(388,'i586 Geode'),(389,'i635'),(390,'i636'),(391,'i64'),(392,'i686'),(393,'i686 32/64 bits'),(394,'i686 32bit'),(395,'i686 64'),(396,'i686 AMD'),(397,'i686 athlon i386'),(398,'i686 CPU'),(399,'i686 GNU/Linux'),(400,'i686 intel atom'),(401,'i686 PAE'),(402,'i686 pae 32bit'),(403,'i686 x86_64'),(404,'i686, AMD 64'),(405,'i686, amd64'),(406,'i686, i386'),(407,'i686, x64'),(408,'i686, x86_64'),(409,'i686_64'),(410,'i696'),(411,'i7'),(412,'i7 M640'),(413,'i8'),(414,'i836'),(415,'i86'),(416,'i868'),(417,'i86_64'),(418,'IA-32'),(419,'IA-64'),(420,'ia32'),(421,'IA64'),(422,'ia686'),(423,'IBM'),(424,'IBM PC'),(425,'IBM PC/AT'),(426,'IBM X200'),(427,'IBM-Compatilble'),(428,'IBM-PC'),(429,'icore2'),(430,'IDE'),(431,'ii386'),(432,'Inel x86'),(433,'Int'),(434,'Inte'),(435,'Intel'),(436,'intel 3.0'),(437,'Intel 32'),(438,'intel 32 bit'),(439,'Intel 32 bits'),(440,'Intel 32-bit'),(441,'Intel 32bits'),(442,'Intel 64'),(443,'intel 64 @'),(444,'Intel 64 Bit'),(445,'intel 64 bits'),(446,'Intel 64-Bit'),(447,'Intel 64bit'),(448,'Intel 686'),(449,'Intel 945 GC'),(450,'Intel Atom'),(451,'Intel Atom i386'),(452,'Intel Atom x86_6'),(453,'Intel Celeron 26'),(454,'Intel Celeron I7'),(455,'Intel Celeron M'),(456,'Intel Celeron Pe'),(457,'Intel Celeron-M'),(458,'Intel Core'),(459,'Intel Core + Gal'),(460,'Intel Core 2 Duo'),(461,'Intel Core Duo'),(462,'Intel Core i3'),(463,'Intel Core i5'),(464,'Intel Core i5 65'),(465,'Intel Core I5-32'),(466,'Intel Core i7'),(467,'Intel Core i7-26'),(468,'Intel Dual Core'),(469,'intel E8400'),(470,'Intel EM64T'),(471,'Intel EMT64'),(472,'Intel EMT64,x86_'),(473,'Intel i5'),(474,'Intel i7'),(475,'Intel i915'),(476,'Intel i915 32 bi'),(477,'Intel Ivy Bridge'),(478,'intel LGA 1366'),(479,'Intel MMX 64bit'),(480,'Intel Nehalem'),(481,'INTEL PC'),(482,'Intel Pentium'),(483,'Intel Pentium 4'),(484,'INTEL Pentium Du'),(485,'Intel Pentium ov'),(486,'Intel Sandy Brid'),(487,'Intel x64'),(488,'Intel x86'),(489,'Intel x86 (proba'),(490,'Intel x86-32bit'),(491,'Intel x86-64 bit'),(492,'intel x86_64'),(493,'Intel(R) 64 arch'),(494,'Intel(R) Core(TM'),(495,'Intel(R) Xeon(R)'),(496,'intel, amd'),(497,'intel, intel, am'),(498,'Intel-x64'),(499,'Intel/x86_64'),(500,'Intel64 Family 6'),(501,'IntelÂ® Celeron('),(502,'IntelÂ® Coreâ„¢'),(503,'Intell'),(504,'Intel® Core™ i7'),(505,'ISA'),(506,'Itel Core I5'),(507,'ivy'),(508,'Ivy Bridge'),(509,'Ivy-Bridge'),(510,'ix386'),(511,'ix64'),(512,'ix686'),(513,'ix86'),(514,'Jeos'),(515,'k10'),(516,'k7'),(517,'K8'),(518,'Kali Linux'),(519,'kde'),(520,'LAN'),(521,'Laptop'),(522,'Lenovo'),(523,'Lenovo Thinkpad '),(524,'LGA1366 - 64bit'),(525,'LGA775 - 64bit'),(526,'Linux'),(527,'Linux 2.6.27.56-'),(528,'Linux 2.6.32-33 '),(529,'Linux 2.6.32-5-6'),(530,'Linux 3.3.0 Saba'),(531,'Linux Debian'),(532,'Linux Mint / Ubu'),(533,'Linux Mint 11 Ka'),(534,'Linux Mint 15 Ol'),(535,'llano'),(536,'Loongson 2F CPU,'),(537,'Lubuntu'),(538,'LXDE'),(539,'Lynnfield'),(540,'m68k'),(541,'Mac OS X 10.8.2'),(542,'Macintosh'),(543,'Mandriva'),(544,'many'),(545,'Marvell Kirkwood'),(546,'Maxwell'),(547,'MC68000'),(548,'MicroATX'),(549,'MicroKernel'),(550,'MikroTik RouterB'),(551,'mini2440'),(552,'Mint !7'),(553,'mips'),(554,'MIPS 24K'),(555,'MIPS 24Kc'),(556,'MIPS 24Kc V7.4'),(557,'MIPS 24KEc'),(558,'MIPS 4KEc V6.4'),(559,'MIPS-BE'),(560,'mips16'),(561,'mips32'),(562,'mips64'),(563,'mipsel'),(564,'mipsel64'),(565,'Mixed z80/85xx'),(566,'Mobile Intel 945'),(567,'model name	: Gen'),(568,'multiarch'),(569,'Multiarch - 32 -'),(570,'Multicom'),(571,'n series'),(572,'NAS'),(573,'Nehalem'),(574,'Netbook'),(575,'NetBook   intel'),(576,'netburst'),(577,'nettop'),(578,'Noyau Linux 3.2.'),(579,'NSLU2'),(580,'Ñ…86_32bit'),(581,'Ñ…86_64bit'),(582,'OMAP3 SoC'),(583,'orion'),(584,'P3, amd'),(585,'P4'),(586,'PA-RISC'),(587,'padre'),(588,'pae'),(589,'parisc'),(590,'PC'),(591,'PC Box'),(592,'PC INTEL'),(593,'pc/ibm'),(594,'pci'),(595,'Pen Drive'),(596,'Penryn-3M'),(597,'Pentium'),(598,'Pentium 3'),(599,'Pentium 4'),(600,'Pentium D 2.8 GH'),(601,'Pentium Dual Cor'),(602,'Pentium III'),(603,'Pentium III (Cop'),(604,'Pentium M 725'),(605,'pentium2'),(606,'pentium4'),(607,'Phenom'),(608,'phenon'),(609,'Playstation 2'),(610,'Power 7'),(611,'PowerBook3,5 alt'),(612,'powerpc'),(613,'PowerPC G3'),(614,'PowerPC IBM Bubi'),(615,'PowerPC64'),(616,'powerquicc'),(617,'ppc'),(618,'PPC (PowerPC)'),(619,'PPC G4'),(620,'PPC32'),(621,'ppc64'),(622,'pps'),(623,'Prescott'),(624,'Psnarficon - Tya'),(625,'Psnarficon Inter'),(626,'Quad Core'),(627,'Qualcomm Snapdra'),(628,'ramips'),(629,'Raspberry'),(630,'raspberry pi'),(631,'RaspberryPI'),(632,'REDHAT'),(633,'RedHat 5.3'),(634,'RISC'),(635,'RISC 128bit'),(636,'ROSA 64'),(637,'routerbd'),(638,'running 32 bit, '),(639,'Samsung'),(640,'Samsung D700'),(641,'samsung nc10'),(642,'Samsung SPHM580'),(643,'Sandy bridge'),(644,'Sandy Bridge 64-'),(645,'Sandybridge'),(646,'SandyBridge 32nm'),(647,'SH3'),(648,'sh4'),(649,'Sigma Designs Ta'),(650,'Single Processor'),(651,'SiS'),(652,'Slackware 14.0, '),(653,'Smartphone'),(654,'Snapdragon'),(655,'Socket 775'),(656,'socket 939'),(657,'Software and Inf'),(658,'sparc'),(659,'SPARC 32'),(660,'sparc64'),(661,'stand alone'),(662,'sun'),(663,'Sun SPARC'),(664,'SUN SPARC III'),(665,'sun ultra20'),(666,'sun4u'),(667,'Synology'),(668,'T5550'),(669,'Tablet'),(670,'tegra2'),(671,'Thunderbird'),(672,'Toliman\\\" (65 nm'),(673,'Toshiba Tecra R8'),(674,'Ubuntu'),(675,'Ubuntu 12.04 Ser'),(676,'Ubuntu Linux'),(677,'Ubuntu Studio'),(678,'UltraSPARC'),(679,'Unix'),(680,'unknown'),(681,'virtual'),(682,'VirtualBox'),(683,'VirtualBox guest'),(684,'Vishera'),(685,'vm'),(686,'vmware'),(687,'VMware ESX'),(688,'VMware i386'),(689,'VMWare Server'),(690,'VMWare Server 1'),(691,'VMware x86_64'),(692,'vserver'),(693,'westwood'),(694,'Win XP'),(695,'Wintel'),(696,'Wolfdale'),(697,'x'),(698,'x 32'),(699,'X 64'),(700,'X 64 bit'),(701,'x-64'),(702,'X-86'),(703,'X3 Rana chip unl'),(704,'x32'),(705,'x32 bits'),(706,'x386'),(707,'x386_64'),(708,'x586'),(709,'x64'),(710,'x64 bit'),(711,'x64 FEDORA 15'),(712,'x64, ARM'),(713,'x64, x86'),(714,'x64-86'),(715,'x64_64'),(716,'x64_84'),(717,'x64_86'),(718,'x68'),(719,'x686'),(720,'x686_32'),(721,'x68_64'),(722,'x84-64'),(723,'x84_64'),(724,'x86'),(725,'x86  64 bit'),(726,'X86 & X64'),(727,'x86 (32-bit)'),(728,'x86 (32bit)'),(729,'x86 (i386)'),(730,'x86 (i686)'),(731,'x86 (x64)'),(732,'X86 - 64'),(733,'x86 32 bit'),(734,'x86 32-bit'),(735,'x86 32bit'),(736,'x86 64'),(737,'x86 64 (64 bits)'),(738,'x86 64 bit'),(739,'x86 64 bits'),(740,'x86 64-bit'),(741,'x86 64bit'),(742,'x86 ; x86_64'),(743,'x86 AMD64'),(744,'x86 and amd64'),(745,'x86 i386'),(746,'x86 X64'),(747,'x86(64)'),(748,'x86, 64-bit'),(749,'x86, x64'),(750,'x86, x86_64'),(751,'x86,x64'),(752,'x86-32'),(753,'x86-64'),(754,'x86-64 45nm Clar'),(755,'x86-64 core'),(756,'x86-64 i3'),(757,'x86-64 Intel'),(758,'x86-64 K10'),(759,'x86-64 Westemere'),(760,'x86-64, with PAE'),(761,'x86-84'),(762,'x86-amd64'),(763,'x86-architecture'),(764,'x86-x64'),(765,'x86/64'),(766,'X86/AMD64'),(767,'x86/i586'),(768,'x86/x64'),(769,'x86/x86_64'),(770,'x86@64'),(771,'x86x64'),(772,'x86_ 64'),(773,'x86_32'),(774,'x86_32b'),(775,'x86_32bit'),(776,'x86_32bits'),(777,'x86_6'),(778,'x86_64'),(779,'x86_64 AMD64'),(780,'x86_64 bit'),(781,'x86_64 GNU/Linux'),(782,'x86_64 i386'),(783,'x86_64 Intel'),(784,'x86_64, amd64'),(785,'x86_64, athlon-6'),(786,'x86_64, i386'),(787,'x86_64-linux-gn'),(788,'x86_64-pc-linux-'),(789,'x86_64/AMD64'),(790,'x86_64bits'),(791,'X86_64un'),(792,'x86_84'),(793,'x86_AMD64'),(794,'x86_â‚¬64'),(795,'x86_x64'),(796,'x88_64'),(797,'Xen'),(798,'Xenos'),(799,'XUBUNTU'),(800,'xversion86'),(801,'x_64'),(802,'x_86'),(803,'Yonah'),(804,'ZTE Blade'),(805,'_x64'),(806,'~amd64');
/*!40000 ALTER TABLE `architectures` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-03-26 23:31:53

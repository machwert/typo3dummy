-- MySQL dump 10.13  Distrib 5.6.34, for osx10.9 (x86_64)
--
-- Host: localhost    Database: typo3dummy
-- ------------------------------------------------------
-- Server version	5.6.34

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
-- Table structure for table `backend_layout`
--

DROP TABLE IF EXISTS `backend_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backend_layout` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `icon` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_layout`
--

LOCK TABLES `backend_layout` WRITE;
/*!40000 ALTER TABLE `backend_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `backend_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_groups`
--

DROP TABLE IF EXISTS `be_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_groups` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `non_exclude_fields` text COLLATE utf8_unicode_ci,
  `explicit_allowdeny` text COLLATE utf8_unicode_ci,
  `allowed_languages` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `custom_options` text COLLATE utf8_unicode_ci,
  `db_mountpoints` text COLLATE utf8_unicode_ci,
  `pagetypes_select` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tables_select` text COLLATE utf8_unicode_ci,
  `tables_modify` text COLLATE utf8_unicode_ci,
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `groupMods` text COLLATE utf8_unicode_ci,
  `file_mountpoints` text COLLATE utf8_unicode_ci,
  `file_permissions` text COLLATE utf8_unicode_ci,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `description` varchar(2000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lockToDomain` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text COLLATE utf8_unicode_ci,
  `subgroup` text COLLATE utf8_unicode_ci,
  `hide_in_lists` smallint(6) NOT NULL DEFAULT '0',
  `workspace_perms` smallint(6) NOT NULL DEFAULT '1',
  `category_perms` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_groups`
--

LOCK TABLES `be_groups` WRITE;
/*!40000 ALTER TABLE `be_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `be_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_sessions`
--

DROP TABLE IF EXISTS `be_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_sessions` (
  `ses_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ses_userid` int(10) unsigned NOT NULL DEFAULT '0',
  `ses_tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `ses_data` longblob,
  `ses_backuserid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ses_id`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_sessions`
--

LOCK TABLES `be_sessions` WRITE;
/*!40000 ALTER TABLE `be_sessions` DISABLE KEYS */;
INSERT INTO `be_sessions` VALUES ('d6a1fede716a70f752b1e22974795385','127.0.0.1',1,1508755605,'a:4:{s:26:\"formProtectionSessionToken\";s:64:\"a0a4c3b3e768b3509c63643fe8e55f6d44e379b61c13dbd02a8606ae33ead471\";s:27:\"core.template.flashMessages\";N;s:31:\"TYPO3\\CMS\\Recordlist\\RecordList\";a:1:{s:12:\"search_field\";N;}s:80:\"extbase.flashmessages.tx_extensionmanager_tools_extensionmanagerextensionmanager\";N;}',0);
/*!40000 ALTER TABLE `be_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_users`
--

DROP TABLE IF EXISTS `be_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(2000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `avatar` int(10) unsigned NOT NULL DEFAULT '0',
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `admin` smallint(5) unsigned NOT NULL DEFAULT '0',
  `usergroup` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `disable` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `lang` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `db_mountpoints` text COLLATE utf8_unicode_ci,
  `options` smallint(5) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `realName` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `userMods` text COLLATE utf8_unicode_ci,
  `allowed_languages` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `uc` mediumblob,
  `file_mountpoints` text COLLATE utf8_unicode_ci,
  `file_permissions` text COLLATE utf8_unicode_ci,
  `workspace_perms` smallint(6) NOT NULL DEFAULT '1',
  `lockToDomain` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `disableIPlock` smallint(5) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text COLLATE utf8_unicode_ci,
  `lastlogin` int(10) unsigned NOT NULL DEFAULT '0',
  `createdByAction` int(11) NOT NULL DEFAULT '0',
  `usergroup_cached_list` text COLLATE utf8_unicode_ci,
  `workspace_id` int(11) NOT NULL DEFAULT '0',
  `workspace_preview` smallint(6) NOT NULL DEFAULT '1',
  `category_perms` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_users`
--

LOCK TABLES `be_users` WRITE;
/*!40000 ALTER TABLE `be_users` DISABLE KEYS */;
INSERT INTO `be_users` VALUES (1,0,1508324988,'machwert','',0,'$pbkdf2-sha256$25000$ZGA.pjvaZi1.1qXbJAYzhQ$XNIEEDxDFhYLf8OXpbd7vqsvAWqKvaRROCeGVsMVZdY',1,'',0,0,0,'','v.golbig@machwert.de',NULL,0,1508324829,0,'Volker Golbig',NULL,'','a:27:{s:14:\"interfaceSetup\";s:7:\"backend\";s:10:\"moduleData\";a:10:{s:10:\"web_layout\";a:2:{s:8:\"function\";s:1:\"1\";s:8:\"language\";s:1:\"0\";}s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";a:0:{}s:10:\"FormEngine\";a:2:{i:0;a:3:{s:32:\"1b7c56c2b940487231e4b11491739fa7\";a:4:{i:0;s:4:\"Home\";i:1;a:6:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:2;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:75:\"&edit[pages][2]=edit&defVals=&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";i:2;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"381000746cc8be4d101096a9e8c92003\";a:4:{i:0;s:4:\"News\";i:1;a:6:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:3;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:75:\"&edit[pages][3]=edit&defVals=&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";i:3;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"9b209de23811ef89bec385c059f31cd5\";a:4:{i:0;s:18:\"t3dummy - Basis TS\";i:1;a:6:{s:4:\"edit\";a:1:{s:12:\"sys_template\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:82:\"&edit[sys_template][1]=edit&defVals=&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:12:\"sys_template\";s:3:\"uid\";i:1;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}}i:1;s:32:\"9b209de23811ef89bec385c059f31cd5\";}s:6:\"web_ts\";a:2:{s:8:\"function\";s:85:\"TYPO3\\CMS\\Tstemplate\\Controller\\TypoScriptTemplateInformationModuleFunctionController\";s:19:\"constant_editor_cat\";s:14:\"frontend login\";}s:42:\"TYPO3\\CMS\\Belog\\Controller\\ToolsController\";s:646:\"O:39:\"TYPO3\\CMS\\Belog\\Domain\\Model\\Constraint\":20:{s:14:\"\0*\0userOrGroup\";s:1:\"0\";s:9:\"\0*\0number\";i:20;s:15:\"\0*\0workspaceUid\";i:-99;s:12:\"\0*\0timeFrame\";i:0;s:9:\"\0*\0action\";i:-1;s:14:\"\0*\0groupByPage\";b:0;s:17:\"\0*\0startTimestamp\";i:0;s:15:\"\0*\0endTimestamp\";i:0;s:18:\"\0*\0manualDateStart\";N;s:17:\"\0*\0manualDateStop\";N;s:18:\"\0*\0isInPageContext\";b:0;s:9:\"\0*\0pageId\";i:0;s:8:\"\0*\0depth\";i:0;s:6:\"\0*\0uid\";N;s:16:\"\0*\0_localizedUid\";N;s:15:\"\0*\0_languageUid\";N;s:16:\"\0*\0_versionedUid\";N;s:6:\"\0*\0pid\";N;s:61:\"\0TYPO3\\CMS\\Extbase\\DomainObject\\AbstractDomainObject\0_isClone\";b:0;s:69:\"\0TYPO3\\CMS\\Extbase\\DomainObject\\AbstractDomainObject\0_cleanProperties\";a:0:{}}\";s:13:\"system_config\";a:1:{s:8:\"function\";s:1:\"0\";}s:8:\"web_func\";a:1:{s:8:\"function\";s:76:\"TYPO3\\CMS\\WizardCrpages\\Controller\\CreatePagesWizardModuleFunctionController\";}s:16:\"browse_links.php\";a:1:{s:12:\"expandFolder\";s:9:\"1:/icons/\";}s:9:\"file_list\";a:0:{}s:16:\"opendocs::recent\";a:1:{s:32:\"1b7c56c2b940487231e4b11491739fa7\";a:4:{i:0;s:4:\"Home\";i:1;a:6:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:2;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:75:\"&edit[pages][2]=edit&defVals=&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";i:2;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}}}s:19:\"thumbnailsByDefault\";i:1;s:14:\"emailMeAtLogin\";i:0;s:11:\"startModule\";s:22:\"help_AboutAboutmodules\";s:8:\"titleLen\";s:2:\"50\";s:8:\"edit_RTE\";i:1;s:20:\"edit_docModuleUpload\";i:1;s:15:\"resizeTextareas\";i:1;s:25:\"resizeTextareas_MaxHeight\";s:3:\"500\";s:24:\"resizeTextareas_Flexible\";i:0;s:4:\"lang\";s:2:\"de\";s:19:\"firstLoginTimeStamp\";i:1508324868;s:15:\"moduleSessionID\";a:10:{s:10:\"web_layout\";s:32:\"5996b1d05ab07bb993c82a4a4d2d7d4e\";s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";s:32:\"942b6b689ead3dc2ee23b4e1dec3f77d\";s:10:\"FormEngine\";s:32:\"942b6b689ead3dc2ee23b4e1dec3f77d\";s:6:\"web_ts\";s:32:\"b800310c2867d1f1871204e5fdcff5c5\";s:42:\"TYPO3\\CMS\\Belog\\Controller\\ToolsController\";s:32:\"da3730fd1eb05de9928814f5ca75fd8f\";s:13:\"system_config\";s:32:\"4d5b9939d8f186af9769728649ddc0eb\";s:8:\"web_func\";s:32:\"4d5b9939d8f186af9769728649ddc0eb\";s:16:\"browse_links.php\";s:32:\"942b6b689ead3dc2ee23b4e1dec3f77d\";s:9:\"file_list\";s:32:\"942b6b689ead3dc2ee23b4e1dec3f77d\";s:16:\"opendocs::recent\";s:32:\"942b6b689ead3dc2ee23b4e1dec3f77d\";}s:17:\"BackendComponents\";a:1:{s:6:\"States\";a:1:{s:8:\"Pagetree\";a:1:{s:9:\"stateHash\";a:4:{i:0;s:1:\"1\";i:1;s:1:\"1\";s:4:\"root\";s:1:\"1\";s:16:\"lastSelectedNode\";s:2:\"p1\";}}}}s:8:\"realName\";s:0:\"\";s:5:\"email\";s:0:\"\";s:8:\"password\";s:0:\"\";s:9:\"password2\";s:0:\"\";s:6:\"avatar\";s:0:\"\";s:25:\"showHiddenFilesAndFolders\";i:1;s:10:\"copyLevels\";s:2:\"10\";s:15:\"recursiveDelete\";i:1;s:18:\"resetConfiguration\";s:0:\"\";s:17:\"systeminformation\";s:45:\"{\"system_BelogLog\":{\"lastAccess\":1508631507}}\";s:11:\"browseTrees\";a:1:{s:6:\"folder\";s:66:\"a:1:{i:25218;a:3:{i:62822724;i:1;i:14248556;i:1;i:187419009;i:1;}}\";}s:10:\"inlineView\";s:132:\"a:2:{i:0;b:0;s:5:\"pages\";a:2:{i:2;a:1:{s:18:\"sys_file_reference\";a:1:{i:0;i:1;}}i:3;a:1:{s:18:\"sys_file_reference\";a:1:{i:0;i:2;}}}}\";}',NULL,NULL,1,'',0,0,NULL,1508750022,0,NULL,0,1,NULL);
/*!40000 ALTER TABLE `be_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_md5params`
--

DROP TABLE IF EXISTS `cache_md5params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_md5params` (
  `md5hash` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `type` smallint(6) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_md5params`
--

LOCK TABLES `cache_md5params` WRITE;
/*!40000 ALTER TABLE `cache_md5params` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_md5params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_treelist`
--

DROP TABLE IF EXISTS `cache_treelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_treelist` (
  `md5hash` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL DEFAULT '0',
  `treelist` mediumtext COLLATE utf8_unicode_ci,
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_treelist`
--

LOCK TABLES `cache_treelist` WRITE;
/*!40000 ALTER TABLE `cache_treelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_treelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_hash`
--

DROP TABLE IF EXISTS `cf_cache_hash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_hash` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_hash`
--

LOCK TABLES `cf_cache_hash` WRITE;
/*!40000 ALTER TABLE `cf_cache_hash` DISABLE KEYS */;
INSERT INTO `cf_cache_hash` VALUES (1,'b28e5c219c39a7f3c9d04e02a75ad758',2145909600,'a:2:{i:0;a:3:{s:8:\"TSconfig\";a:3:{s:8:\"options.\";a:8:{s:15:\"enableBookmarks\";s:1:\"1\";s:10:\"file_list.\";a:3:{s:28:\"enableDisplayBigControlPanel\";s:10:\"selectable\";s:23:\"enableDisplayThumbnails\";s:10:\"selectable\";s:15:\"enableClipBoard\";s:10:\"selectable\";}s:9:\"pageTree.\";a:1:{s:31:\"doktypesToShowInNewPageDragArea\";s:21:\"1,6,4,7,3,254,255,199\";}s:12:\"contextMenu.\";a:1:{s:6:\"table.\";a:3:{s:6:\"pages.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:5:\"tree.\";a:1:{s:12:\"disableItems\";s:0:\"\";}}s:9:\"sys_file.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:5:\"tree.\";a:1:{s:12:\"disableItems\";s:0:\"\";}}s:15:\"sys_filemounts.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:5:\"tree.\";a:1:{s:12:\"disableItems\";s:0:\"\";}}}}s:11:\"saveDocView\";s:1:\"1\";s:10:\"saveDocNew\";s:1:\"1\";s:11:\"saveDocNew.\";a:3:{s:5:\"pages\";s:1:\"0\";s:8:\"sys_file\";s:1:\"0\";s:17:\"sys_file_metadata\";s:1:\"0\";}s:14:\"disableDelete.\";a:2:{s:8:\"sys_file\";s:1:\"1\";s:17:\"sys_file_metadata\";s:1:\"1\";}}s:9:\"admPanel.\";a:1:{s:7:\"enable.\";a:1:{s:3:\"all\";s:1:\"1\";}}s:12:\"TCAdefaults.\";a:1:{s:9:\"sys_note.\";a:2:{s:6:\"author\";s:13:\"Volker Golbig\";s:5:\"email\";s:20:\"v.golbig@machwert.de\";}}}s:8:\"sections\";a:0:{}s:5:\"match\";a:0:{}}i:1;s:32:\"1b820aaba8e90a165eb01c7c5cf787c3\";}'),(2,'392c6f602e854e5b93279ea2f0f32183',2145909600,'a:4:{s:4:\"mod.\";a:4:{s:9:\"web_list.\";a:5:{s:28:\"enableDisplayBigControlPanel\";s:10:\"selectable\";s:15:\"enableClipBoard\";s:10:\"selectable\";s:22:\"enableLocalizationView\";s:10:\"selectable\";s:18:\"tableDisplayOrder.\";a:11:{s:9:\"be_users.\";a:1:{s:5:\"after\";s:9:\"be_groups\";}s:15:\"sys_filemounts.\";a:1:{s:5:\"after\";s:8:\"be_users\";}s:17:\"sys_file_storage.\";a:1:{s:5:\"after\";s:14:\"sys_filemounts\";}s:13:\"sys_language.\";a:1:{s:5:\"after\";s:16:\"sys_file_storage\";}s:23:\"pages_language_overlay.\";a:1:{s:6:\"before\";s:5:\"pages\";}s:9:\"fe_users.\";a:2:{s:5:\"after\";s:9:\"fe_groups\";s:6:\"before\";s:5:\"pages\";}s:13:\"sys_template.\";a:1:{s:5:\"after\";s:5:\"pages\";}s:15:\"backend_layout.\";a:1:{s:5:\"after\";s:5:\"pages\";}s:11:\"sys_domain.\";a:1:{s:5:\"after\";s:12:\"sys_template\";}s:11:\"tt_content.\";a:1:{s:5:\"after\";s:33:\"pages,backend_layout,sys_template\";}s:13:\"sys_category.\";a:1:{s:5:\"after\";s:10:\"tt_content\";}}s:12:\"searchLevel.\";a:1:{s:6:\"items.\";a:6:{i:-1;s:82:\"EXT:lang/Resources/Private/Language/locallang_core.xlf:labels.searchLevel.infinite\";i:0;s:75:\"EXT:lang/Resources/Private/Language/locallang_core.xlf:labels.searchLevel.0\";i:1;s:75:\"EXT:lang/Resources/Private/Language/locallang_core.xlf:labels.searchLevel.1\";i:2;s:75:\"EXT:lang/Resources/Private/Language/locallang_core.xlf:labels.searchLevel.2\";i:3;s:75:\"EXT:lang/Resources/Private/Language/locallang_core.xlf:labels.searchLevel.3\";i:4;s:75:\"EXT:lang/Resources/Private/Language/locallang_core.xlf:labels.searchLevel.4\";}}}s:8:\"wizards.\";a:2:{s:10:\"newRecord.\";a:1:{s:6:\"pages.\";a:1:{s:5:\"show.\";a:3:{s:10:\"pageInside\";s:1:\"1\";s:9:\"pageAfter\";s:1:\"1\";s:18:\"pageSelectPosition\";s:1:\"1\";}}}s:18:\"newContentElement.\";a:1:{s:12:\"wizardItems.\";a:6:{s:7:\"common.\";a:3:{s:9:\"elements.\";a:8:{s:7:\"header.\";a:4:{s:14:\"iconIdentifier\";s:14:\"content-header\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_headerOnly_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_headerOnly_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:6:\"header\";}}s:5:\"text.\";a:4:{s:14:\"iconIdentifier\";s:12:\"content-text\";s:5:\"title\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_regularText_title\";s:11:\"description\";s:105:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_regularText_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:4:\"text\";}}s:8:\"textpic.\";a:4:{s:14:\"iconIdentifier\";s:15:\"content-textpic\";s:5:\"title\";s:97:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_textImage_title\";s:11:\"description\";s:103:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_textImage_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:7:\"textpic\";}}s:6:\"image.\";a:4:{s:14:\"iconIdentifier\";s:13:\"content-image\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_imagesOnly_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_imagesOnly_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:5:\"image\";}}s:10:\"textmedia.\";a:4:{s:14:\"iconIdentifier\";s:17:\"content-textmedia\";s:5:\"title\";s:97:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_textMedia_title\";s:11:\"description\";s:103:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_textMedia_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:9:\"textmedia\";}}s:8:\"bullets.\";a:4:{s:14:\"iconIdentifier\";s:15:\"content-bullets\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_bulletList_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_bulletList_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:7:\"bullets\";}}s:6:\"table.\";a:4:{s:14:\"iconIdentifier\";s:13:\"content-table\";s:5:\"title\";s:93:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_table_title\";s:11:\"description\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_table_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:5:\"table\";}}s:8:\"uploads.\";a:4:{s:14:\"iconIdentifier\";s:23:\"content-special-uploads\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_filelinks_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_filelinks_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:7:\"uploads\";}}}s:4:\"show\";s:57:\"header,text,textpic,image,textmedia,bullets,table,uploads\";s:6:\"header\";s:81:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common\";}s:5:\"menu.\";a:3:{s:9:\"elements.\";a:11:{s:14:\"menu_abstract.\";a:4:{s:14:\"iconIdentifier\";s:21:\"content-menu-abstract\";s:5:\"title\";s:94:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_abstract.title\";s:11:\"description\";s:100:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_abstract.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:13:\"menu_abstract\";}}s:25:\"menu_categorized_content.\";a:4:{s:14:\"iconIdentifier\";s:24:\"content-menu-categorized\";s:5:\"title\";s:105:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_categorized_content.title\";s:11:\"description\";s:111:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_categorized_content.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:24:\"menu_categorized_content\";}}s:23:\"menu_categorized_pages.\";a:4:{s:14:\"iconIdentifier\";s:24:\"content-menu-categorized\";s:5:\"title\";s:103:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_categorized_pages.title\";s:11:\"description\";s:109:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_categorized_pages.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:22:\"menu_categorized_pages\";}}s:11:\"menu_pages.\";a:4:{s:14:\"iconIdentifier\";s:18:\"content-menu-pages\";s:5:\"title\";s:91:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_pages.title\";s:11:\"description\";s:97:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_pages.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:10:\"menu_pages\";}}s:14:\"menu_subpages.\";a:4:{s:14:\"iconIdentifier\";s:18:\"content-menu-pages\";s:5:\"title\";s:94:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_subpages.title\";s:11:\"description\";s:100:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_subpages.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:13:\"menu_subpages\";}}s:22:\"menu_recently_updated.\";a:4:{s:14:\"iconIdentifier\";s:29:\"content-menu-recently-updated\";s:5:\"title\";s:102:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_recently_updated.title\";s:11:\"description\";s:108:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_recently_updated.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:21:\"menu_recently_updated\";}}s:19:\"menu_related_pages.\";a:4:{s:14:\"iconIdentifier\";s:20:\"content-menu-related\";s:5:\"title\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_related_pages.title\";s:11:\"description\";s:105:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_related_pages.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:18:\"menu_related_pages\";}}s:13:\"menu_section.\";a:4:{s:14:\"iconIdentifier\";s:20:\"content-menu-section\";s:5:\"title\";s:93:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_section.title\";s:11:\"description\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_section.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:12:\"menu_section\";}}s:19:\"menu_section_pages.\";a:4:{s:14:\"iconIdentifier\";s:20:\"content-menu-section\";s:5:\"title\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_section_pages.title\";s:11:\"description\";s:105:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_section_pages.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:18:\"menu_section_pages\";}}s:13:\"menu_sitemap.\";a:4:{s:14:\"iconIdentifier\";s:20:\"content-menu-sitemap\";s:5:\"title\";s:93:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_sitemap.title\";s:11:\"description\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_sitemap.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:12:\"menu_sitemap\";}}s:19:\"menu_sitemap_pages.\";a:4:{s:14:\"iconIdentifier\";s:26:\"content-menu-sitemap-pages\";s:5:\"title\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_sitemap_pages.title\";s:11:\"description\";s:105:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_sitemap_pages.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:18:\"menu_sitemap_pages\";}}}s:4:\"show\";s:191:\"menu_abstract,menu_categorized_content,menu_categorized_pages,menu_pages,menu_subpages,menu_recently_updated,menu_related_pages,menu_section,menu_section_pages,menu_sitemap,menu_sitemap_pages\";s:6:\"header\";s:79:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu\";}s:8:\"special.\";a:3:{s:9:\"elements.\";a:3:{s:5:\"html.\";a:4:{s:14:\"iconIdentifier\";s:20:\"content-special-html\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_plainHTML_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_plainHTML_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:4:\"html\";}}s:4:\"div.\";a:4:{s:14:\"iconIdentifier\";s:19:\"content-special-div\";s:5:\"title\";s:96:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_divider_title\";s:11:\"description\";s:102:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_divider_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:3:\"div\";}}s:9:\"shortcut.\";a:4:{s:14:\"iconIdentifier\";s:24:\"content-special-shortcut\";s:5:\"title\";s:97:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_shortcut_title\";s:11:\"description\";s:103:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_shortcut_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:8:\"shortcut\";}}}s:4:\"show\";s:17:\"html,div,shortcut\";s:6:\"header\";s:82:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special\";}s:6:\"forms.\";a:1:{s:6:\"header\";s:80:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:forms\";}s:8:\"plugins.\";a:3:{s:6:\"header\";s:82:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:plugins\";s:9:\"elements.\";a:3:{s:8:\"general.\";a:4:{s:14:\"iconIdentifier\";s:14:\"content-plugin\";s:5:\"title\";s:96:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:plugins_general_title\";s:11:\"description\";s:102:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:plugins_general_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:4:\"list\";}}s:27:\"plugins_mw_dummy_slideshow.\";a:4:{s:14:\"iconIdentifier\";s:23:\"icon_mw_dummy_slideshow\";s:5:\"title\";s:71:\"LLL:EXT:mw_dummy/Resources/Private/Language/locallang.xml:mwdummy_title\";s:11:\"description\";s:77:\"LLL:EXT:mw_dummy/Resources/Private/Language/locallang.xml:mwdummy_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:17:\"mwdummy_slideshow\";}}s:25:\"plugins_mw_dummy_gallery.\";a:4:{s:14:\"iconIdentifier\";s:21:\"icon_mw_dummy_gallery\";s:5:\"title\";s:79:\"LLL:EXT:mw_dummy/Resources/Private/Language/locallang.xml:mwdummy_title_gallery\";s:11:\"description\";s:85:\"LLL:EXT:mw_dummy/Resources/Private/Language/locallang.xml:mwdummy_description_gallery\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:15:\"mwdummy_gallery\";}}}s:4:\"show\";s:1:\"*\";}s:4:\"dce.\";a:1:{s:6:\"header\";s:84:\"LLL:EXT:dce/Resources/Private/Language/locallang_db.xml:tx_dce_domain_model_dce_long\";}}}}s:9:\"web_view.\";a:1:{s:19:\"previewFrameWidths.\";a:11:{s:5:\"1280.\";a:1:{s:5:\"label\";s:66:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:computer\";}s:5:\"1024.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:tablet\";}s:4:\"960.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}s:4:\"800.\";a:1:{s:5:\"label\";s:66:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:computer\";}s:4:\"768.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:tablet\";}s:4:\"600.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:tablet\";}s:4:\"640.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}s:4:\"480.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}s:4:\"400.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}s:4:\"360.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}s:4:\"300.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}}}s:11:\"web_layout.\";a:1:{s:15:\"BackendLayouts.\";a:5:{s:2:\"1.\";a:2:{s:5:\"title\";s:21:\"Startseite (iteratec)\";s:7:\"config.\";a:1:{s:15:\"backend_layout.\";a:3:{s:8:\"colCount\";s:1:\"4\";s:8:\"rowCount\";s:1:\"4\";s:5:\"rows.\";a:4:{s:2:\"1.\";a:1:{s:8:\"columns.\";a:1:{s:2:\"1.\";a:3:{s:4:\"name\";s:6:\"B√ºhne\";s:7:\"colspan\";s:1:\"4\";s:6:\"colPos\";s:1:\"1\";}}}s:2:\"2.\";a:1:{s:8:\"columns.\";a:2:{s:2:\"1.\";a:2:{s:4:\"name\";s:34:\"Startseiten Box oben links (klein)\";s:6:\"colPos\";s:1:\"2\";}s:2:\"2.\";a:3:{s:4:\"name\";s:35:\"Startseiten Box oben rechts (gro√ü)\";s:7:\"colspan\";s:1:\"3\";s:6:\"colPos\";s:1:\"3\";}}}s:2:\"3.\";a:1:{s:8:\"columns.\";a:1:{s:2:\"1.\";a:3:{s:4:\"name\";s:35:\"Social Media Bereich (volle Breite)\";s:7:\"colspan\";s:1:\"4\";s:6:\"colPos\";s:1:\"4\";}}}s:2:\"4.\";a:1:{s:8:\"columns.\";a:2:{s:2:\"1.\";a:3:{s:4:\"name\";s:33:\"Startseiten Box unten links (50%)\";s:7:\"colspan\";s:1:\"2\";s:6:\"colPos\";s:1:\"5\";}s:2:\"2.\";a:3:{s:4:\"name\";s:34:\"Startseiten Box unten rechts (50%)\";s:7:\"colspan\";s:1:\"2\";s:6:\"colPos\";s:1:\"6\";}}}}}}}s:2:\"2.\";a:2:{s:5:\"title\";s:23:\"Contentseite (iteratec)\";s:7:\"config.\";a:1:{s:15:\"backend_layout.\";a:3:{s:8:\"colCount\";s:1:\"1\";s:8:\"rowCount\";s:1:\"2\";s:5:\"rows.\";a:2:{s:2:\"1.\";a:1:{s:8:\"columns.\";a:1:{s:2:\"1.\";a:4:{s:4:\"name\";s:38:\"B√ºhne (optional, nur Hintergrundbild)\";s:7:\"colspan\";s:1:\"1\";s:6:\"colPos\";s:1:\"1\";s:7:\"allowed\";s:11:\"dce_dceuid5\";}}}s:2:\"2.\";a:1:{s:8:\"columns.\";a:1:{s:2:\"1.\";a:3:{s:4:\"name\";s:7:\"Inhalte\";s:7:\"colspan\";s:1:\"1\";s:6:\"colPos\";s:1:\"2\";}}}}}}}s:2:\"3.\";a:2:{s:5:\"title\";s:27:\"√úbersichtsseite (iteratec)\";s:7:\"config.\";a:1:{s:15:\"backend_layout.\";a:3:{s:8:\"colCount\";s:1:\"1\";s:8:\"rowCount\";s:1:\"2\";s:5:\"rows.\";a:2:{s:2:\"1.\";a:1:{s:8:\"columns.\";a:1:{s:2:\"1.\";a:3:{s:4:\"name\";s:6:\"B√ºhne\";s:6:\"colPos\";s:1:\"1\";s:7:\"allowed\";s:11:\"dce_dceuid3\";}}}s:2:\"2.\";a:1:{s:8:\"columns.\";a:1:{s:2:\"1.\";a:2:{s:4:\"name\";s:7:\"Inhalte\";s:6:\"colPos\";s:1:\"2\";}}}}}}}s:2:\"4.\";a:2:{s:5:\"title\";s:21:\"Startseite (Karriere)\";s:7:\"config.\";a:1:{s:15:\"backend_layout.\";a:3:{s:8:\"colCount\";s:1:\"2\";s:8:\"rowCount\";s:1:\"2\";s:5:\"rows.\";a:2:{s:2:\"1.\";a:1:{s:8:\"columns.\";a:1:{s:2:\"1.\";a:3:{s:4:\"name\";s:6:\"B√ºhne\";s:6:\"colPos\";s:1:\"1\";s:7:\"colspan\";s:1:\"2\";}}}s:2:\"2.\";a:1:{s:8:\"columns.\";a:2:{s:2:\"1.\";a:2:{s:4:\"name\";s:14:\"Footer (links)\";s:6:\"colPos\";s:1:\"2\";}s:2:\"2.\";a:2:{s:4:\"name\";s:15:\"Footer (rechts)\";s:6:\"colPos\";s:1:\"3\";}}}}}}}s:2:\"5.\";a:2:{s:5:\"title\";s:46:\"Contentseite (iteratec) mit anpassbarer B√ºhne\";s:7:\"config.\";a:1:{s:15:\"backend_layout.\";a:3:{s:8:\"colCount\";s:1:\"1\";s:8:\"rowCount\";s:1:\"2\";s:5:\"rows.\";a:2:{s:2:\"1.\";a:1:{s:8:\"columns.\";a:1:{s:2:\"1.\";a:3:{s:4:\"name\";s:6:\"B√ºhne\";s:6:\"colPos\";s:1:\"1\";s:7:\"allowed\";s:11:\"dce_dceuid3\";}}}s:2:\"2.\";a:1:{s:8:\"columns.\";a:1:{s:2:\"1.\";a:2:{s:4:\"name\";s:7:\"Inhalte\";s:6:\"colPos\";s:1:\"2\";}}}}}}}}}}s:8:\"TCEFORM.\";a:5:{s:11:\"tt_content.\";a:9:{s:12:\"imageorient.\";a:1:{s:6:\"types.\";a:1:{s:6:\"image.\";a:1:{s:11:\"removeItems\";s:18:\"8,9,10,17,18,25,26\";}}}s:6:\"CType.\";a:1:{s:11:\"removeItems\";s:359:\"header, text, textmedia, image, bullets, table, uploads, multimedia, media,mailform, search, login, menu, shortcut, html, script, splash, div, form, menu_abstract,menu_categorized_content,menu_categorized_pages,menu_pages,menu_subpages,menu_recently_updated,menu_related_pages,menu_section,menu_section_pages,menu_sitemap,menu_sitemap_pages,form_formframework\";}s:10:\"subheader.\";a:1:{s:8:\"disabled\";s:1:\"1\";}s:13:\"sectionIndex.\";a:1:{s:8:\"disabled\";s:1:\"1\";}s:10:\"linkToTop.\";a:1:{s:8:\"disabled\";s:1:\"1\";}s:10:\"starttime.\";a:1:{s:8:\"disabled\";s:1:\"1\";}s:8:\"endtime.\";a:1:{s:8:\"disabled\";s:1:\"1\";}s:11:\"categories.\";a:1:{s:8:\"disabled\";s:1:\"1\";}s:9:\"fe_group.\";a:1:{s:8:\"disabled\";s:1:\"1\";}}s:10:\"be_groups.\";a:2:{s:14:\"tables_select.\";a:1:{s:11:\"removeItems\";s:59:\"tx_realurl_uniqalias,tx_realurl_urldata,tx_realurl_pathdata\";}s:14:\"tables_modify.\";a:1:{s:11:\"removeItems\";s:59:\"tx_realurl_uniqalias,tx_realurl_urldata,tx_realurl_pathdata\";}}s:15:\"sys_collection.\";a:1:{s:11:\"table_name.\";a:1:{s:11:\"removeItems\";s:59:\"tx_realurl_uniqalias,tx_realurl_urldata,tx_realurl_pathdata\";}}s:13:\"index_config.\";a:1:{s:12:\"table2index.\";a:1:{s:11:\"removeItems\";s:59:\"tx_realurl_uniqalias,tx_realurl_urldata,tx_realurl_pathdata\";}}s:11:\"sys_action.\";a:1:{s:10:\"t3_tables.\";a:1:{s:11:\"removeItems\";s:59:\"tx_realurl_uniqalias,tx_realurl_urldata,tx_realurl_pathdata\";}}}s:8:\"TCEMAIN.\";a:1:{s:12:\"linkHandler.\";a:5:{s:5:\"page.\";a:2:{s:7:\"handler\";s:48:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\PageLinkHandler\";s:5:\"label\";s:71:\"LLL:EXT:lang/Resources/Private/Language/locallang_browse_links.xlf:page\";}s:5:\"file.\";a:4:{s:7:\"handler\";s:48:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\FileLinkHandler\";s:5:\"label\";s:71:\"LLL:EXT:lang/Resources/Private/Language/locallang_browse_links.xlf:file\";s:12:\"displayAfter\";s:4:\"page\";s:9:\"scanAfter\";s:4:\"page\";}s:7:\"folder.\";a:4:{s:7:\"handler\";s:50:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\FolderLinkHandler\";s:5:\"label\";s:73:\"LLL:EXT:lang/Resources/Private/Language/locallang_browse_links.xlf:folder\";s:12:\"displayAfter\";s:4:\"file\";s:9:\"scanAfter\";s:4:\"file\";}s:4:\"url.\";a:4:{s:7:\"handler\";s:47:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\UrlLinkHandler\";s:5:\"label\";s:73:\"LLL:EXT:lang/Resources/Private/Language/locallang_browse_links.xlf:extUrl\";s:12:\"displayAfter\";s:6:\"folder\";s:9:\"scanAfter\";s:4:\"mail\";}s:5:\"mail.\";a:3:{s:7:\"handler\";s:48:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\MailLinkHandler\";s:5:\"label\";s:72:\"LLL:EXT:lang/Resources/Private/Language/locallang_browse_links.xlf:email\";s:12:\"displayAfter\";s:3:\"url\";}}}s:7:\"tx_dce.\";a:1:{s:9:\"defaults.\";a:1:{s:18:\"simpleBackendView.\";a:5:{s:15:\"titleCropLength\";s:2:\"10\";s:17:\"titleCropAppendix\";s:3:\"...\";s:10:\"imageWidth\";s:3:\"50c\";s:11:\"imageHeight\";s:3:\"50c\";s:21:\"containerGroupColors.\";a:11:{i:10;s:7:\"#0079BF\";i:11;s:7:\"#D29034\";i:12;s:7:\"#519839\";i:13;s:7:\"#B04632\";i:14;s:7:\"#838C91\";i:15;s:7:\"#CD5A91\";i:16;s:7:\"#4BBF6B\";i:17;s:7:\"#89609E\";i:18;s:7:\"#00AECC\";i:19;s:7:\"#ED2448\";i:20;s:7:\"#FF8700\";}}}}}'),(3,'06527082485c16a179778b23bda94900',2145909600,'a:2:{s:9:\"constants\";a:7:{s:7:\"styles.\";a:2:{s:8:\"content.\";a:6:{s:10:\"loginform.\";a:21:{s:3:\"pid\";s:1:\"0\";s:9:\"recursive\";s:1:\"0\";s:12:\"templateFile\";s:58:\"EXT:felogin/Resources/Private/Templates/FrontendLogin.html\";s:14:\"feloginBaseURL\";s:0:\"\";s:10:\"dateFormat\";s:9:\"Y-m-d H:i\";s:22:\"showForgotPasswordLink\";s:1:\"0\";s:14:\"showPermaLogin\";s:1:\"0\";s:24:\"showLogoutFormAfterLogin\";s:1:\"0\";s:9:\"emailFrom\";s:0:\"\";s:13:\"emailFromName\";s:0:\"\";s:12:\"replyToEmail\";s:0:\"\";s:12:\"redirectMode\";s:0:\"\";s:19:\"redirectFirstMethod\";s:1:\"0\";s:17:\"redirectPageLogin\";s:1:\"0\";s:22:\"redirectPageLoginError\";s:1:\"0\";s:18:\"redirectPageLogout\";s:1:\"0\";s:15:\"redirectDisable\";s:1:\"0\";s:23:\"forgotLinkHashValidTime\";s:2:\"12\";s:20:\"newPasswordMinLength\";s:1:\"6\";s:7:\"domains\";s:0:\"\";s:43:\"exposeNonexistentUserInForgotPasswordDialog\";s:1:\"0\";}s:17:\"defaultHeaderType\";s:1:\"2\";s:9:\"shortcut.\";a:1:{s:6:\"tables\";s:10:\"tt_content\";}s:9:\"allowTags\";s:389:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer, header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, samp, sdfield, section, small, span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:10:\"textmedia.\";a:9:{s:4:\"maxW\";s:3:\"600\";s:10:\"maxWInText\";s:3:\"300\";s:13:\"columnSpacing\";s:2:\"10\";s:10:\"rowSpacing\";s:2:\"10\";s:10:\"textMargin\";s:2:\"10\";s:11:\"borderColor\";s:7:\"#000000\";s:11:\"borderWidth\";s:1:\"2\";s:13:\"borderPadding\";s:1:\"0\";s:9:\"linkWrap.\";a:6:{s:5:\"width\";s:4:\"800m\";s:6:\"height\";s:4:\"600m\";s:9:\"newWindow\";s:1:\"0\";s:15:\"lightboxEnabled\";s:1:\"0\";s:16:\"lightboxCssClass\";s:8:\"lightbox\";s:20:\"lightboxRelAttribute\";s:21:\"lightbox[{field:uid}]\";}}s:6:\"links.\";a:2:{s:9:\"extTarget\";s:6:\"_blank\";s:4:\"keep\";s:4:\"path\";}}s:10:\"templates.\";a:3:{s:16:\"templateRootPath\";s:0:\"\";s:15:\"partialRootPath\";s:0:\"\";s:14:\"layoutRootPath\";s:0:\"\";}}s:7:\"plugin.\";a:2:{s:15:\"tx_carashtheme.\";a:1:{s:5:\"view.\";a:3:{s:16:\"templateRootPath\";s:44:\"EXT:carashtheme/Resources/Private/Templates/\";s:15:\"partialRootPath\";s:43:\"EXT:carashtheme/Resources/Private/Partials/\";s:14:\"layoutRootPath\";s:42:\"EXT:carashtheme/Resources/Private/Layouts/\";}}s:11:\"tx_mwdummy.\";a:1:{s:5:\"view.\";a:3:{s:16:\"templateRootPath\";s:41:\"EXT:mw_dummy/Resources/Private/Templates/\";s:15:\"partialRootPath\";s:40:\"EXT:mw_dummy/Resources/Private/Partials/\";s:14:\"layoutRootPath\";s:39:\"EXT:mw_dummy/Resources/Private/Layouts/\";}}}s:7:\"confDir\";s:29:\"EXT:carashtheme/Configuration\";s:6:\"resDir\";s:25:\"EXT:carashtheme/Resources\";s:11:\"dummyResDir\";s:22:\"EXT:mw_dummy/Resources\";s:7:\"mainDir\";s:1:\"2\";s:7:\"module.\";a:1:{s:11:\"tx_sysnote.\";a:1:{s:5:\"view.\";a:3:{s:14:\"layoutRootPath\";s:39:\"EXT:sys_note/Resources/Private/Layouts/\";s:15:\"partialRootPath\";s:40:\"EXT:sys_note/Resources/Private/Partials/\";s:16:\"templateRootPath\";s:41:\"EXT:sys_note/Resources/Private/Templates/\";}}}}s:5:\"setup\";a:14:{s:7:\"styles.\";a:1:{s:8:\"content.\";a:2:{s:3:\"get\";s:7:\"CONTENT\";s:4:\"get.\";a:2:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:2:{s:7:\"orderBy\";s:7:\"sorting\";s:5:\"where\";s:11:\"{#colPos}=0\";}}}}s:10:\"tt_content\";s:4:\"CASE\";s:11:\"tt_content.\";a:65:{s:4:\"key.\";a:1:{s:5:\"field\";s:5:\"CType\";}s:7:\"default\";s:4:\"TEXT\";s:8:\"default.\";a:4:{s:5:\"field\";s:5:\"CType\";s:16:\"htmlSpecialChars\";s:1:\"1\";s:4:\"wrap\";s:165:\"<p style=\"background-color: yellow; padding: 0.5em 1em;\"><strong>ERROR:</strong> Content Element with uid \"{field:uid}\" and type \"|\" has no rendering definition!</p>\";s:5:\"wrap.\";a:1:{s:10:\"insertData\";s:1:\"1\";}}s:5:\"login\";s:20:\"< lib.contentElement\";s:6:\"login.\";a:2:{s:12:\"templateName\";s:7:\"Generic\";s:10:\"variables.\";a:1:{s:7:\"content\";s:23:\"< plugin.tx_felogin_pi1\";}}s:8:\"stdWrap.\";a:3:{s:9:\"editPanel\";s:1:\"1\";s:10:\"editPanel.\";a:5:{s:5:\"allow\";s:29:\"move, new, edit, hide, delete\";s:5:\"label\";s:2:\"%s\";s:14:\"onlyCurrentPid\";s:1:\"1\";s:13:\"previewBorder\";s:1:\"1\";s:5:\"edit.\";a:1:{s:13:\"displayRecord\";s:1:\"1\";}}s:10:\"innerWrap.\";a:2:{s:7:\"cObject\";s:4:\"CASE\";s:8:\"cObject.\";a:28:{i:1;s:46:\"< tt_content.stdWrap.innerWrap.cObject.default\";s:2:\"1.\";a:2:{s:3:\"20.\";a:1:{s:3:\"10.\";a:1:{s:5:\"value\";s:15:\"contentbox col2\";}}s:3:\"30.\";a:1:{s:8:\"cObject.\";a:1:{s:8:\"default.\";a:1:{s:5:\"value\";s:37:\"><div class=\"innercont\">|</div></div>\";}}}}s:2:\"2.\";a:2:{s:3:\"20.\";a:1:{s:3:\"10.\";a:1:{s:5:\"value\";s:20:\"contentbox col2 last\";}}s:3:\"30.\";a:1:{s:8:\"cObject.\";a:1:{s:8:\"default.\";a:1:{s:5:\"value\";s:64:\"><div class=\"innercont\">|</div></div><div class=\"clearer\"></div>\";}}}}i:3;s:46:\"< tt_content.stdWrap.innerWrap.cObject.default\";s:2:\"3.\";a:2:{s:3:\"20.\";a:1:{s:3:\"10.\";a:1:{s:5:\"value\";s:15:\"contentbox col3\";}}s:3:\"30.\";a:1:{s:8:\"cObject.\";a:1:{s:8:\"default.\";a:1:{s:5:\"value\";s:37:\"><div class=\"innercont\">|</div></div>\";}}}}i:4;s:46:\"< tt_content.stdWrap.innerWrap.cObject.default\";s:2:\"4.\";a:2:{s:3:\"20.\";a:1:{s:3:\"10.\";a:1:{s:5:\"value\";s:20:\"contentbox col3 last\";}}s:3:\"30.\";a:1:{s:8:\"cObject.\";a:1:{s:8:\"default.\";a:1:{s:5:\"value\";s:64:\"><div class=\"innercont\">|</div></div><div class=\"clearer\"></div>\";}}}}i:7;s:46:\"< tt_content.stdWrap.innerWrap.cObject.default\";s:2:\"7.\";a:2:{s:3:\"20.\";a:1:{s:3:\"10.\";a:1:{s:5:\"value\";s:15:\"contentbox col4\";}}s:3:\"30.\";a:1:{s:8:\"cObject.\";a:1:{s:8:\"default.\";a:1:{s:5:\"value\";s:37:\"><div class=\"innercont\">|</div></div>\";}}}}i:8;s:46:\"< tt_content.stdWrap.innerWrap.cObject.default\";s:2:\"8.\";a:2:{s:3:\"20.\";a:1:{s:3:\"10.\";a:1:{s:5:\"value\";s:20:\"contentbox col4 last\";}}s:3:\"30.\";a:1:{s:8:\"cObject.\";a:1:{s:8:\"default.\";a:1:{s:5:\"value\";s:64:\"><div class=\"innercont\">|</div></div><div class=\"clearer\"></div>\";}}}}i:16;s:46:\"< tt_content.stdWrap.innerWrap.cObject.default\";s:3:\"16.\";a:2:{s:3:\"20.\";a:1:{s:3:\"10.\";a:1:{s:5:\"value\";s:15:\"contentbox col6\";}}s:3:\"30.\";a:1:{s:8:\"cObject.\";a:1:{s:8:\"default.\";a:1:{s:5:\"value\";s:37:\"><div class=\"innercont\">|</div></div>\";}}}}i:17;s:46:\"< tt_content.stdWrap.innerWrap.cObject.default\";s:3:\"17.\";a:2:{s:3:\"20.\";a:1:{s:3:\"10.\";a:1:{s:5:\"value\";s:20:\"contentbox col6 last\";}}s:3:\"30.\";a:1:{s:8:\"cObject.\";a:1:{s:8:\"default.\";a:1:{s:5:\"value\";s:64:\"><div class=\"innercont\">|</div></div><div class=\"clearer\"></div>\";}}}}i:19;s:46:\"< tt_content.stdWrap.innerWrap.cObject.default\";s:3:\"19.\";a:2:{s:3:\"20.\";a:1:{s:3:\"10.\";a:1:{s:5:\"value\";s:15:\"contentbox col8\";}}s:3:\"30.\";a:1:{s:8:\"cObject.\";a:1:{s:8:\"default.\";a:1:{s:5:\"value\";s:37:\"><div class=\"innercont\">|</div></div>\";}}}}i:22;s:46:\"< tt_content.stdWrap.innerWrap.cObject.default\";s:3:\"22.\";a:2:{s:3:\"20.\";a:1:{s:3:\"10.\";a:1:{s:5:\"value\";s:20:\"contentbox col8 last\";}}s:3:\"30.\";a:1:{s:8:\"cObject.\";a:1:{s:8:\"default.\";a:1:{s:5:\"value\";s:64:\"><div class=\"innercont\">|</div></div><div class=\"clearer\"></div>\";}}}}i:25;s:46:\"< tt_content.stdWrap.innerWrap.cObject.default\";s:3:\"25.\";a:2:{s:3:\"20.\";a:1:{s:3:\"10.\";a:1:{s:5:\"value\";s:15:\"contentbox col9\";}}s:3:\"30.\";a:1:{s:8:\"cObject.\";a:1:{s:8:\"default.\";a:1:{s:5:\"value\";s:37:\"><div class=\"innercont\">|</div></div>\";}}}}i:26;s:46:\"< tt_content.stdWrap.innerWrap.cObject.default\";s:3:\"26.\";a:2:{s:3:\"20.\";a:1:{s:3:\"10.\";a:1:{s:5:\"value\";s:20:\"contentbox col9 last\";}}s:3:\"30.\";a:1:{s:8:\"cObject.\";a:1:{s:8:\"default.\";a:1:{s:5:\"value\";s:64:\"><div class=\"innercont\">|</div></div><div class=\"clearer\"></div>\";}}}}i:27;s:46:\"< tt_content.stdWrap.innerWrap.cObject.default\";s:3:\"27.\";a:2:{s:3:\"20.\";a:1:{s:3:\"10.\";a:1:{s:5:\"value\";s:17:\"contentbox cbox10\";}}s:3:\"30.\";a:1:{s:8:\"cObject.\";a:1:{s:8:\"default.\";a:1:{s:5:\"value\";s:37:\"><div class=\"innercont\">|</div></div>\";}}}}i:28;s:46:\"< tt_content.stdWrap.innerWrap.cObject.default\";s:3:\"28.\";a:2:{s:3:\"20.\";a:1:{s:3:\"10.\";a:1:{s:5:\"value\";s:21:\"contentbox cbox10last\";}}s:3:\"30.\";a:1:{s:8:\"cObject.\";a:1:{s:8:\"default.\";a:1:{s:5:\"value\";s:64:\"><div class=\"innercont\">|</div></div><div class=\"clearer\"></div>\";}}}}s:8:\"default.\";a:3:{s:3:\"20.\";a:2:{i:40;s:4:\"CASE\";s:3:\"40.\";a:29:{s:4:\"key.\";a:1:{s:5:\"field\";s:6:\"layout\";}i:102;s:4:\"TEXT\";s:4:\"102.\";a:1:{s:5:\"value\";s:11:\"csc-special\";}i:108;s:4:\"TEXT\";s:4:\"108.\";a:1:{s:5:\"value\";s:11:\"paddingleft\";}i:110;s:4:\"TEXT\";s:4:\"110.\";a:1:{s:5:\"value\";s:12:\"paddingright\";}i:112;s:4:\"TEXT\";s:4:\"112.\";a:1:{s:5:\"value\";s:24:\"paddingleft paddingright\";}i:114;s:4:\"TEXT\";s:4:\"114.\";a:1:{s:5:\"value\";s:10:\"paddingtop\";}i:116;s:4:\"TEXT\";s:4:\"116.\";a:1:{s:5:\"value\";s:22:\"paddingtop paddingleft\";}i:117;s:4:\"TEXT\";s:4:\"117.\";a:1:{s:5:\"value\";s:23:\"paddingtop paddingright\";}i:118;s:4:\"TEXT\";s:4:\"118.\";a:1:{s:5:\"value\";s:35:\"paddingtop paddingleft paddingright\";}i:131;s:4:\"TEXT\";s:4:\"131.\";a:1:{s:5:\"value\";s:44:\"ka_unternehmen ka_u margintop startbox_large\";}i:132;s:4:\"TEXT\";s:4:\"132.\";a:1:{s:5:\"value\";s:27:\"ka_news ka_n startbox_small\";}i:133;s:4:\"TEXT\";s:4:\"133.\";a:1:{s:5:\"value\";s:14:\"ka_marken ka_m\";}i:134;s:4:\"TEXT\";s:4:\"134.\";a:1:{s:5:\"value\";s:21:\"ka_verantwortung ka_v\";}i:135;s:4:\"TEXT\";s:4:\"135.\";a:1:{s:5:\"value\";s:31:\"ka_karriere ka_k startbox_small\";}i:136;s:4:\"TEXT\";s:4:\"136.\";a:1:{s:5:\"value\";s:33:\"ka_innovation ka_i startbox_large\";}}}s:3:\"if.\";a:3:{s:7:\"equals.\";a:1:{s:5:\"field\";s:5:\"CType\";}s:5:\"value\";s:16:\"gridelements_pi1\";s:6:\"negate\";s:1:\"1\";}s:8:\"stdWrap.\";a:1:{s:3:\"if.\";a:3:{s:5:\"value\";s:11:\"dce_dceuid0\";s:9:\"isInList.\";a:1:{s:5:\"field\";s:5:\"CType\";}s:6:\"negate\";s:1:\"1\";}}}}}}s:7:\"bullets\";s:20:\"< lib.contentElement\";s:8:\"bullets.\";a:3:{s:12:\"templateName\";s:7:\"Bullets\";s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\SplitProcessor\";s:3:\"10.\";a:4:{s:3:\"if.\";a:2:{s:5:\"value\";s:1:\"2\";s:11:\"isLessThan.\";a:1:{s:5:\"field\";s:12:\"bullets_type\";}}s:9:\"fieldName\";s:8:\"bodytext\";s:18:\"removeEmptyEntries\";s:1:\"1\";s:2:\"as\";s:7:\"bullets\";}i:20;s:62:\"TYPO3\\CMS\\Frontend\\DataProcessing\\CommaSeparatedValueProcessor\";s:3:\"20.\";a:4:{s:9:\"fieldName\";s:8:\"bodytext\";s:3:\"if.\";a:2:{s:5:\"value\";s:1:\"2\";s:7:\"equals.\";a:1:{s:5:\"field\";s:12:\"bullets_type\";}}s:14:\"fieldDelimiter\";s:1:\"|\";s:2:\"as\";s:7:\"bullets\";}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:59:\"tt_content: header [header_layout], bodytext [bullets_type]\";s:10:\"editIcons.\";a:2:{s:13:\"beforeLastTag\";s:1:\"1\";s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:92:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.bullets\";}}}}s:3:\"div\";s:20:\"< lib.contentElement\";s:4:\"div.\";a:1:{s:12:\"templateName\";s:3:\"Div\";}s:6:\"header\";s:20:\"< lib.contentElement\";s:7:\"header.\";a:2:{s:12:\"templateName\";s:6:\"Header\";s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:63:\"tt_content: header [header_layout|header_link], subheader, date\";s:10:\"editIcons.\";a:2:{s:13:\"beforeLastTag\";s:1:\"1\";s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:91:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.header\";}}}}s:4:\"html\";s:20:\"< lib.contentElement\";s:5:\"html.\";a:2:{s:12:\"templateName\";s:4:\"Html\";s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:20:\"tt_content: bodytext\";s:10:\"editIcons.\";a:2:{s:13:\"beforeLastTag\";s:1:\"1\";s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.html\";}}}}s:5:\"image\";s:20:\"< lib.contentElement\";s:6:\"image.\";a:3:{s:12:\"templateName\";s:5:\"Image\";s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"image\";}}i:20;s:50:\"TYPO3\\CMS\\Frontend\\DataProcessing\\GalleryProcessor\";s:3:\"20.\";a:5:{s:15:\"maxGalleryWidth\";s:3:\"600\";s:21:\"maxGalleryWidthInText\";s:3:\"300\";s:13:\"columnSpacing\";s:2:\"10\";s:11:\"borderWidth\";s:1:\"2\";s:13:\"borderPadding\";s:1:\"0\";}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:92:\"tt_content : image [imageorient|imagewidth|imageheight], [imagecols|imageborder], image_zoom\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:90:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.image\";}}}}s:4:\"list\";s:20:\"< lib.contentElement\";s:5:\"list.\";a:3:{s:12:\"templateName\";s:4:\"List\";s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:72:\"tt_content: header [header_layout], list_type, layout, pages [recursive]\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.list\";}}}s:3:\"20.\";a:2:{s:7:\"dce_dce\";s:4:\"USER\";s:8:\"dce_dce.\";a:4:{s:8:\"userFunc\";s:37:\"TYPO3\\CMS\\Extbase\\Core\\Bootstrap->run\";s:13:\"extensionName\";s:3:\"Dce\";s:10:\"pluginName\";s:3:\"Dce\";s:10:\"vendorName\";s:11:\"ArminVieweg\";}}}s:8:\"shortcut\";s:20:\"< lib.contentElement\";s:9:\"shortcut.\";a:3:{s:12:\"templateName\";s:8:\"Shortcut\";s:10:\"variables.\";a:2:{s:9:\"shortcuts\";s:7:\"RECORDS\";s:10:\"shortcuts.\";a:2:{s:7:\"source.\";a:1:{s:5:\"field\";s:7:\"records\";}s:6:\"tables\";s:10:\"tt_content\";}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:43:\"tt_content: header [header_layout], records\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:93:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.shortcut\";}}}}s:5:\"table\";s:20:\"< lib.contentElement\";s:6:\"table.\";a:3:{s:12:\"templateName\";s:5:\"Table\";s:15:\"dataProcessing.\";a:2:{i:10;s:62:\"TYPO3\\CMS\\Frontend\\DataProcessing\\CommaSeparatedValueProcessor\";s:3:\"10.\";a:5:{s:9:\"fieldName\";s:8:\"bodytext\";s:15:\"fieldDelimiter.\";a:1:{s:5:\"char.\";a:2:{s:7:\"cObject\";s:4:\"TEXT\";s:8:\"cObject.\";a:1:{s:5:\"field\";s:15:\"table_delimiter\";}}}s:15:\"fieldEnclosure.\";a:1:{s:5:\"char.\";a:2:{s:7:\"cObject\";s:4:\"TEXT\";s:8:\"cObject.\";a:1:{s:5:\"field\";s:15:\"table_enclosure\";}}}s:15:\"maximumColumns.\";a:1:{s:5:\"field\";s:4:\"cols\";}s:2:\"as\";s:5:\"table\";}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:100:\"tt_content: header [header_layout], bodytext, [table_caption|cols|table_header_position|table_tfoot]\";s:10:\"editIcons.\";a:2:{s:13:\"beforeLastTag\";s:1:\"1\";s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:90:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.table\";}}}}s:4:\"text\";s:20:\"< lib.contentElement\";s:5:\"text.\";a:2:{s:12:\"templateName\";s:4:\"Text\";s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:20:\"tt_content: bodytext\";s:10:\"editIcons.\";a:2:{s:13:\"beforeLastTag\";s:1:\"1\";s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.html\";}}}}s:9:\"textmedia\";s:20:\"< lib.contentElement\";s:10:\"textmedia.\";a:3:{s:12:\"templateName\";s:9:\"Textmedia\";s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:6:\"assets\";}}i:20;s:50:\"TYPO3\\CMS\\Frontend\\DataProcessing\\GalleryProcessor\";s:3:\"20.\";a:5:{s:15:\"maxGalleryWidth\";s:3:\"600\";s:21:\"maxGalleryWidthInText\";s:3:\"300\";s:13:\"columnSpacing\";s:2:\"10\";s:11:\"borderWidth\";s:1:\"2\";s:13:\"borderPadding\";s:1:\"0\";}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:126:\"tt_content: header [header_layout], bodytext, assets [imageorient|imagewidth|imageheight], [imagecols|imageborder], image_zoom\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:94:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.textmedia\";}}}}s:7:\"textpic\";s:20:\"< lib.contentElement\";s:8:\"textpic.\";a:3:{s:12:\"templateName\";s:7:\"Textpic\";s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"image\";}}i:20;s:50:\"TYPO3\\CMS\\Frontend\\DataProcessing\\GalleryProcessor\";s:3:\"20.\";a:5:{s:15:\"maxGalleryWidth\";s:3:\"600\";s:21:\"maxGalleryWidthInText\";s:3:\"300\";s:13:\"columnSpacing\";s:2:\"10\";s:11:\"borderWidth\";s:1:\"2\";s:13:\"borderPadding\";s:1:\"0\";}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:125:\"tt_content: header [header_layout], bodytext, image [imageorient|imagewidth|imageheight], [imagecols|imageborder], image_zoom\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:92:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.textpic\";}}}}s:7:\"uploads\";s:20:\"< lib.contentElement\";s:8:\"uploads.\";a:3:{s:12:\"templateName\";s:7:\"Uploads\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:3:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}s:12:\"collections.\";a:1:{s:5:\"field\";s:16:\"file_collections\";}s:8:\"sorting.\";a:1:{s:5:\"field\";s:16:\"filelink_sorting\";}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:127:\"tt_content: header [header_layout], media, file_collections, filelink_sorting, [filelink_size|uploads_description|uploads_type]\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:92:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.uploads\";}}}}s:13:\"menu_abstract\";s:20:\"< lib.contentElement\";s:14:\"menu_abstract.\";a:3:{s:12:\"templateName\";s:12:\"MenuAbstract\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:3:{s:7:\"special\";s:9:\"directory\";s:8:\"special.\";a:1:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}}s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:41:\"tt_content: header [header_layout], pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:24:\"menu_categorized_content\";s:20:\"< lib.contentElement\";s:25:\"menu_categorized_content.\";a:3:{s:12:\"templateName\";s:22:\"MenuCategorizedContent\";s:15:\"dataProcessing.\";a:2:{i:10;s:56:\"TYPO3\\CMS\\Frontend\\DataProcessing\\DatabaseQueryProcessor\";s:3:\"10.\";a:9:{s:5:\"table\";s:10:\"tt_content\";s:12:\"selectFields\";s:12:\"tt_content.*\";s:7:\"groupBy\";s:3:\"uid\";s:10:\"pidInList.\";a:1:{s:4:\"data\";s:12:\"leveluid : 0\";}s:9:\"recursive\";s:2:\"99\";s:5:\"join.\";a:2:{s:4:\"data\";s:25:\"field:selected_categories\";s:4:\"wrap\";s:109:\"sys_category_record_mm ON uid = sys_category_record_mm.uid_foreign AND sys_category_record_mm.uid_local IN(|)\";}s:6:\"where.\";a:2:{s:4:\"data\";s:20:\"field:category_field\";s:4:\"wrap\";s:41:\"tablenames=\'tt_content\' and fieldname=\'|\'\";}s:2:\"as\";s:7:\"content\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"image\";}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:71:\"tt_content: header [header_layout], selected_categories, category_field\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:22:\"menu_categorized_pages\";s:20:\"< lib.contentElement\";s:23:\"menu_categorized_pages.\";a:3:{s:12:\"templateName\";s:20:\"MenuCategorizedPages\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:3:{s:7:\"special\";s:10:\"categories\";s:8:\"special.\";a:4:{s:6:\"value.\";a:1:{s:5:\"field\";s:19:\"selected_categories\";}s:9:\"relation.\";a:1:{s:5:\"field\";s:14:\"category_field\";}s:7:\"sorting\";s:5:\"title\";s:5:\"order\";s:3:\"asc\";}s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:71:\"tt_content: header [header_layout], selected_categories, category_field\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:10:\"menu_pages\";s:20:\"< lib.contentElement\";s:11:\"menu_pages.\";a:3:{s:12:\"templateName\";s:9:\"MenuPages\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:3:{s:7:\"special\";s:4:\"list\";s:8:\"special.\";a:1:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}}s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:41:\"tt_content: header [header_layout], pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:13:\"menu_subpages\";s:20:\"< lib.contentElement\";s:14:\"menu_subpages.\";a:3:{s:12:\"templateName\";s:12:\"MenuSubpages\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:3:{s:7:\"special\";s:9:\"directory\";s:8:\"special.\";a:1:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}}s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:41:\"tt_content: header [header_layout], pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:12:\"menu_section\";s:20:\"< lib.contentElement\";s:13:\"menu_section.\";a:3:{s:12:\"templateName\";s:11:\"MenuSection\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:3:{s:7:\"special\";s:4:\"list\";s:8:\"special.\";a:1:{s:6:\"value.\";a:2:{s:5:\"field\";s:5:\"pages\";s:9:\"override.\";a:2:{s:4:\"data\";s:8:\"page:uid\";s:3:\"if.\";a:1:{s:8:\"isFalse.\";a:1:{s:5:\"field\";s:5:\"pages\";}}}}}s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}i:20;s:56:\"TYPO3\\CMS\\Frontend\\DataProcessing\\DatabaseQueryProcessor\";s:3:\"20.\";a:5:{s:5:\"table\";s:10:\"tt_content\";s:10:\"pidInList.\";a:1:{s:5:\"field\";s:3:\"uid\";}s:2:\"as\";s:7:\"content\";s:5:\"where\";s:16:\"sectionIndex = 1\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"image\";}}}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:41:\"tt_content: header [header_layout], pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:18:\"menu_section_pages\";s:20:\"< lib.contentElement\";s:19:\"menu_section_pages.\";a:3:{s:12:\"templateName\";s:16:\"MenuSectionPages\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:3:{s:7:\"special\";s:9:\"directory\";s:8:\"special.\";a:1:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}}s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}i:20;s:56:\"TYPO3\\CMS\\Frontend\\DataProcessing\\DatabaseQueryProcessor\";s:3:\"20.\";a:4:{s:5:\"table\";s:10:\"tt_content\";s:10:\"pidInList.\";a:1:{s:5:\"field\";s:3:\"uid\";}s:2:\"as\";s:7:\"content\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"image\";}}}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:41:\"tt_content: header [header_layout], pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:21:\"menu_recently_updated\";s:20:\"< lib.contentElement\";s:22:\"menu_recently_updated.\";a:3:{s:12:\"templateName\";s:19:\"MenuRecentlyUpdated\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:3:{s:7:\"special\";s:7:\"updated\";s:8:\"special.\";a:3:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}s:6:\"maxAge\";s:9:\"3600*24*7\";s:20:\"excludeNoSearchPages\";s:1:\"1\";}s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:41:\"tt_content: header [header_layout], pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:18:\"menu_related_pages\";s:20:\"< lib.contentElement\";s:19:\"menu_related_pages.\";a:3:{s:12:\"templateName\";s:16:\"MenuRelatedPages\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:4:{s:7:\"special\";s:8:\"keywords\";s:8:\"special.\";a:2:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}s:20:\"excludeNoSearchPages\";s:1:\"1\";}s:23:\"alternativeSortingField\";s:5:\"title\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:41:\"tt_content: header [header_layout], pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:12:\"menu_sitemap\";s:20:\"< lib.contentElement\";s:13:\"menu_sitemap.\";a:3:{s:12:\"templateName\";s:11:\"MenuSitemap\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:4:{s:7:\"special\";s:4:\"list\";s:8:\"special.\";a:1:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}}s:6:\"levels\";s:1:\"7\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:41:\"tt_content: header [header_layout], pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:18:\"menu_sitemap_pages\";s:20:\"< lib.contentElement\";s:19:\"menu_sitemap_pages.\";a:3:{s:12:\"templateName\";s:16:\"MenuSitemapPages\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:4:{s:7:\"special\";s:9:\"directory\";s:8:\"special.\";a:1:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}}s:6:\"levels\";s:1:\"7\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:41:\"tt_content: header [header_layout], pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:18:\"form_formframework\";s:20:\"< lib.contentElement\";s:19:\"form_formframework.\";a:3:{s:12:\"templateName\";s:7:\"Generic\";i:20;s:4:\"USER\";s:3:\"20.\";a:4:{s:8:\"userFunc\";s:37:\"TYPO3\\CMS\\Extbase\\Core\\Bootstrap->run\";s:13:\"extensionName\";s:4:\"Form\";s:10:\"pluginName\";s:13:\"Formframework\";s:10:\"vendorName\";s:9:\"TYPO3\\CMS\";}}s:32:\"carashtheme_customcontentelement\";s:20:\"< lib.contentElement\";s:33:\"carashtheme_customcontentelement.\";a:3:{s:12:\"templateName\";s:7:\"Generic\";i:20;s:4:\"USER\";s:3:\"20.\";a:4:{s:8:\"userFunc\";s:37:\"TYPO3\\CMS\\Extbase\\Core\\Bootstrap->run\";s:13:\"extensionName\";s:11:\"Carashtheme\";s:10:\"pluginName\";s:20:\"CustomContentElement\";s:10:\"vendorName\";s:8:\"Machwert\";}}s:28:\"mwdummy_customcontentelement\";s:20:\"< lib.contentElement\";s:29:\"mwdummy_customcontentelement.\";a:3:{s:12:\"templateName\";s:7:\"Generic\";i:20;s:4:\"USER\";s:3:\"20.\";a:4:{s:8:\"userFunc\";s:37:\"TYPO3\\CMS\\Extbase\\Core\\Bootstrap->run\";s:13:\"extensionName\";s:7:\"MwDummy\";s:10:\"pluginName\";s:20:\"CustomContentElement\";s:10:\"vendorName\";s:8:\"Machwert\";}}s:17:\"mwdummy_slideshow\";s:3:\"COA\";s:18:\"mwdummy_slideshow.\";a:3:{i:10;s:15:\"< lib.stdheader\";i:20;s:13:\"FLUIDTEMPLATE\";s:3:\"20.\";a:3:{s:4:\"file\";s:69:\"EXT:mw_dummy/Resources/Private/Templates/CustomElement/Slideshow.html\";s:15:\"partialRootPath\";s:40:\"EXT:mw_dummy/Resources/Private/Partials/\";s:14:\"layoutRootPath\";s:39:\"EXT:mw_dummy/Resources/Private/Layouts/\";}}s:15:\"mwdummy_gallery\";s:3:\"COA\";s:16:\"mwdummy_gallery.\";a:3:{i:10;s:15:\"< lib.stdheader\";i:20;s:13:\"FLUIDTEMPLATE\";s:3:\"20.\";a:3:{s:4:\"file\";s:67:\"EXT:mw_dummy/Resources/Private/Templates/CustomElement/Gallery.html\";s:15:\"partialRootPath\";s:40:\"EXT:mw_dummy/Resources/Private/Partials/\";s:14:\"layoutRootPath\";s:39:\"EXT:mw_dummy/Resources/Private/Layouts/\";}}s:17:\"gridelements_pi1.\";a:2:{s:8:\"stdWrap.\";a:0:{}s:3:\"20.\";a:1:{s:3:\"10.\";a:1:{s:6:\"setup.\";a:5:{s:2:\"1.\";a:2:{s:7:\"cObject\";s:13:\"FLUIDTEMPLATE\";s:8:\"cObject.\";a:3:{s:4:\"file\";s:86:\"EXT:carashtheme/Resources/Private/Extensions/Gridelements/layout_container_single.html\";s:15:\"partialRootPath\";s:67:\"EXT:carashtheme/Resources/Private/Extensions/Gridelements/Partials/\";s:14:\"layoutRootPath\";s:66:\"EXT:carashtheme/Resources/Private/Extensions/Gridelements/Layouts/\";}}s:2:\"2.\";a:2:{s:7:\"cObject\";s:13:\"FLUIDTEMPLATE\";s:8:\"cObject.\";a:3:{s:4:\"file\";s:86:\"EXT:carashtheme/Resources/Private/Extensions/Gridelements/layout_container_double.html\";s:15:\"partialRootPath\";s:67:\"EXT:carashtheme/Resources/Private/Extensions/Gridelements/Partials/\";s:14:\"layoutRootPath\";s:66:\"EXT:carashtheme/Resources/Private/Extensions/Gridelements/Layouts/\";}}s:2:\"3.\";a:2:{s:7:\"cObject\";s:13:\"FLUIDTEMPLATE\";s:8:\"cObject.\";a:3:{s:4:\"file\";s:86:\"EXT:carashtheme/Resources/Private/Extensions/Gridelements/layout_container_triple.html\";s:15:\"partialRootPath\";s:67:\"EXT:carashtheme/Resources/Private/Extensions/Gridelements/Partials/\";s:14:\"layoutRootPath\";s:66:\"EXT:carashtheme/Resources/Private/Extensions/Gridelements/Layouts/\";}}s:2:\"4.\";a:2:{s:7:\"cObject\";s:13:\"FLUIDTEMPLATE\";s:8:\"cObject.\";a:3:{s:4:\"file\";s:89:\"EXT:carashtheme/Resources/Private/Extensions/Gridelements/layout_container_image_box.html\";s:15:\"partialRootPath\";s:67:\"EXT:carashtheme/Resources/Private/Extensions/Gridelements/Partials/\";s:14:\"layoutRootPath\";s:66:\"EXT:carashtheme/Resources/Private/Extensions/Gridelements/Layouts/\";}}s:2:\"5.\";a:2:{s:7:\"cObject\";s:13:\"FLUIDTEMPLATE\";s:8:\"cObject.\";a:3:{s:4:\"file\";s:84:\"EXT:carashtheme/Resources/Private/Extensions/Gridelements/layout_container_full.html\";s:15:\"partialRootPath\";s:67:\"EXT:carashtheme/Resources/Private/Extensions/Gridelements/Partials/\";s:14:\"layoutRootPath\";s:66:\"EXT:carashtheme/Resources/Private/Extensions/Gridelements/Layouts/\";}}}}}}s:10:\"fixed_text\";s:13:\"FLUIDTEMPLATE\";s:11:\"fixed_text.\";a:5:{s:12:\"templateName\";s:9:\"FixedText\";s:18:\"templateRootPaths.\";a:2:{i:0;s:59:\"EXT:carashtheme/Resources/Private/Extensions/Fsc/Templates/\";i:10;s:0:\"\";}s:17:\"partialRootPaths.\";a:2:{i:0;s:58:\"EXT:carashtheme/Resources/Private/Extensions/Fsc/Partials/\";i:10;s:0:\"\";}s:16:\"layoutRootPaths.\";a:2:{i:0;s:57:\"EXT:carashtheme/Resources/Private/Extensions/Fsc/Layouts/\";i:10;s:0:\"\";}s:9:\"settings.\";a:2:{s:17:\"defaultHeaderType\";s:1:\"2\";s:6:\"media.\";a:1:{s:6:\"popup.\";a:9:{s:7:\"bodyTag\";s:41:\"<body style=\"margin:0; background:#fff;\">\";s:4:\"wrap\";s:37:\"<a href=\"javascript:close();\"> | </a>\";s:5:\"width\";s:4:\"800m\";s:6:\"height\";s:4:\"600m\";s:5:\"crop.\";a:1:{s:4:\"data\";s:17:\"file:current:crop\";}s:8:\"JSwindow\";s:1:\"1\";s:9:\"JSwindow.\";a:2:{s:9:\"newWindow\";s:1:\"0\";s:3:\"if.\";a:1:{s:7:\"isFalse\";s:1:\"0\";}}s:15:\"directImageLink\";s:1:\"0\";s:11:\"linkParams.\";a:1:{s:11:\"ATagParams.\";a:1:{s:8:\"dataWrap\";s:44:\"class=\"lightbox\" rel=\"lightbox[{field:uid}]\"\";}}}}}}}s:7:\"plugin.\";a:5:{s:14:\"tx_felogin_pi1\";s:8:\"USER_INT\";s:15:\"tx_felogin_pi1.\";a:45:{s:8:\"userFunc\";s:58:\"TYPO3\\CMS\\Felogin\\Controller\\FrontendLoginController->main\";s:10:\"storagePid\";s:1:\"0\";s:9:\"recursive\";s:1:\"0\";s:12:\"templateFile\";s:58:\"EXT:felogin/Resources/Private/Templates/FrontendLogin.html\";s:14:\"feloginBaseURL\";s:0:\"\";s:10:\"dateFormat\";s:9:\"Y-m-d H:i\";s:22:\"showForgotPasswordLink\";s:1:\"0\";s:14:\"showPermaLogin\";s:1:\"0\";s:24:\"showLogoutFormAfterLogin\";s:1:\"0\";s:10:\"email_from\";s:0:\"\";s:14:\"email_fromName\";s:0:\"\";s:7:\"replyTo\";s:0:\"\";s:12:\"redirectMode\";s:0:\"\";s:19:\"redirectFirstMethod\";s:1:\"0\";s:17:\"redirectPageLogin\";s:1:\"0\";s:22:\"redirectPageLoginError\";s:1:\"0\";s:18:\"redirectPageLogout\";s:1:\"0\";s:15:\"redirectDisable\";s:1:\"0\";s:23:\"forgotLinkHashValidTime\";s:2:\"12\";s:20:\"newPasswordMinLength\";s:1:\"6\";s:7:\"domains\";s:0:\"\";s:43:\"exposeNonexistentUserInForgotPasswordDialog\";s:1:\"0\";s:22:\"wrapContentInBaseClass\";s:1:\"1\";s:11:\"linkConfig.\";a:2:{s:6:\"target\";s:0:\"\";s:10:\"ATagParams\";s:14:\"rel=\"nofollow\"\";}s:15:\"preserveGETvars\";s:3:\"all\";s:22:\"welcomeHeader_stdWrap.\";a:3:{s:8:\"required\";s:1:\"1\";s:4:\"wrap\";s:10:\"<h3>|</h3>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:22:\"successHeader_stdWrap.\";a:3:{s:8:\"required\";s:1:\"1\";s:4:\"wrap\";s:10:\"<h3>|</h3>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:21:\"logoutHeader_stdWrap.\";a:3:{s:8:\"required\";s:1:\"1\";s:4:\"wrap\";s:10:\"<h3>|</h3>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:20:\"errorHeader_stdWrap.\";a:3:{s:8:\"required\";s:1:\"1\";s:4:\"wrap\";s:10:\"<h3>|</h3>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:21:\"forgotHeader_stdWrap.\";a:3:{s:8:\"required\";s:1:\"1\";s:4:\"wrap\";s:10:\"<h3>|</h3>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:29:\"changePasswordHeader_stdWrap.\";a:3:{s:8:\"required\";s:1:\"1\";s:4:\"wrap\";s:10:\"<h3>|</h3>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:23:\"welcomeMessage_stdWrap.\";a:3:{s:8:\"required\";s:1:\"1\";s:4:\"wrap\";s:12:\"<div>|</div>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:23:\"successMessage_stdWrap.\";a:3:{s:8:\"required\";s:1:\"1\";s:4:\"wrap\";s:12:\"<div>|</div>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:22:\"logoutMessage_stdWrap.\";a:3:{s:8:\"required\";s:1:\"1\";s:4:\"wrap\";s:12:\"<div>|</div>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:21:\"errorMessage_stdWrap.\";a:3:{s:8:\"required\";s:1:\"1\";s:4:\"wrap\";s:12:\"<div>|</div>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:22:\"forgotMessage_stdWrap.\";a:3:{s:8:\"required\";s:1:\"1\";s:4:\"wrap\";s:12:\"<div>|</div>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:27:\"forgotErrorMessage_stdWrap.\";a:3:{s:8:\"required\";s:1:\"1\";s:4:\"wrap\";s:12:\"<div>|</div>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:43:\"forgotResetMessageEmailSentMessage_stdWrap.\";a:3:{s:8:\"required\";s:1:\"1\";s:4:\"wrap\";s:12:\"<div>|</div>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:38:\"changePasswordNotValidMessage_stdWrap.\";a:3:{s:8:\"required\";s:1:\"1\";s:4:\"wrap\";s:12:\"<div>|</div>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:38:\"changePasswordTooShortMessage_stdWrap.\";a:3:{s:8:\"required\";s:1:\"1\";s:4:\"wrap\";s:12:\"<div>|</div>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:38:\"changePasswordNotEqualMessage_stdWrap.\";a:3:{s:8:\"required\";s:1:\"1\";s:4:\"wrap\";s:12:\"<div>|</div>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:30:\"changePasswordMessage_stdWrap.\";a:3:{s:8:\"required\";s:1:\"1\";s:4:\"wrap\";s:12:\"<div>|</div>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:34:\"changePasswordDoneMessage_stdWrap.\";a:3:{s:8:\"required\";s:1:\"1\";s:4:\"wrap\";s:12:\"<div>|</div>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:22:\"cookieWarning_stdWrap.\";a:3:{s:8:\"required\";s:1:\"1\";s:4:\"wrap\";s:45:\"<p style=\"color:red; font-weight:bold;\">|</p>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:11:\"userfields.\";a:1:{s:9:\"username.\";a:2:{s:16:\"htmlSpecialChars\";s:1:\"1\";s:4:\"wrap\";s:18:\"<strong>|</strong>\";}}}s:8:\"tx_news.\";a:2:{s:5:\"view.\";a:3:{s:18:\"templateRootPaths.\";a:2:{i:0;s:74:\"EXT:mw_dummy/Resources/Private/Extensions/news/Resources/Private/Templates\";i:1;s:74:\"EXT:mw_dummy/Resources/Private/Extensions/news/Resources/Private/Templates\";}s:17:\"partialRootPaths.\";a:2:{i:0;s:73:\"EXT:mw_dummy/Resources/Private/Extensions/news/Resources/Private/Partials\";i:1;s:73:\"EXT:mw_dummy/Resources/Private/Extensions/news/Resources/Private/Partials\";}s:16:\"layoutRootPaths.\";a:1:{i:0;s:72:\"EXT:mw_dummy/Resources/Private/Extensions/news/Resources/Private/Layouts\";}}s:9:\"settings.\";a:3:{s:21:\"displayDummyIfNoMedia\";s:1:\"0\";s:7:\"detail.\";a:1:{s:22:\"showSocialShareButtons\";s:1:\"0\";}s:5:\"list.\";a:1:{s:9:\"paginate.\";a:1:{s:11:\"insertAbove\";s:1:\"0\";}}}}s:18:\"tx_cookieconsent2.\";a:1:{s:12:\"_LOCAL_LANG.\";a:1:{s:3:\"de.\";a:1:{s:7:\"message\";s:155:\"Cookies erleichtern die Bereitstellung unserer Dienste. Mit der Nutzung unserer Dienste erkl√§ren Sie sich damit einverstanden, dass wir Cookies verwenden.\";}}}s:7:\"tx_dce.\";a:1:{s:12:\"persistence.\";a:1:{s:10:\"storagePid\";s:1:\"0\";}}}s:4:\"lib.\";a:37:{s:14:\"contentElement\";s:13:\"FLUIDTEMPLATE\";s:15:\"contentElement.\";a:5:{s:12:\"templateName\";s:7:\"Default\";s:18:\"templateRootPaths.\";a:2:{i:0;s:53:\"EXT:fluid_styled_content/Resources/Private/Templates/\";i:10;s:0:\"\";}s:17:\"partialRootPaths.\";a:2:{i:0;s:52:\"EXT:fluid_styled_content/Resources/Private/Partials/\";i:10;s:0:\"\";}s:16:\"layoutRootPaths.\";a:2:{i:0;s:51:\"EXT:fluid_styled_content/Resources/Private/Layouts/\";i:10;s:0:\"\";}s:9:\"settings.\";a:2:{s:17:\"defaultHeaderType\";s:1:\"2\";s:6:\"media.\";a:1:{s:6:\"popup.\";a:9:{s:7:\"bodyTag\";s:41:\"<body style=\"margin:0; background:#fff;\">\";s:4:\"wrap\";s:37:\"<a href=\"javascript:close();\"> | </a>\";s:5:\"width\";s:4:\"800m\";s:6:\"height\";s:4:\"600m\";s:5:\"crop.\";a:1:{s:4:\"data\";s:17:\"file:current:crop\";}s:8:\"JSwindow\";s:1:\"1\";s:9:\"JSwindow.\";a:2:{s:9:\"newWindow\";s:1:\"0\";s:3:\"if.\";a:1:{s:7:\"isFalse\";s:1:\"0\";}}s:15:\"directImageLink\";s:1:\"0\";s:11:\"linkParams.\";a:1:{s:11:\"ATagParams.\";a:1:{s:8:\"dataWrap\";s:44:\"class=\"lightbox\" rel=\"lightbox[{field:uid}]\"\";}}}}}}s:12:\"fluidContent\";s:13:\"FLUIDTEMPLATE\";s:13:\"fluidContent.\";a:5:{s:12:\"templateName\";s:7:\"Default\";s:18:\"templateRootPaths.\";a:2:{i:0;s:59:\"EXT:carashtheme/Resources/Private/Extensions/Fsc/Templates/\";i:10;s:0:\"\";}s:17:\"partialRootPaths.\";a:2:{i:0;s:58:\"EXT:carashtheme/Resources/Private/Extensions/Fsc/Partials/\";i:10;s:0:\"\";}s:16:\"layoutRootPaths.\";a:2:{i:0;s:57:\"EXT:carashtheme/Resources/Private/Extensions/Fsc/Layouts/\";i:10;s:0:\"\";}s:9:\"settings.\";a:2:{s:17:\"defaultHeaderType\";s:1:\"2\";s:6:\"media.\";a:1:{s:6:\"popup.\";a:9:{s:7:\"bodyTag\";s:41:\"<body style=\"margin:0; background:#fff;\">\";s:4:\"wrap\";s:37:\"<a href=\"javascript:close();\"> | </a>\";s:5:\"width\";s:4:\"800m\";s:6:\"height\";s:4:\"600m\";s:5:\"crop.\";a:1:{s:4:\"data\";s:17:\"file:current:crop\";}s:8:\"JSwindow\";s:1:\"1\";s:9:\"JSwindow.\";a:2:{s:9:\"newWindow\";s:1:\"0\";s:3:\"if.\";a:1:{s:7:\"isFalse\";s:1:\"0\";}}s:15:\"directImageLink\";s:1:\"0\";s:11:\"linkParams.\";a:1:{s:11:\"ATagParams.\";a:1:{s:8:\"dataWrap\";s:44:\"class=\"lightbox\" rel=\"lightbox[{field:uid}]\"\";}}}}}}s:10:\"parseFunc.\";a:8:{s:9:\"makelinks\";s:1:\"1\";s:10:\"makelinks.\";a:2:{s:5:\"http.\";a:2:{s:4:\"keep\";s:4:\"path\";s:9:\"extTarget\";s:6:\"_blank\";}s:7:\"mailto.\";a:1:{s:4:\"keep\";s:4:\"path\";}}s:5:\"tags.\";a:4:{s:4:\"link\";s:4:\"TEXT\";s:5:\"link.\";a:3:{s:7:\"current\";s:1:\"1\";s:9:\"typolink.\";a:2:{s:10:\"parameter.\";a:1:{s:4:\"data\";s:22:\"parameters : allParams\";}s:9:\"extTarget\";s:6:\"_blank\";}s:10:\"parseFunc.\";a:1:{s:9:\"constants\";s:1:\"1\";}}s:1:\"a\";s:4:\"TEXT\";s:2:\"a.\";a:2:{s:7:\"current\";s:1:\"1\";s:9:\"typolink.\";a:6:{s:10:\"parameter.\";a:1:{s:4:\"data\";s:15:\"parameters:href\";}s:6:\"title.\";a:1:{s:4:\"data\";s:16:\"parameters:title\";}s:11:\"ATagParams.\";a:1:{s:4:\"data\";s:20:\"parameters:allParams\";}s:7:\"target.\";a:1:{s:4:\"data\";s:17:\"parameters:target\";}s:9:\"extTarget\";s:6:\"_blank\";s:10:\"extTarget.\";a:1:{s:9:\"override.\";a:1:{s:4:\"data\";s:17:\"parameters:target\";}}}}}s:9:\"allowTags\";s:389:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer, header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, samp, sdfield, section, small, span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:8:\"denyTags\";s:1:\"*\";s:5:\"sword\";s:31:\"<span class=\"ce-sword\">|</span>\";s:9:\"constants\";s:1:\"1\";s:18:\"nonTypoTagStdWrap.\";a:2:{s:10:\"HTMLparser\";s:1:\"1\";s:11:\"HTMLparser.\";a:2:{s:18:\"keepNonMatchedTags\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"2\";}}}s:14:\"parseFunc_RTE.\";a:10:{s:9:\"makelinks\";s:1:\"1\";s:10:\"makelinks.\";a:2:{s:5:\"http.\";a:2:{s:4:\"keep\";s:4:\"path\";s:9:\"extTarget\";s:6:\"_blank\";}s:7:\"mailto.\";a:1:{s:4:\"keep\";s:4:\"path\";}}s:5:\"tags.\";a:4:{s:4:\"link\";s:4:\"TEXT\";s:5:\"link.\";a:3:{s:7:\"current\";s:1:\"1\";s:9:\"typolink.\";a:2:{s:10:\"parameter.\";a:1:{s:4:\"data\";s:22:\"parameters : allParams\";}s:9:\"extTarget\";s:6:\"_blank\";}s:10:\"parseFunc.\";a:1:{s:9:\"constants\";s:1:\"1\";}}s:1:\"a\";s:4:\"TEXT\";s:2:\"a.\";a:2:{s:7:\"current\";s:1:\"1\";s:9:\"typolink.\";a:6:{s:10:\"parameter.\";a:1:{s:4:\"data\";s:15:\"parameters:href\";}s:6:\"title.\";a:1:{s:4:\"data\";s:16:\"parameters:title\";}s:11:\"ATagParams.\";a:1:{s:4:\"data\";s:20:\"parameters:allParams\";}s:7:\"target.\";a:1:{s:4:\"data\";s:17:\"parameters:target\";}s:9:\"extTarget\";s:6:\"_blank\";s:10:\"extTarget.\";a:1:{s:9:\"override.\";a:1:{s:4:\"data\";s:17:\"parameters:target\";}}}}}s:9:\"allowTags\";s:389:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer, header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, samp, sdfield, section, small, span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:8:\"denyTags\";s:1:\"*\";s:5:\"sword\";s:31:\"<span class=\"ce-sword\">|</span>\";s:9:\"constants\";s:1:\"1\";s:18:\"nonTypoTagStdWrap.\";a:3:{s:10:\"HTMLparser\";s:1:\"1\";s:11:\"HTMLparser.\";a:2:{s:18:\"keepNonMatchedTags\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"2\";}s:12:\"encapsLines.\";a:4:{s:13:\"encapsTagList\";s:29:\"p,pre,h1,h2,h3,h4,h5,h6,hr,dt\";s:9:\"remapTag.\";a:1:{s:3:\"DIV\";s:1:\"P\";}s:13:\"nonWrappedTag\";s:1:\"P\";s:17:\"innerStdWrap_all.\";a:1:{s:7:\"ifBlank\";s:6:\"&nbsp;\";}}}s:14:\"externalBlocks\";s:89:\"article, aside, blockquote, div, dd, dl, footer, header, nav, ol, section, table, ul, pre\";s:15:\"externalBlocks.\";a:13:{s:3:\"ol.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:8:\"stdWrap.\";a:1:{s:9:\"parseFunc\";s:15:\"< lib.parseFunc\";}}s:3:\"ul.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:8:\"stdWrap.\";a:1:{s:9:\"parseFunc\";s:15:\"< lib.parseFunc\";}}s:6:\"table.\";a:4:{s:7:\"stripNL\";s:1:\"1\";s:8:\"stdWrap.\";a:2:{s:10:\"HTMLparser\";s:1:\"1\";s:11:\"HTMLparser.\";a:2:{s:5:\"tags.\";a:1:{s:6:\"table.\";a:1:{s:10:\"fixAttrib.\";a:1:{s:6:\"class.\";a:3:{s:7:\"default\";s:12:\"contenttable\";s:6:\"always\";s:1:\"1\";s:4:\"list\";s:12:\"contenttable\";}}}}s:18:\"keepNonMatchedTags\";s:1:\"1\";}}s:14:\"HTMLtableCells\";s:1:\"1\";s:15:\"HTMLtableCells.\";a:2:{s:8:\"default.\";a:1:{s:8:\"stdWrap.\";a:2:{s:9:\"parseFunc\";s:19:\"< lib.parseFunc_RTE\";s:10:\"parseFunc.\";a:1:{s:18:\"nonTypoTagStdWrap.\";a:1:{s:12:\"encapsLines.\";a:1:{s:13:\"nonWrappedTag\";s:0:\"\";}}}}}s:25:\"addChr10BetweenParagraphs\";s:1:\"1\";}}s:4:\"div.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:8:\"article.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:6:\"aside.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:11:\"blockquote.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:7:\"footer.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:7:\"header.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:4:\"nav.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:8:\"section.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:3:\"dl.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:3:\"dd.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}}}s:7:\"mainnav\";s:3:\"COA\";s:8:\"mainnav.\";a:2:{i:10;s:5:\"HMENU\";s:3:\"10.\";a:2:{i:1;s:5:\"TMENU\";s:2:\"1.\";a:7:{s:6:\"noBlur\";s:1:\"1\";s:6:\"expAll\";s:1:\"0\";s:3:\"NO.\";a:4:{s:7:\"before.\";a:1:{s:4:\"wrap\";s:5:\"<li>|\";}s:6:\"after.\";a:1:{s:4:\"wrap\";s:6:\"|</li>\";}s:11:\"doNotLinkIt\";s:1:\"1\";s:8:\"stdWrap.\";a:2:{s:7:\"cObject\";s:3:\"COA\";s:8:\"cObject.\";a:5:{s:8:\"stdWrap.\";a:1:{s:9:\"typolink.\";a:1:{s:10:\"parameter.\";a:1:{s:5:\"field\";s:3:\"uid\";}}}i:10;s:5:\"FILES\";s:3:\"10.\";a:4:{s:11:\"references.\";a:2:{s:5:\"table\";s:5:\"pages\";s:9:\"fieldName\";s:5:\"media\";}s:9:\"renderObj\";s:5:\"IMAGE\";s:10:\"renderObj.\";a:2:{s:5:\"file.\";a:3:{s:5:\"width\";s:3:\"30c\";s:6:\"height\";s:3:\"30c\";s:7:\"import.\";a:1:{s:4:\"data\";s:22:\"file:current:publicUrl\";}}s:8:\"altText.\";a:1:{s:5:\"field\";s:5:\"title\";}}s:8:\"stdWrap.\";a:2:{s:8:\"ifEmpty.\";a:2:{s:7:\"cObject\";s:5:\"IMAGE\";s:8:\"cObject.\";a:2:{s:4:\"file\";s:52:\"EXT:mw_dummy/Resources/Public/Icons/icon_default.svg\";s:5:\"file.\";a:2:{s:6:\"height\";s:3:\"30c\";s:5:\"width\";s:3:\"30c\";}}}s:4:\"wrap\";s:32:\"<span class=\"menu-icon\">|</span>\";}}i:20;s:4:\"TEXT\";s:3:\"20.\";a:2:{s:5:\"field\";s:5:\"title\";s:4:\"wrap\";s:32:\"<span class=\"menu-text\">|</span>\";}}}}s:3:\"ACT\";s:1:\"1\";s:4:\"ACT.\";a:5:{s:14:\"wrapItemAndSub\";s:10:\"<li>|</li>\";s:15:\"wrapItemAndSub.\";a:1:{s:10:\"insertData\";s:1:\"1\";}s:10:\"ATagTitle.\";a:1:{s:5:\"field\";s:32:\"abstract // description // title\";}s:10:\"ATagParams\";s:12:\"class=\"hier\"\";s:8:\"stdWrap.\";a:1:{s:16:\"htmlSpecialChars\";s:1:\"1\";}}s:3:\"CUR\";s:1:\"1\";s:4:\"CUR.\";a:5:{s:14:\"wrapItemAndSub\";s:10:\"<li>|</li>\";s:15:\"wrapItemAndSub.\";a:1:{s:10:\"insertData\";s:1:\"1\";}s:10:\"ATagTitle.\";a:1:{s:5:\"field\";s:32:\"abstract // description // title\";}s:10:\"ATagParams\";s:12:\"class=\"hier\"\";s:8:\"stdWrap.\";a:1:{s:16:\"htmlSpecialChars\";s:1:\"1\";}}}}}s:12:\"canonicalTag\";s:4:\"TEXT\";s:13:\"canonicalTag.\";a:2:{s:9:\"typolink.\";a:6:{s:9:\"parameter\";s:10:\"{page:uid}\";s:10:\"parameter.\";a:1:{s:10:\"insertData\";s:1:\"1\";}s:12:\"useCacheHash\";s:1:\"0\";s:14:\"addQueryString\";s:1:\"1\";s:15:\"addQueryString.\";a:2:{s:6:\"method\";s:3:\"GET\";s:7:\"exclude\";s:8:\"id,cHash\";}s:10:\"returnLast\";s:3:\"url\";}s:4:\"wrap\";s:23:\"http://www.iteratec.de|\";}s:12:\"contentStage\";s:3:\"COA\";s:13:\"contentStage.\";a:4:{i:5;s:4:\"TEXT\";s:2:\"5.\";a:1:{s:5:\"value\";s:32:\"<div class=\"stageoverlay\"></div>\";}i:10;s:3:\"COA\";s:3:\"10.\";a:5:{s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:101:\"<div class=\"stageinnerwrapper\"><div class=\"stageinner\"><div class=\"stagecontents\">|</div></div></div>\";}i:10;s:4:\"TEXT\";s:3:\"10.\";a:5:{s:9:\"typolink.\";a:1:{s:10:\"parameter.\";a:1:{s:4:\"data\";s:13:\"leveluid : -2\";}}s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:26:\"<i class=\"icon-left\"></i>|\";}s:4:\"wrap\";s:35:\"<div class=\"stagesubheader\">|</div>\";s:4:\"data\";s:48:\"levelfield:-2, nav_title // levelfield:-2, title\";s:10:\"insertData\";s:1:\"1\";}i:20;s:4:\"TEXT\";s:3:\"20.\";a:3:{s:5:\"field\";s:18:\"nav_title // title\";s:4:\"wrap\";s:30:\"<h1 class=\"stageheader\">|</h1>\";s:16:\"htmlSpecialChars\";s:1:\"0\";}}}s:7:\"toplogo\";s:4:\"TEXT\";s:8:\"toplogo.\";a:2:{s:5:\"value\";s:112:\"<img src=\"typo3conf/ext/mw_dummy/Resources/Public/Images/logo_machwert.svg\" alt=\"Logo\" title=\"zur Startseite\" />\";s:9:\"typolink.\";a:1:{s:9:\"parameter\";s:1:\"2\";}}s:10:\"breadcrumb\";s:5:\"HMENU\";s:11:\"breadcrumb.\";a:4:{s:7:\"special\";s:8:\"rootline\";s:8:\"special.\";a:1:{s:5:\"range\";s:4:\"1|-1\";}i:1;s:5:\"TMENU\";s:2:\"1.\";a:6:{s:6:\"noBlur\";s:1:\"1\";s:3:\"NO.\";a:2:{s:7:\"allWrap\";s:139:\"|  &nbsp;&nbsp; <i class=\"fa fa-angle-right\"></i> &nbsp;&nbsp;   |*|  |  &nbsp;&nbsp; <i class=\"fa fa-angle-right\"></i> &nbsp;&nbsp;  |*| |\";s:8:\"stdWrap.\";a:1:{s:16:\"htmlSpecialChars\";s:1:\"1\";}}s:3:\"ACT\";s:1:\"1\";s:4:\"ACT.\";a:2:{s:7:\"allWrap\";s:220:\"<span class=\"act\">  | </span>&nbsp;&nbsp;<i class=\"fa fa-angle-right\"></i>&nbsp;&nbsp;    |*|  <span class=\"act\">  | </span>   &nbsp;&nbsp;<i class=\"fa fa-angle-right\"></i>&nbsp;&nbsp;   |*| <span class=\"act\">  | </span>\";s:8:\"stdWrap.\";a:1:{s:16:\"htmlSpecialChars\";s:1:\"1\";}}s:3:\"CUR\";s:1:\"1\";s:4:\"CUR.\";a:3:{s:7:\"allWrap\";s:220:\"<span class=\"cur\">  | </span>&nbsp;&nbsp;<i class=\"fa fa-angle-right\"></i>&nbsp;&nbsp;    |*|  <span class=\"cur\">  | </span>   &nbsp;&nbsp;<i class=\"fa fa-angle-right\"></i>&nbsp;&nbsp;   |*| <span class=\"cur\">  | </span>\";s:8:\"stdWrap.\";a:1:{s:16:\"htmlSpecialChars\";s:1:\"1\";}s:11:\"doNotLinkIt\";s:1:\"1\";}}}s:10:\"pageheader\";s:4:\"TEXT\";s:11:\"pageheader.\";a:3:{s:5:\"value\";s:15:\"{leveltitle:-1}\";s:10:\"insertData\";s:1:\"1\";s:4:\"wrap\";s:10:\"<h1>|</h1>\";}s:6:\"footer\";s:3:\"COA\";s:7:\"footer.\";a:0:{}s:4:\"lang\";s:5:\"HMENU\";s:5:\"lang.\";a:4:{s:7:\"special\";s:8:\"language\";s:8:\"special.\";a:2:{s:5:\"value\";s:3:\"1,0\";s:20:\"normalWhenNoLanguage\";s:1:\"0\";}i:1;s:5:\"TMENU\";s:2:\"1.\";a:9:{s:6:\"noBlur\";s:1:\"1\";s:2:\"NO\";s:1:\"1\";s:3:\"NO.\";a:3:{s:8:\"linkWrap\";s:73:\"<li class=\"lang langeng\">|</li>||<li class=\"lang langde hier last\">|</li>\";s:8:\"stdWrap.\";a:2:{s:8:\"override\";s:6:\"EN||DE\";s:9:\"typolink.\";a:6:{s:10:\"parameter.\";a:1:{s:4:\"data\";s:8:\"page:uid\";}s:16:\"additionalParams\";s:10:\"&L=1||&L=0\";s:14:\"addQueryString\";s:1:\"1\";s:15:\"addQueryString.\";a:2:{s:7:\"exclude\";s:19:\"L,id,cHash,no_cache\";s:6:\"method\";s:3:\"GET\";}s:12:\"useCacheHash\";s:1:\"1\";s:8:\"no_cache\";s:1:\"0\";}}s:11:\"doNotLinkIt\";s:1:\"1\";}s:3:\"ACT\";s:1:\"1\";s:4:\"ACT.\";a:3:{s:8:\"linkWrap\";s:73:\"<li class=\"lang langeng\">|</li>||<li class=\"lang langde hier last\">|</li>\";s:8:\"stdWrap.\";a:2:{s:8:\"override\";s:6:\"EN||DE\";s:9:\"typolink.\";a:6:{s:10:\"parameter.\";a:1:{s:4:\"data\";s:8:\"page:uid\";}s:16:\"additionalParams\";s:10:\"&L=1||&L=0\";s:14:\"addQueryString\";s:1:\"1\";s:15:\"addQueryString.\";a:2:{s:7:\"exclude\";s:19:\"L,id,cHash,no_cache\";s:6:\"method\";s:3:\"GET\";}s:12:\"useCacheHash\";s:1:\"1\";s:8:\"no_cache\";s:1:\"0\";}}s:11:\"doNotLinkIt\";s:1:\"1\";}s:8:\"USERDEF1\";s:1:\"1\";s:9:\"USERDEF1.\";a:3:{s:8:\"linkWrap\";s:73:\"<li class=\"lang langeng\">|</li>||<li class=\"lang langde hier last\">|</li>\";s:8:\"stdWrap.\";a:2:{s:8:\"override\";s:6:\"EN||DE\";s:9:\"typolink.\";a:6:{s:10:\"parameter.\";a:1:{s:4:\"data\";s:8:\"page:uid\";}s:16:\"additionalParams\";s:10:\"&L=1||&L=0\";s:14:\"addQueryString\";s:1:\"1\";s:15:\"addQueryString.\";a:2:{s:7:\"exclude\";s:19:\"L,id,cHash,no_cache\";s:6:\"method\";s:3:\"GET\";}s:12:\"useCacheHash\";s:1:\"1\";s:8:\"no_cache\";s:1:\"0\";}}s:11:\"doNotLinkIt\";s:1:\"1\";}s:8:\"USERDEF2\";s:1:\"1\";s:9:\"USERDEF2.\";a:3:{s:8:\"linkWrap\";s:73:\"<li class=\"lang langeng\">|</li>||<li class=\"lang langde hier last\">|</li>\";s:8:\"stdWrap.\";a:2:{s:8:\"override\";s:6:\"EN||DE\";s:9:\"typolink.\";a:6:{s:10:\"parameter.\";a:1:{s:4:\"data\";s:8:\"page:uid\";}s:16:\"additionalParams\";s:10:\"&L=1||&L=0\";s:14:\"addQueryString\";s:1:\"1\";s:15:\"addQueryString.\";a:2:{s:7:\"exclude\";s:19:\"L,id,cHash,no_cache\";s:6:\"method\";s:3:\"GET\";}s:12:\"useCacheHash\";s:1:\"1\";s:8:\"no_cache\";s:1:\"0\";}}s:11:\"doNotLinkIt\";s:1:\"1\";}}}s:6:\"whoami\";s:4:\"TEXT\";s:7:\"whoami.\";a:0:{}s:12:\"whoamifooter\";s:4:\"TEXT\";s:13:\"whoamifooter.\";a:1:{s:5:\"value\";s:10:\"footer_std\";}s:7:\"sideNav\";s:3:\"COA\";s:8:\"sideNav.\";a:2:{i:10;s:5:\"HMENU\";s:3:\"10.\";a:2:{i:1;s:5:\"TMENU\";s:2:\"1.\";a:7:{s:6:\"noBlur\";s:1:\"1\";s:6:\"expAll\";s:1:\"0\";s:3:\"NO.\";a:4:{s:7:\"before.\";a:1:{s:4:\"wrap\";s:5:\"<li>|\";}s:6:\"after.\";a:1:{s:4:\"wrap\";s:6:\"|</li>\";}s:11:\"doNotLinkIt\";s:1:\"1\";s:8:\"stdWrap.\";a:2:{s:7:\"cObject\";s:3:\"COA\";s:8:\"cObject.\";a:5:{s:8:\"stdWrap.\";a:1:{s:9:\"typolink.\";a:1:{s:10:\"parameter.\";a:1:{s:5:\"field\";s:3:\"uid\";}}}i:10;s:5:\"FILES\";s:3:\"10.\";a:4:{s:11:\"references.\";a:2:{s:5:\"table\";s:5:\"pages\";s:9:\"fieldName\";s:5:\"media\";}s:9:\"renderObj\";s:5:\"IMAGE\";s:10:\"renderObj.\";a:2:{s:5:\"file.\";a:3:{s:5:\"width\";s:3:\"30c\";s:6:\"height\";s:3:\"30c\";s:7:\"import.\";a:1:{s:4:\"data\";s:22:\"file:current:publicUrl\";}}s:8:\"altText.\";a:1:{s:5:\"field\";s:5:\"title\";}}s:8:\"stdWrap.\";a:2:{s:8:\"ifEmpty.\";a:2:{s:7:\"cObject\";s:5:\"IMAGE\";s:8:\"cObject.\";a:2:{s:4:\"file\";s:52:\"EXT:mw_dummy/Resources/Public/Icons/icon_default.svg\";s:5:\"file.\";a:2:{s:6:\"height\";s:3:\"30c\";s:5:\"width\";s:3:\"30c\";}}}s:4:\"wrap\";s:32:\"<span class=\"menu-icon\">|</span>\";}}i:20;s:4:\"TEXT\";s:3:\"20.\";a:2:{s:5:\"field\";s:5:\"title\";s:4:\"wrap\";s:32:\"<span class=\"menu-text\">|</span>\";}}}}s:3:\"ACT\";s:1:\"1\";s:4:\"ACT.\";a:5:{s:14:\"wrapItemAndSub\";s:10:\"<li>|</li>\";s:15:\"wrapItemAndSub.\";a:1:{s:10:\"insertData\";s:1:\"1\";}s:10:\"ATagTitle.\";a:1:{s:5:\"field\";s:32:\"abstract // description // title\";}s:10:\"ATagParams\";s:12:\"class=\"hier\"\";s:8:\"stdWrap.\";a:1:{s:16:\"htmlSpecialChars\";s:1:\"1\";}}s:3:\"CUR\";s:1:\"1\";s:4:\"CUR.\";a:5:{s:14:\"wrapItemAndSub\";s:10:\"<li>|</li>\";s:15:\"wrapItemAndSub.\";a:1:{s:10:\"insertData\";s:1:\"1\";}s:10:\"ATagTitle.\";a:1:{s:5:\"field\";s:32:\"abstract // description // title\";}s:10:\"ATagParams\";s:12:\"class=\"hier\"\";s:8:\"stdWrap.\";a:1:{s:16:\"htmlSpecialChars\";s:1:\"1\";}}}}}s:7:\"ll_date\";s:4:\"TEXT\";s:8:\"ll_date.\";a:2:{s:7:\"current\";s:1:\"1\";s:8:\"strftime\";s:8:\"%d.%m.%Y\";}s:12:\"newsListLink\";s:4:\"TEXT\";s:13:\"newsListLink.\";a:3:{s:5:\"value\";s:9:\"mehr News\";s:9:\"typolink.\";a:1:{s:9:\"parameter\";s:2:\"36\";}s:4:\"wrap\";s:33:\"<div class=\"newsListLink\">|</div>\";}s:13:\"eventListLink\";s:4:\"TEXT\";s:14:\"eventListLink.\";a:3:{s:5:\"value\";s:11:\"mehr Events\";s:9:\"typolink.\";a:1:{s:9:\"parameter\";s:2:\"37\";}s:4:\"wrap\";s:33:\"<div class=\"newsListLink\">|</div>\";}s:10:\"stdheader.\";a:1:{s:3:\"10.\";a:4:{s:11:\"setCurrent.\";a:1:{s:16:\"htmlSpecialChars\";s:1:\"0\";}s:2:\"6.\";a:1:{s:8:\"dataWrap\";s:28:\"<h2 class=\"boxheader\">|</h2>\";}s:2:\"7.\";a:1:{s:8:\"dataWrap\";s:28:\"<h3 class=\"boxheader\">|</h3>\";}s:3:\"12.\";a:1:{s:8:\"dataWrap\";s:23:\"<div class=\"h1\">|</div>\";}}}s:7:\"twitter\";s:8:\"USER_INT\";s:8:\"twitter.\";a:3:{s:11:\"includeLibs\";s:56:\"EXT:mw_dummy/Resources/Public/Userfuncs/tweedintypo3.php\";s:8:\"userFunc\";s:15:\"getTweetsInHtml\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:49:\"<div class=\"twitterfeed swiper-container\">|</div>\";}}}s:5:\"page.\";a:10:{s:11:\"includeCSS.\";a:5:{s:8:\"testLess\";s:58:\"EXT:mw_dummy/Resources/Public/Stylesheets/main_styles.less\";s:5:\"file9\";s:75:\"https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css\";s:6:\"file9.\";a:1:{s:8:\"external\";s:1:\"1\";}s:6:\"file50\";s:12:\"{$customCss}\";s:11:\"carashtheme\";s:61:\"EXT:carashtheme/Resources/Public/Stylesheets/main_styles.less\";}s:12:\"shortcutIcon\";s:50:\"EXT:carashtheme/Resources/Public/Icons/favicon.ico\";s:14:\"bodyTagCObject\";s:4:\"TEXT\";s:15:\"bodyTagCObject.\";a:1:{s:5:\"value\";s:563:\"<body><noscript><iframe src=\"//www.googletagmanager.com/ns.html?id=GTM-KVZZWT\" height= \"0\" width= \"0\" style= \"display:none;visibility:hidden\" > </iframe></noscript> <script>(function(w, d, s, l, i) { w[l] = w[l] || []; w[l].push({ \'gtm.start\': new Date().getTime(), event: \'gtm.js\' }); var f = d.getElementsByTagName(s)[0], j = d.createElement(s), dl = l != \'dataLayer\' ? \'&l=\' + l : \'\'; j.async = true; j.src = \'//www.googletagmanager.com/gtm.js?id=\' + i + dl; f.parentNode.insertBefore(j, f); })(window, document, \'script\', \'dataLayer\', \'GTM-KVZZWT\'); </script>\";}s:11:\"headerData.\";a:8:{i:15;s:3:\"COA\";s:3:\"15.\";a:18:{i:5;s:4:\"TEXT\";s:2:\"5.\";a:1:{s:5:\"value\";s:111:\"        <meta name=\"twitter:card\" content=\"summary\" />\n        <meta name=\"twitter:site\" content=\"@iteratec\" />\";}i:6;s:4:\"TEXT\";s:2:\"6.\";a:1:{s:5:\"value\";s:45:\"<meta property=\"og:type\" content=\"website\" />\";}i:20;s:4:\"TEXT\";s:3:\"20.\";a:1:{s:5:\"value\";s:36:\"\n<meta property=\"og:title\" content=\"\";}i:30;s:4:\"TEXT\";s:3:\"30.\";a:1:{s:4:\"data\";s:10:\"page:title\";}i:40;s:4:\"TEXT\";s:3:\"40.\";a:1:{s:5:\"value\";s:3:\"\"/>\";}i:50;s:4:\"TEXT\";s:3:\"50.\";a:1:{s:5:\"value\";s:51:\"\n<meta property=\"og:site_name\" content=\"iteratec\"/>\";}i:60;s:4:\"TEXT\";s:3:\"60.\";a:1:{s:5:\"value\";s:42:\"\n<meta property=\"og:description\" content=\"\";}i:70;s:4:\"TEXT\";s:3:\"70.\";a:1:{s:4:\"data\";s:16:\"page:description\";}i:80;s:4:\"TEXT\";s:3:\"80.\";a:1:{s:5:\"value\";s:3:\"\"/>\";}}i:16;s:3:\"COA\";s:3:\"16.\";a:6:{i:90;s:4:\"TEXT\";s:3:\"90.\";a:1:{s:5:\"value\";s:34:\"\n<meta property=\"og:url\" content=\"\";}i:100;s:4:\"TEXT\";s:4:\"100.\";a:2:{s:9:\"typolink.\";a:6:{s:9:\"parameter\";s:10:\"{page:uid}\";s:10:\"parameter.\";a:1:{s:10:\"insertData\";s:1:\"1\";}s:12:\"useCacheHash\";s:1:\"0\";s:14:\"addQueryString\";s:1:\"1\";s:15:\"addQueryString.\";a:2:{s:6:\"method\";s:3:\"GET\";s:7:\"exclude\";s:8:\"id,cHash\";}s:10:\"returnLast\";s:3:\"url\";}s:4:\"wrap\";s:23:\"http://www.iteratec.de|\";}i:110;s:4:\"TEXT\";s:4:\"110.\";a:1:{s:5:\"value\";s:4:\"\"/>\n\";}}i:42;s:3:\"COA\";s:3:\"42.\";a:6:{i:10;s:4:\"TEXT\";s:3:\"10.\";a:1:{s:5:\"value\";s:28:\"<link rel=\"canonical\" href=\"\";}i:20;s:4:\"TEXT\";s:3:\"20.\";a:2:{s:9:\"typolink.\";a:6:{s:9:\"parameter\";s:10:\"{page:uid}\";s:10:\"parameter.\";a:1:{s:10:\"insertData\";s:1:\"1\";}s:12:\"useCacheHash\";s:1:\"0\";s:14:\"addQueryString\";s:1:\"1\";s:15:\"addQueryString.\";a:2:{s:6:\"method\";s:3:\"GET\";s:7:\"exclude\";s:8:\"id,cHash\";}s:10:\"returnLast\";s:3:\"url\";}s:4:\"wrap\";s:23:\"http://www.iteratec.de|\";}i:30;s:4:\"TEXT\";s:3:\"30.\";a:1:{s:5:\"value\";s:5:\"\" />\n\";}}i:989898537;s:4:\"TEXT\";s:10:\"989898537.\";a:1:{s:5:\"value\";s:107:\"<!--[if lt IE 9]>\n  <script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\n<![endif]-->\";}}i:10;s:13:\"FLUIDTEMPLATE\";s:3:\"10.\";a:4:{s:15:\"partialRootPath\";s:42:\"EXT:carashtheme/Resources/Private/Partials\";s:14:\"layoutRootPath\";s:41:\"EXT:carashtheme/Resources/Private/Layouts\";s:5:\"file.\";a:1:{s:8:\"stdWrap.\";a:2:{s:7:\"cObject\";s:4:\"CASE\";s:8:\"cObject.\";a:13:{s:4:\"key.\";a:2:{s:4:\"data\";s:47:\"levelfield:-1, backend_layout_next_level, slide\";s:9:\"override.\";a:1:{s:5:\"field\";s:14:\"backend_layout\";}}s:9:\"pagets__1\";s:4:\"TEXT\";s:10:\"pagets__1.\";a:1:{s:5:\"value\";s:62:\"EXT:carashtheme/Resources/Private/Templates/StartTemplate.html\";}s:9:\"pagets__2\";s:4:\"TEXT\";s:10:\"pagets__2.\";a:1:{s:5:\"value\";s:64:\"EXT:carashtheme/Resources/Private/Templates/ContentTemplate.html\";}s:9:\"pagets__3\";s:4:\"TEXT\";s:10:\"pagets__3.\";a:1:{s:5:\"value\";s:65:\"EXT:carashtheme/Resources/Private/Templates/OverviewTemplate.html\";}s:9:\"pagets__4\";s:4:\"TEXT\";s:10:\"pagets__4.\";a:1:{s:5:\"value\";s:62:\"EXT:carashtheme/Resources/Private/Templates/StartTemplate.html\";}s:9:\"pagets__5\";s:4:\"TEXT\";s:10:\"pagets__5.\";a:1:{s:5:\"value\";s:64:\"EXT:carashtheme/Resources/Private/Templates/ContentTemplate.html\";}s:7:\"default\";s:4:\"TEXT\";s:8:\"default.\";a:1:{s:5:\"value\";s:64:\"EXT:carashtheme/Resources/Private/Templates/DefaultTemplate.html\";}}}}s:10:\"variables.\";a:4:{s:11:\"mainContent\";s:4:\"CASE\";s:12:\"mainContent.\";a:11:{s:4:\"key.\";a:2:{s:5:\"field\";s:14:\"backend_layout\";s:8:\"ifEmpty.\";a:1:{s:4:\"data\";s:47:\"levelfield:-2, backend_layout_next_level, slide\";}}s:9:\"pagets__1\";s:3:\"COA\";s:10:\"pagets__1.\";a:4:{i:10;s:7:\"CONTENT\";s:3:\"10.\";a:3:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:2:{s:7:\"orderBy\";s:7:\"sorting\";s:5:\"where\";s:10:\"colPos = 1\";}s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:96:\"<div class=\"stagewrapper stage_start swiper-container\"><div class=\"swiper-wrapper\">|</div></div>\";}}i:20;s:3:\"COA\";s:3:\"20.\";a:11:{s:4:\"wrap\";s:35:\"<main class=\"maincontents\">|</main>\";i:10;s:7:\"CONTENT\";s:3:\"10.\";a:3:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:2:{s:7:\"orderBy\";s:7:\"sorting\";s:5:\"where\";s:10:\"colPos = 2\";}s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:96:\"<section class=\"outer\"><div class=\"inner innerstart\"><div class=\"startbox col4 cepurple\">|</div>\";}}i:20;s:7:\"CONTENT\";s:3:\"20.\";a:3:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:2:{s:7:\"orderBy\";s:7:\"sorting\";s:5:\"where\";s:10:\"colPos = 3\";}s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:62:\"<div class=\"startbox col8 last cegray\">|</div></div></section>\";}}i:30;s:7:\"CONTENT\";s:3:\"30.\";a:3:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:2:{s:7:\"orderBy\";s:7:\"sorting\";s:5:\"where\";s:10:\"colPos = 4\";}s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:134:\"<section class=\"outer\"><div class=\"inner innerstart centered twitter_wrapper\"><div class=\"startbox col10 last\">|</div></div></section>\";}}i:40;s:7:\"CONTENT\";s:3:\"40.\";a:3:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:2:{s:7:\"orderBy\";s:7:\"sorting\";s:5:\"where\";s:10:\"colPos = 5\";}s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:103:\"<section class=\"outer\"><div class=\"inner innerstart centered\"><div class=\"startbox col6 ceblue\">|</div>\";}}i:50;s:7:\"CONTENT\";s:3:\"50.\";a:3:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:2:{s:7:\"orderBy\";s:7:\"sorting\";s:5:\"where\";s:10:\"colPos = 6\";}s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:64:\"<div class=\"startbox col6 last cepurple\">|</div></div></section>\";}}}}s:9:\"pagets__2\";s:3:\"COA\";s:10:\"pagets__2.\";a:8:{i:10;s:7:\"CONTENT\";s:3:\"10.\";a:3:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:2:{s:7:\"orderBy\";s:7:\"sorting\";s:5:\"where\";s:10:\"colPos = 1\";}s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:91:\"<div class=\"stagewrapper stage_content\"><div class=\"stage\" style=\"background-image:url(|)\">\";}}i:15;s:3:\"COA\";s:3:\"15.\";a:4:{i:5;s:4:\"TEXT\";s:2:\"5.\";a:1:{s:5:\"value\";s:32:\"<div class=\"stageoverlay\"></div>\";}i:10;s:3:\"COA\";s:3:\"10.\";a:5:{s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:101:\"<div class=\"stageinnerwrapper\"><div class=\"stageinner\"><div class=\"stagecontents\">|</div></div></div>\";}i:10;s:4:\"TEXT\";s:3:\"10.\";a:5:{s:9:\"typolink.\";a:1:{s:10:\"parameter.\";a:1:{s:4:\"data\";s:13:\"leveluid : -2\";}}s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:26:\"<i class=\"icon-left\"></i>|\";}s:4:\"wrap\";s:35:\"<div class=\"stagesubheader\">|</div>\";s:4:\"data\";s:48:\"levelfield:-2, nav_title // levelfield:-2, title\";s:10:\"insertData\";s:1:\"1\";}i:20;s:4:\"TEXT\";s:3:\"20.\";a:3:{s:5:\"field\";s:18:\"nav_title // title\";s:4:\"wrap\";s:30:\"<h1 class=\"stageheader\">|</h1>\";s:16:\"htmlSpecialChars\";s:1:\"0\";}}}i:18;s:4:\"TEXT\";s:3:\"18.\";a:1:{s:5:\"value\";s:12:\"</div></div>\";}i:20;s:7:\"CONTENT\";s:3:\"20.\";a:3:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:2:{s:7:\"orderBy\";s:7:\"sorting\";s:5:\"where\";s:10:\"colPos = 2\";}s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:35:\"<main class=\"maincontents\">|</main>\";}}}s:9:\"pagets__3\";s:3:\"COA\";s:10:\"pagets__3.\";a:4:{i:10;s:7:\"CONTENT\";s:3:\"10.\";a:3:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:2:{s:7:\"orderBy\";s:7:\"sorting\";s:5:\"where\";s:10:\"colPos = 1\";}s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:48:\"<div class=\"stagewrapper stage_overview\">|</div>\";}}i:20;s:7:\"CONTENT\";s:3:\"20.\";a:3:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:2:{s:7:\"orderBy\";s:7:\"sorting\";s:5:\"where\";s:10:\"colPos = 2\";}s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:35:\"<main class=\"maincontents\">|</main>\";}}}s:9:\"pagets__4\";s:3:\"COA\";s:10:\"pagets__4.\";a:2:{i:10;s:7:\"CONTENT\";s:3:\"10.\";a:3:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:2:{s:7:\"orderBy\";s:7:\"sorting\";s:5:\"where\";s:10:\"colPos = 1\";}s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:109:\"<div class=\"stagewrapper stage_start stage_career swiper-container\"><div class=\"swiper-wrapper\">|</div></div>\";}}}s:9:\"pagets__5\";s:3:\"COA\";s:10:\"pagets__5.\";a:4:{i:10;s:7:\"CONTENT\";s:3:\"10.\";a:3:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:2:{s:7:\"orderBy\";s:7:\"sorting\";s:5:\"where\";s:10:\"colPos = 1\";}s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:47:\"<div class=\"stagewrapper stage_content\">|</div>\";}}i:20;s:7:\"CONTENT\";s:3:\"20.\";a:3:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:2:{s:7:\"orderBy\";s:7:\"sorting\";s:5:\"where\";s:10:\"colPos = 2\";}s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:35:\"<main class=\"maincontents\">|</main>\";}}}}s:5:\"stage\";s:7:\"CONTENT\";s:6:\"stage.\";a:3:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:2:{s:7:\"orderBy\";s:7:\"sorting\";s:5:\"where\";s:10:\"colPos = 1\";}s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:26:\"<div class=\"stage\">|</div>\";}}}}s:5:\"meta.\";a:6:{s:15:\"X-UA-Compatible\";s:7:\"IE=edge\";s:16:\"X-UA-Compatible.\";a:1:{s:9:\"attribute\";s:10:\"http-equiv\";}s:8:\"viewport\";s:36:\"width=device-width,initial-scale=1.0\";s:12:\"description.\";a:2:{s:4:\"data\";s:22:\"DB:pages:1:description\";s:9:\"override.\";a:1:{s:5:\"field\";s:11:\"description\";}}s:9:\"keywords.\";a:1:{s:5:\"field\";s:8:\"keywords\";}s:6:\"robots\";s:12:\"index,follow\";}s:14:\"includeJSLibs.\";a:1:{s:6:\"jquery\";s:60:\"EXT:mw_dummy/Resources/Public/JavaScript/jquery-3.2.1.min.js\";}s:20:\"includeJSFooterlibs.\";a:1:{s:11:\"carashtheme\";s:59:\"EXT:carashtheme/Resources/Public/JavaScripts/carashtheme.js\";}}s:7:\"config.\";a:27:{s:13:\"headerComment\";s:0:\"\";s:14:\"pageTitleFirst\";s:1:\"1\";s:12:\"absRefPrefix\";s:1:\"/\";s:23:\"simulateStaticDocuments\";s:1:\"0\";s:17:\"tx_realurl_enable\";s:1:\"1\";s:18:\"prefixLocalAnchors\";s:3:\"all\";s:20:\"disablePrefixComment\";s:1:\"1\";s:15:\"removeDefaultJS\";s:8:\"external\";s:20:\"inlineStyle2TempFile\";s:1:\"1\";s:12:\"index_enable\";s:1:\"1\";s:15:\"index_externals\";s:1:\"1\";s:16:\"sendCacheHeaders\";s:1:\"0\";s:44:\"sendCacheHeaders_onlyWhenLoginDeniedInBranch\";s:1:\"0\";s:8:\"language\";s:2:\"de\";s:10:\"locale_all\";s:5:\"de_DE\";s:15:\"htmlTag_langKey\";s:2:\"de\";s:8:\"linkVars\";s:1:\"L\";s:14:\"uniqueLinkVars\";s:1:\"1\";s:16:\"sys_language_uid\";s:1:\"0\";s:7:\"doctype\";s:15:\"<!DOCTYPE html>\";s:14:\"xhtml_cleaning\";s:3:\"all\";s:21:\"cache_clearAtMidnight\";s:1:\"1\";s:8:\"no_cache\";s:1:\"0\";s:8:\"admPanel\";s:1:\"1\";s:21:\"typolinkCheckRootline\";s:1:\"1\";s:32:\"typolinkEnableLinksAcrossDomains\";s:1:\"1\";s:11:\"tx_extbase.\";a:3:{s:4:\"mvc.\";a:2:{s:16:\"requestHandlers.\";a:4:{s:48:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\FrontendRequestHandler\";s:48:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\FrontendRequestHandler\";s:47:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\BackendRequestHandler\";s:47:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\BackendRequestHandler\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Cli\\RequestHandler\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Cli\\RequestHandler\";s:48:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\WidgetRequestHandler\";s:48:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\WidgetRequestHandler\";}s:48:\"throwPageNotFoundExceptionIfActionCantBeResolved\";s:1:\"0\";}s:12:\"persistence.\";a:3:{s:28:\"enableAutomaticCacheClearing\";s:1:\"1\";s:20:\"updateReferenceIndex\";s:1:\"0\";s:8:\"classes.\";a:14:{s:41:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\FileMount.\";a:1:{s:8:\"mapping.\";a:2:{s:9:\"tableName\";s:14:\"sys_filemounts\";s:8:\"columns.\";a:3:{s:6:\"title.\";a:1:{s:13:\"mapOnProperty\";s:5:\"title\";}s:5:\"path.\";a:1:{s:13:\"mapOnProperty\";s:4:\"path\";}s:5:\"base.\";a:1:{s:13:\"mapOnProperty\";s:14:\"isAbsolutePath\";}}}}s:45:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\FileReference.\";a:1:{s:8:\"mapping.\";a:1:{s:9:\"tableName\";s:18:\"sys_file_reference\";}}s:36:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\File.\";a:1:{s:8:\"mapping.\";a:1:{s:9:\"tableName\";s:8:\"sys_file\";}}s:43:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\BackendUser.\";a:1:{s:8:\"mapping.\";a:2:{s:9:\"tableName\";s:8:\"be_users\";s:8:\"columns.\";a:8:{s:9:\"username.\";a:1:{s:13:\"mapOnProperty\";s:8:\"userName\";}s:6:\"admin.\";a:1:{s:13:\"mapOnProperty\";s:15:\"isAdministrator\";}s:8:\"disable.\";a:1:{s:13:\"mapOnProperty\";s:10:\"isDisabled\";}s:9:\"realName.\";a:1:{s:13:\"mapOnProperty\";s:8:\"realName\";}s:10:\"starttime.\";a:1:{s:13:\"mapOnProperty\";s:16:\"startDateAndTime\";}s:8:\"endtime.\";a:1:{s:13:\"mapOnProperty\";s:14:\"endDateAndTime\";}s:14:\"disableIPlock.\";a:1:{s:13:\"mapOnProperty\";s:16:\"ipLockIsDisabled\";}s:10:\"lastlogin.\";a:1:{s:13:\"mapOnProperty\";s:20:\"lastLoginDateAndTime\";}}}}s:48:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\BackendUserGroup.\";a:1:{s:8:\"mapping.\";a:2:{s:9:\"tableName\";s:9:\"be_groups\";s:8:\"columns.\";a:14:{s:9:\"subgroup.\";a:1:{s:13:\"mapOnProperty\";s:9:\"subGroups\";}s:10:\"groupMods.\";a:1:{s:13:\"mapOnProperty\";s:7:\"modules\";}s:14:\"tables_select.\";a:1:{s:13:\"mapOnProperty\";s:15:\"tablesListening\";}s:14:\"tables_modify.\";a:1:{s:13:\"mapOnProperty\";s:12:\"tablesModify\";}s:17:\"pagetypes_select.\";a:1:{s:13:\"mapOnProperty\";s:9:\"pageTypes\";}s:19:\"non_exclude_fields.\";a:1:{s:13:\"mapOnProperty\";s:20:\"allowedExcludeFields\";}s:19:\"explicit_allowdeny.\";a:1:{s:13:\"mapOnProperty\";s:22:\"explicitlyAllowAndDeny\";}s:18:\"allowed_languages.\";a:1:{s:13:\"mapOnProperty\";s:16:\"allowedLanguages\";}s:16:\"workspace_perms.\";a:1:{s:13:\"mapOnProperty\";s:19:\"workspacePermission\";}s:15:\"db_mountpoints.\";a:1:{s:13:\"mapOnProperty\";s:14:\"databaseMounts\";}s:17:\"file_permissions.\";a:1:{s:13:\"mapOnProperty\";s:24:\"fileOperationPermissions\";}s:13:\"lockToDomain.\";a:1:{s:13:\"mapOnProperty\";s:12:\"lockToDomain\";}s:14:\"hide_in_lists.\";a:1:{s:13:\"mapOnProperty\";s:10:\"hideInList\";}s:9:\"TSconfig.\";a:1:{s:13:\"mapOnProperty\";s:8:\"tsConfig\";}}}}s:44:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\FrontendUser.\";a:1:{s:8:\"mapping.\";a:2:{s:9:\"tableName\";s:8:\"fe_users\";s:8:\"columns.\";a:1:{s:13:\"lockToDomain.\";a:1:{s:13:\"mapOnProperty\";s:12:\"lockToDomain\";}}}}s:49:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\FrontendUserGroup.\";a:1:{s:8:\"mapping.\";a:2:{s:9:\"tableName\";s:9:\"fe_groups\";s:8:\"columns.\";a:1:{s:13:\"lockToDomain.\";a:1:{s:13:\"mapOnProperty\";s:12:\"lockToDomain\";}}}}s:40:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\Category.\";a:1:{s:8:\"mapping.\";a:1:{s:9:\"tableName\";s:12:\"sys_category\";}}s:42:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\BackendUser.\";a:1:{s:8:\"mapping.\";a:2:{s:9:\"tableName\";s:8:\"be_users\";s:8:\"columns.\";a:4:{s:18:\"allowed_languages.\";a:1:{s:13:\"mapOnProperty\";s:16:\"allowedLanguages\";}s:17:\"file_mountpoints.\";a:1:{s:13:\"mapOnProperty\";s:15:\"fileMountPoints\";}s:15:\"db_mountpoints.\";a:1:{s:13:\"mapOnProperty\";s:13:\"dbMountPoints\";}s:10:\"usergroup.\";a:1:{s:13:\"mapOnProperty\";s:17:\"backendUserGroups\";}}}}s:47:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\BackendUserGroup.\";a:1:{s:8:\"mapping.\";a:2:{s:9:\"tableName\";s:9:\"be_groups\";s:8:\"columns.\";a:1:{s:9:\"subgroup.\";a:1:{s:13:\"mapOnProperty\";s:9:\"subGroups\";}}}}s:39:\"TYPO3\\CMS\\SysNote\\Domain\\Model\\SysNote.\";a:1:{s:8:\"mapping.\";a:3:{s:9:\"tableName\";s:8:\"sys_note\";s:10:\"recordType\";s:0:\"\";s:8:\"columns.\";a:3:{s:7:\"crdate.\";a:1:{s:13:\"mapOnProperty\";s:12:\"creationDate\";}s:7:\"tstamp.\";a:1:{s:13:\"mapOnProperty\";s:16:\"modificationDate\";}s:7:\"cruser.\";a:1:{s:13:\"mapOnProperty\";s:6:\"author\";}}}}s:41:\"DmitryDulepov\\Realurl\\Domain\\Model\\Alias.\";a:1:{s:8:\"mapping.\";a:1:{s:9:\"tableName\";s:20:\"tx_realurl_uniqalias\";}}s:49:\"DmitryDulepov\\Realurl\\Domain\\Model\\UrlCacheEntry.\";a:1:{s:8:\"mapping.\";a:2:{s:9:\"tableName\";s:18:\"tx_realurl_urldata\";s:8:\"columns.\";a:1:{s:12:\"rootpage_id.\";a:1:{s:13:\"mapOnProperty\";s:10:\"rootPageId\";}}}}s:50:\"DmitryDulepov\\Realurl\\Domain\\Model\\PathCacheEntry.\";a:1:{s:8:\"mapping.\";a:2:{s:9:\"tableName\";s:19:\"tx_realurl_pathdata\";s:8:\"columns.\";a:3:{s:6:\"mpvar.\";a:1:{s:13:\"mapOnProperty\";s:5:\"mpVar\";}s:9:\"pagepath.\";a:1:{s:13:\"mapOnProperty\";s:8:\"pagePath\";}s:12:\"rootpage_id.\";a:1:{s:13:\"mapOnProperty\";s:10:\"rootPageId\";}}}}}}s:9:\"features.\";a:3:{s:20:\"skipDefaultArguments\";s:1:\"0\";s:25:\"ignoreAllEnableFieldsInBe\";s:1:\"0\";s:38:\"requireCHashArgumentForActionArguments\";s:1:\"1\";}}}s:4:\"page\";s:4:\"PAGE\";s:7:\"typeNum\";s:1:\"0\";s:23:\"fluidAjaxWidgetResponse\";s:4:\"PAGE\";s:24:\"fluidAjaxWidgetResponse.\";a:4:{s:7:\"typeNum\";s:4:\"7076\";s:7:\"config.\";a:4:{s:8:\"no_cache\";s:1:\"1\";s:20:\"disableAllHeaderCode\";s:1:\"1\";s:17:\"additionalHeaders\";s:24:\"Content-Type: text/plain\";s:5:\"debug\";s:1:\"0\";}i:10;s:8:\"USER_INT\";s:3:\"10.\";a:1:{s:8:\"userFunc\";s:42:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\Bootstrap->run\";}}s:7:\"module.\";a:5:{s:20:\"tx_extensionmanager.\";a:2:{s:9:\"settings.\";a:1:{s:13:\"repositoryUid\";s:1:\"1\";}s:9:\"features.\";a:1:{s:20:\"skipDefaultArguments\";s:1:\"0\";}}s:9:\"tx_belog.\";a:2:{s:12:\"persistence.\";a:1:{s:8:\"classes.\";a:3:{s:38:\"TYPO3\\CMS\\Belog\\Domain\\Model\\LogEntry.\";a:1:{s:8:\"mapping.\";a:2:{s:9:\"tableName\";s:7:\"sys_log\";s:8:\"columns.\";a:8:{s:7:\"userid.\";a:1:{s:13:\"mapOnProperty\";s:14:\"backendUserUid\";}s:7:\"recuid.\";a:1:{s:13:\"mapOnProperty\";s:9:\"recordUid\";}s:10:\"tablename.\";a:1:{s:13:\"mapOnProperty\";s:9:\"tableName\";}s:7:\"recpid.\";a:1:{s:13:\"mapOnProperty\";s:9:\"recordPid\";}s:11:\"details_nr.\";a:1:{s:13:\"mapOnProperty\";s:13:\"detailsNumber\";}s:3:\"IP.\";a:1:{s:13:\"mapOnProperty\";s:2:\"ip\";}s:10:\"workspace.\";a:1:{s:13:\"mapOnProperty\";s:12:\"workspaceUid\";}s:6:\"NEWid.\";a:1:{s:13:\"mapOnProperty\";s:5:\"newId\";}}}}s:39:\"TYPO3\\CMS\\Belog\\Domain\\Model\\Workspace.\";a:1:{s:8:\"mapping.\";a:1:{s:9:\"tableName\";s:13:\"sys_workspace\";}}s:42:\"TYPO3\\CMS\\Belog\\Domain\\Model\\HistoryEntry.\";a:1:{s:8:\"mapping.\";a:1:{s:9:\"tableName\";s:11:\"sys_history\";}}}}s:9:\"settings.\";a:3:{s:29:\"selectableNumberOfLogEntries.\";a:7:{i:20;s:2:\"20\";i:50;s:2:\"50\";i:100;s:3:\"100\";i:200;s:3:\"200\";i:500;s:3:\"500\";i:1000;s:4:\"1000\";i:1000000;s:3:\"any\";}s:21:\"selectableTimeFrames.\";a:8:{i:0;s:8:\"thisWeek\";i:1;s:8:\"lastWeek\";i:2;s:9:\"last7Days\";i:10;s:9:\"thisMonth\";i:11;s:9:\"lastMonth\";i:12;s:10:\"last31Days\";i:20;s:7:\"noLimit\";i:30;s:11:\"userDefined\";}s:18:\"selectableActions.\";a:7:{i:0;s:3:\"any\";i:1;s:14:\"actionDatabase\";i:2;s:10:\"actionFile\";i:3;s:11:\"actionCache\";i:254;s:14:\"actionSettings\";i:255;s:11:\"actionLogin\";i:-1;s:12:\"actionErrors\";}}}s:10:\"tx_beuser.\";a:2:{s:12:\"persistence.\";a:1:{s:10:\"storagePid\";s:1:\"0\";}s:9:\"settings.\";a:1:{s:5:\"dummy\";s:3:\"foo\";}}s:8:\"tx_form.\";a:2:{s:9:\"settings.\";a:1:{s:19:\"yamlConfigurations.\";a:3:{i:10;s:42:\"EXT:form/Configuration/Yaml/BaseSetup.yaml\";i:20;s:48:\"EXT:form/Configuration/Yaml/FormEditorSetup.yaml\";i:30;s:48:\"EXT:form/Configuration/Yaml/FormEngineSetup.yaml\";}}s:5:\"view.\";a:3:{s:18:\"templateRootPaths.\";a:1:{i:10;s:45:\"EXT:form/Resources/Private/Backend/Templates/\";}s:17:\"partialRootPaths.\";a:1:{i:10;s:44:\"EXT:form/Resources/Private/Backend/Partials/\";}s:16:\"layoutRootPaths.\";a:1:{i:10;s:43:\"EXT:form/Resources/Private/Backend/Layouts/\";}}}s:11:\"tx_sysnote.\";a:1:{s:5:\"view.\";a:3:{s:14:\"layoutRootPath\";s:39:\"EXT:sys_note/Resources/Private/Layouts/\";s:16:\"templateRootPath\";s:41:\"EXT:sys_note/Resources/Private/Templates/\";s:15:\"partialRootPath\";s:40:\"EXT:sys_note/Resources/Private/Partials/\";}}}s:9:\"sitetitle\";s:0:\"\";s:6:\"types.\";a:2:{i:0;s:4:\"page\";i:7076;s:23:\"fluidAjaxWidgetResponse\";}}}'),(4,'4ea56e2536b42d379eb8068eedea2622',2145909600,'a:9:{s:32:\"3ad9ee5d471eaba1ef48aeacc0de45d5\";s:19:\"[PIDinRootline = 3]\";s:32:\"ebe7702784f799853710c7f32c49d50d\";s:48:\"[globalVar = TSFE:id=2] && [globalVar = GP:L!=1]\";s:32:\"8c434c6b0bdd0521cbe1092212ef6746\";s:37:\"[globalVar = GP:tx_news_pi1|news > 0]\";s:32:\"8c412007227e722e7f458e0f896e0865\";s:23:\"[globalVar = TSFE:id=2]\";s:32:\"a8b3935cf2d3905b580298eac93f7b70\";s:23:\"[globalVar = TSFE:id=3]\";s:32:\"8c0a0925425e225600cf1a34b47aa2c3\";s:54:\"[globalVar = TSFE:id=232] || [globalVar = TSFE:id=258]\";s:32:\"060a5e5755e0ca280a6e4dffef7bd524\";s:110:\"[globalVar = TSFE:id=38] || [globalVar = TSFE:id=39] || [globalVar = TSFE:id=146] || [globalVar = TSFE:id=232]\";s:32:\"bda496bca03246a2cfe01bea2c18e731\";s:20:\"[globalVar = GP:L=1]\";s:32:\"5a234d791e82e693f4df18b7ef167052\";s:21:\"[PIDinRootline = 144]\";}'),(5,'1d26855d8ceda6c860d9894674f87a39',1508796000,'a:4:{i:0;a:4:{s:7:\"before.\";a:1:{s:4:\"wrap\";s:5:\"<li>|\";}s:6:\"after.\";a:1:{s:4:\"wrap\";s:6:\"|</li>\";}s:11:\"doNotLinkIt\";s:1:\"1\";s:8:\"stdWrap.\";a:2:{s:7:\"cObject\";s:3:\"COA\";s:8:\"cObject.\";a:5:{s:8:\"stdWrap.\";a:1:{s:9:\"typolink.\";a:1:{s:10:\"parameter.\";a:1:{s:5:\"field\";s:3:\"uid\";}}}i:10;s:5:\"FILES\";s:3:\"10.\";a:4:{s:11:\"references.\";a:2:{s:5:\"table\";s:5:\"pages\";s:9:\"fieldName\";s:5:\"media\";}s:9:\"renderObj\";s:5:\"IMAGE\";s:10:\"renderObj.\";a:2:{s:5:\"file.\";a:3:{s:5:\"width\";s:3:\"30c\";s:6:\"height\";s:3:\"30c\";s:7:\"import.\";a:1:{s:4:\"data\";s:22:\"file:current:publicUrl\";}}s:8:\"altText.\";a:1:{s:5:\"field\";s:5:\"title\";}}s:8:\"stdWrap.\";a:2:{s:8:\"ifEmpty.\";a:2:{s:7:\"cObject\";s:5:\"IMAGE\";s:8:\"cObject.\";a:2:{s:4:\"file\";s:52:\"EXT:mw_dummy/Resources/Public/Icons/icon_default.svg\";s:5:\"file.\";a:2:{s:6:\"height\";s:3:\"30c\";s:5:\"width\";s:3:\"30c\";}}}s:4:\"wrap\";s:32:\"<span class=\"menu-icon\">|</span>\";}}i:20;s:4:\"TEXT\";s:3:\"20.\";a:2:{s:5:\"field\";s:5:\"title\";s:4:\"wrap\";s:32:\"<span class=\"menu-text\">|</span>\";}}}}i:1;a:4:{s:7:\"before.\";a:1:{s:4:\"wrap\";s:5:\"<li>|\";}s:6:\"after.\";a:1:{s:4:\"wrap\";s:6:\"|</li>\";}s:11:\"doNotLinkIt\";s:1:\"1\";s:8:\"stdWrap.\";a:2:{s:7:\"cObject\";s:3:\"COA\";s:8:\"cObject.\";a:5:{s:8:\"stdWrap.\";a:1:{s:9:\"typolink.\";a:1:{s:10:\"parameter.\";a:1:{s:5:\"field\";s:3:\"uid\";}}}i:10;s:5:\"FILES\";s:3:\"10.\";a:4:{s:11:\"references.\";a:2:{s:5:\"table\";s:5:\"pages\";s:9:\"fieldName\";s:5:\"media\";}s:9:\"renderObj\";s:5:\"IMAGE\";s:10:\"renderObj.\";a:2:{s:5:\"file.\";a:3:{s:5:\"width\";s:3:\"30c\";s:6:\"height\";s:3:\"30c\";s:7:\"import.\";a:1:{s:4:\"data\";s:22:\"file:current:publicUrl\";}}s:8:\"altText.\";a:1:{s:5:\"field\";s:5:\"title\";}}s:8:\"stdWrap.\";a:2:{s:8:\"ifEmpty.\";a:2:{s:7:\"cObject\";s:5:\"IMAGE\";s:8:\"cObject.\";a:2:{s:4:\"file\";s:52:\"EXT:mw_dummy/Resources/Public/Icons/icon_default.svg\";s:5:\"file.\";a:2:{s:6:\"height\";s:3:\"30c\";s:5:\"width\";s:3:\"30c\";}}}s:4:\"wrap\";s:32:\"<span class=\"menu-icon\">|</span>\";}}i:20;s:4:\"TEXT\";s:3:\"20.\";a:2:{s:5:\"field\";s:5:\"title\";s:4:\"wrap\";s:32:\"<span class=\"menu-text\">|</span>\";}}}}i:2;a:4:{s:7:\"before.\";a:1:{s:4:\"wrap\";s:5:\"<li>|\";}s:6:\"after.\";a:1:{s:4:\"wrap\";s:6:\"|</li>\";}s:11:\"doNotLinkIt\";s:1:\"1\";s:8:\"stdWrap.\";a:2:{s:7:\"cObject\";s:3:\"COA\";s:8:\"cObject.\";a:5:{s:8:\"stdWrap.\";a:1:{s:9:\"typolink.\";a:1:{s:10:\"parameter.\";a:1:{s:5:\"field\";s:3:\"uid\";}}}i:10;s:5:\"FILES\";s:3:\"10.\";a:4:{s:11:\"references.\";a:2:{s:5:\"table\";s:5:\"pages\";s:9:\"fieldName\";s:5:\"media\";}s:9:\"renderObj\";s:5:\"IMAGE\";s:10:\"renderObj.\";a:2:{s:5:\"file.\";a:3:{s:5:\"width\";s:3:\"30c\";s:6:\"height\";s:3:\"30c\";s:7:\"import.\";a:1:{s:4:\"data\";s:22:\"file:current:publicUrl\";}}s:8:\"altText.\";a:1:{s:5:\"field\";s:5:\"title\";}}s:8:\"stdWrap.\";a:2:{s:8:\"ifEmpty.\";a:2:{s:7:\"cObject\";s:5:\"IMAGE\";s:8:\"cObject.\";a:2:{s:4:\"file\";s:52:\"EXT:mw_dummy/Resources/Public/Icons/icon_default.svg\";s:5:\"file.\";a:2:{s:6:\"height\";s:3:\"30c\";s:5:\"width\";s:3:\"30c\";}}}s:4:\"wrap\";s:32:\"<span class=\"menu-icon\">|</span>\";}}i:20;s:4:\"TEXT\";s:3:\"20.\";a:2:{s:5:\"field\";s:5:\"title\";s:4:\"wrap\";s:32:\"<span class=\"menu-text\">|</span>\";}}}}i:3;a:4:{s:7:\"before.\";a:1:{s:4:\"wrap\";s:5:\"<li>|\";}s:6:\"after.\";a:1:{s:4:\"wrap\";s:6:\"|</li>\";}s:11:\"doNotLinkIt\";s:1:\"1\";s:8:\"stdWrap.\";a:2:{s:7:\"cObject\";s:3:\"COA\";s:8:\"cObject.\";a:5:{s:8:\"stdWrap.\";a:1:{s:9:\"typolink.\";a:1:{s:10:\"parameter.\";a:1:{s:5:\"field\";s:3:\"uid\";}}}i:10;s:5:\"FILES\";s:3:\"10.\";a:4:{s:11:\"references.\";a:2:{s:5:\"table\";s:5:\"pages\";s:9:\"fieldName\";s:5:\"media\";}s:9:\"renderObj\";s:5:\"IMAGE\";s:10:\"renderObj.\";a:2:{s:5:\"file.\";a:3:{s:5:\"width\";s:3:\"30c\";s:6:\"height\";s:3:\"30c\";s:7:\"import.\";a:1:{s:4:\"data\";s:22:\"file:current:publicUrl\";}}s:8:\"altText.\";a:1:{s:5:\"field\";s:5:\"title\";}}s:8:\"stdWrap.\";a:2:{s:8:\"ifEmpty.\";a:2:{s:7:\"cObject\";s:5:\"IMAGE\";s:8:\"cObject.\";a:2:{s:4:\"file\";s:52:\"EXT:mw_dummy/Resources/Public/Icons/icon_default.svg\";s:5:\"file.\";a:2:{s:6:\"height\";s:3:\"30c\";s:5:\"width\";s:3:\"30c\";}}}s:4:\"wrap\";s:32:\"<span class=\"menu-icon\">|</span>\";}}i:20;s:4:\"TEXT\";s:3:\"20.\";a:2:{s:5:\"field\";s:5:\"title\";s:4:\"wrap\";s:32:\"<span class=\"menu-text\">|</span>\";}}}}}');
/*!40000 ALTER TABLE `cf_cache_hash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_hash_tags`
--

DROP TABLE IF EXISTS `cf_cache_hash_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_hash_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_hash_tags`
--

LOCK TABLES `cf_cache_hash_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_hash_tags` DISABLE KEYS */;
INSERT INTO `cf_cache_hash_tags` VALUES (1,'b28e5c219c39a7f3c9d04e02a75ad758','ident_userTS_TSconfig'),(2,'392c6f602e854e5b93279ea2f0f32183','PAGES_TSconfig'),(3,'06527082485c16a179778b23bda94900','ident_TS_TEMPLATE'),(4,'4ea56e2536b42d379eb8068eedea2622','ident_TMPL_CONDITIONS_ALL'),(5,'1d26855d8ceda6c860d9894674f87a39','ident_MENUDATA');
/*!40000 ALTER TABLE `cf_cache_hash_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_imagesizes`
--

DROP TABLE IF EXISTS `cf_cache_imagesizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_imagesizes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_imagesizes`
--

LOCK TABLES `cf_cache_imagesizes` WRITE;
/*!40000 ALTER TABLE `cf_cache_imagesizes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_imagesizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_imagesizes_tags`
--

DROP TABLE IF EXISTS `cf_cache_imagesizes_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_imagesizes_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_imagesizes_tags`
--

LOCK TABLES `cf_cache_imagesizes_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_imagesizes_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_imagesizes_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pages`
--

DROP TABLE IF EXISTS `cf_cache_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pages`
--

LOCK TABLES `cf_cache_pages` WRITE;
/*!40000 ALTER TABLE `cf_cache_pages` DISABLE KEYS */;
INSERT INTO `cf_cache_pages` VALUES (2,'47b8c3e1a7ced78e7c015f7542a7b933',1508796000,'xú’\Zks€∏ÒsÛ+v¶N¶÷[≤%ŸÚ’±ùúÔÏú\'ˆ›µç3\Zà%ƒ$¡@…Í’ˇΩª\0HQäl…π¥3Õ‹Y\"∞ªÿˆE—~∑ˇªÍ7Í}è,—<‰Lz™ﬂjˆΩˆ˛®Î∑XÉÓ˚,ÿÔ≤}øﬁËÑ˚ùvìÓèz≠¬Ì˜ΩîéŸêﬁÔ7Ïä/\rƒpøΩﬂ›Î{á/O:π˘«’ôË8:zqà$¢…x‡Ã√FÉ£/c¶)\0È¥¬~À¯t‡ùXZïõy <‚(<ÕÓu\r©B•bzêÈ∞“EZ/+Ú‚O7Æ»åç◊å¿◊TÃòdÕ	pÚSãTOT %O∆$e\"ç—Ç(†∆^∫Å<JB…)KàôÙq<ëKöÄÏ1~}+iÃfBﬁQÆ9ç¢9Ò%£⁄û¯#U)ì‰˙éR9ü	Mqü%\nˆ≥$ÄΩwÔÆΩª∫®ñéˆE:ó|<—§—Îu+ÕzcüàpïXïú›;äã∏ï¨Ñ¿z¬∏$íäØ˘ô%L*8Ê<	Öå©<√ÍVÚQf¥±ÇÍ◊jzûäVU»qÌE•6+iÆ#vt≠©‘äÅ~kv≈Ÿ/]º1ÉÉ®≤d6+⁄…Âµw¥∆÷Ø¸|\\9q\nLç¢≤πœœ,3o˘Ñ)g≥TH]úÒ@OõÇr+Êa◊§¢|\Z±A£Z_°\"≈HhU¢¡¡˜ª°à\"1ÛP‡√à\'w†√h‡)=èòö0áÇbòÛD_Åâd·¿≥˙“,NkßÛ‰D©ZLy2¥àU¯_U∫åvöuøU°ÕNãuõıJw‘Å≈^}◊Ë‘ªpÀÍ≠ûGbp:¿üêÎÁëõ/¶˜~êTGÑ‘í¶¯‡ã∏Ç∏:cJƒ¨÷Æ∂´uƒ^ZÆ∆<©\Zí_œ∆Í`ù^∑CçÖ:Fùˆ®”Ë4 ÍË÷W’ÜQæ‰©&J˙˘I`≈∞Ü<ƒ≥aê≈ÒºˆÅŸk´jWŸ.]Ì:•◊±ˆ˘∑å…y•UmVF⁄œp^ªWØ∑ˆ⁄˚ù%ô>ñ=Œ;:¨Ÿoˆ6î|Iœ∏÷Lˆ}*ÉíG)`Ñ πGjG/à˚∑\rcU	Ìo7à˘àh·S	ÅHÍ˘¿„æ^éâ.ÿôS÷A„-Å/ÆØ∑â\rë¡Ú›»9Zè0´!%§GÄ3ïÄ–_¡]g≥Y5?§\Z∞ö¡]8úOëp∏…e7_áfî\0ô‡#I§…˘È}BÂ/πåC∆<“QW«Bå#ÊãÄô;¢¶IMÀ,π≥ ‡e€æ¸»íÄáü0,÷l\n;â`~tòu»CL\rŒE\rüˆM«±…“ï®*ûÒÔn.+?˛Úœ˛zB2‰‚’=bcõ˘jÆ|\r∏J#:ÔÉRÿ¡î+>‚◊Û˛ÑêŒ=rDkñ‡ª‡)W¬—´0K|4÷´Ÿ.	vâ⁄%—.·Ø…Ôdˆ1˙Dˆ„ﬂˇ&?òÔ’4SìWøìù±é´\n=hßO6#ß†˘WØ´c¶oxﬂv	õÇ]˚Ú≥⁄!Ø»îJŸ\0œ\"ì;’õ˘\rø_©◊Îüv…ga”ßÇ-‡0ÇçàºêùÄjzAÁLÓêÔ»Œ_¢¡˘+l¡q;‰sï™y‚0è·3hûvû–øÂ’èî8¸@mVS»®â~èÂ¯ÓiìΩ˙ºKBË·ı´‰Å˙~Ü¨Óí´ﬁù›2ü∞0Ï†ñ)‡S\'{jTq! ¢J¡çÜxç©ﬁ}ç¬âgÉà©ô`”¡⁄ß|)∫\rû$≈˙ÍûÜ≤GåEi◊@–<xO09ÄœÛx¸Ã {ÉjU\r©cÍO†¯“U5{ÑFp€/TbB“¿˚W’Ã\"\Za∞´—√5‡BÌ:bœ†nÉ!	ËOã1∑bÍüU±xéBQG+#®I¨á<°¶4¬ªÕüF—‡€g-Üc¥Ù’F&ø¥\nòrÃr˚ög]5„∞T¡∏â-∑Ñfw¢WÚøY∏çç8Êo%`!Õ \0⁄\'ÃLgÓbá»tJ\"ÁMŸÃ…\0ı?¡ø¶†\0m∂‰iBÂÜ±üÓ/¶˜¬:›xåúäô`ìÔ¬…´‚_%ÊØ—∆ä∏4˜ê4¢6ÒYöI®⁄Ω¸‰G ª–hÄ>K:/Ä›_«“◊A2l)\\˙VyåïF›Úﬂ`‚ÒC˜\0feı¥óÎiE≠´LöŒ9tUÂ\"·Ü[±‡“¡i˘∆X‘/±F∫|°ãıÁ¬Ì9∏Z%K+¶UQˇÇ¸ózãpRb?J‘EBm%^ŒoJ¬÷ò\"$£2‰˜e.\"~Ùe¥T)]\\ñd‰l)äÜ¥h\0g\r∑î˘;Dt\"m¶˜Zı¢\00ﬂâçùﬂ,…»HH∏ÑØnj8rÕ¡x’Ω#D»A@á5‰zâs»‡ÍpéË€p˛‡û≈9\"<Õyƒ∏“YÕÊv¸oùø“π∫çÄœÓ¢`˝iÔ0‹Èˇ;˘~¥|Ø\nÁ.b-Ó·mtRTMÙ™¿ß:9U4]úÈ\Z[ÕŒ∂]\\ÕÓò±qDÖ≥´F≥Ôa„:,ÊY£~˝¿NÀ|(iÿ´;ÔÄˆ[8D€3ÉØêèq•Ÿ3sµVﬂ’e\'\"é›H∞\rı∂ù›`\rÙñC87´}ØëüMGÍØ¿	 ÊÿΩ\Z~6Å™‚qAyeìÊ˛©+=ï´õœ}`ˇ~Utù÷BŒT gtÅC˝B@Guú¯!\r	8\0[l<∏Ö&Q-#%A\n:ùæ\'Y,¶Ï‘z“◊∏‘A„L&¥†ƒË‰Ägh^ö7†Ÿ∑|Ö£fﬂN_÷q€)ˆUµ¥\rÍW–éù†aæ7:_“Fª˝Â˛P$—¸◊	K†\ZÂ…)K8Œì7íÇ& ∏ 	Œ*3∞ñë§èCKÁ™é\rù∫:∏5<=ÀF_ÇÊfàË?≤˘6RÖæˆZ0zë˚Eñﬂ2v±ºªsÆÜ9?√\'ØV¡Ê–áò¡ÄcaeˆöqèOCLi	O∆+Fo‰nRﬁ±æ‰Ab\nÍ\'¿~\"ÜlEWêÆh¬¢24íƒãçüLò˜≤<:^™Ü8Á\0g∆¯(æ:ˆ•PÍT`i±¨àÜÒnÖU¨Z‹B-û˙ÊπiÆ‡:\'hSÈÔiD8˚ƒÕ∂nÕHÚˆ‰Ú˙ˆÃ“∫Ωú˙∑ø≤—Ì[iÓ}a	›8”◊‚Ì?Ö˜JñoäVÌ$‚∑ﬂ\0~Io#p≈€ËçoÂ¥˜Ó„[·=XD=ëbvûˇ^Ë∑\"KÇ≥{®X±2=èMÖzBh“1WDSV∫6æ@ÅÆ Ô≤ƒ/yMÉïÒ∫„Lä˚&Pú†ˇª˚Q∏2®)K!Ù√!îﬁ@Ë„“ -0˘êYgkXok¨”ØıÌ€K∞Ë‚%H•-\Zb©⁄\n`b·‘=–2ãCì¸BcT¿‚,Ftï3!¢,NTµú§L”Ω†è9\n¯)πr≥9«Ï∏µ÷¡D•\'P⁄*«(nÂ„»5W«#04:W˛≠ŒVö*Ùˇ®∂\Zkµ’]h“££ÅgC⁄€Í‰ÁX:œû“nm<≈›ÍüìœÛÄAZP.ˇ≠8A◊°‡>év7ò®k!-Ì„>¶¯ﬂdŸé±,Br|ÈÄ/ÅΩ[õ`±†N-l`p{«iÙ~+¶sH{ÎÅòitqz≥È‡=ãÛÃ„$¿afŒ:òc\nmπäèÀNˆÛ+(\ZÓ∂`ÑßPò›ù/Î¡–®GX≥l “t∞∂æY‚»ﬁ≥µyÏ1?|\'Eñ>œ{∆«à∏Œm\\ ïç∆À‘◊ c!ﬂ9rNòUê!â∆\"»\"¶\nÉ^’P±à˘zü∂&}ò¨∞L»ÛpæâN3áø4‡ñà{èéÖ€ñ¸Ù\\˚ÄñF+≤J\"? †\n\r9ã6*=Ñ‚ãNÜâÒﬁ\Z¥Ç\"ªO°”‚zh†ñlíØŸ\\ EÛcƒØÉ‚⁄I⁄-,äÿML‚]p89ä%¯“\ZLü\r>ﬁH™W¬∏Æ≈π•Ü’˚hhh*8d—-Æ:∂Äxk.]⁄u∆4π%-Ëo4C€¢¸î‚+,@X∞Êh∂L´qw#ÏÌ‹¬… ‡ÖßN8xOÜ¯FÒÍ˛<AèœÉÕµÌr7a≠N\\?Ï¢M{snu•ÛW•ΩÒ¥W˘«th≈Ë=KåØãö·SQÛ[\n≥∂Ê_ÊÚ∆X»˘£2¨/≤ö∂ËÒ∂+|öÂ„ﬁ0¥◊ˇ§Ó1âÊ€∆û¸ñ?#^t,äâW„+Oæ S∑’⁄6ôπ≠§vU8≈˛3¨Ù_®\n˛PQ`$h-›—ÎπÇnq≈≠›‚£ú∑û®‰@Ã#§dæê¡çõ∏∏·ﬁ∫÷\'±m‹‚™öwﬂ¸±f3∂≈Y‘•ÒFªÓô*áá‹ˇÇÄ/≥•[µñ\0∫{¶\'¶`∑Œ\0]ÎiÃµúüBÌîäÈÌ;Q\\VÁqƒ©z^à¿⁄£4†ƒ°E*.TÙ∂:˜gôN˝,—OÑ®ı]sw˘|ŸyÓ#Ã\"Ö–ÓÁé[‰NÑ∆I≈yêÎ≤SﬂJ&lÖøZ®ﬁíPÿí?\"U>à”)›‰˚Ö º@%l1ËZ»´|.«u¯‡“#’ôd%A–ô‘O›˙Xéøúà7±-\'B2(KÌê—VªÁ…õ•!f´káÜ\\≤ìÔ©ö‰‘ﬁ\nigL´‰÷gÕõß¿ô˙A·/bÎÓBõqÎÈÜ…¨m3Q‰35 A\Z`Î}¥î⁄_⁄\"]x øªEª∑¶L≈˘±ã3UZm‰´Q0<ÿÂ≈Ã«\"ñ~ëaw›Â,Çˆt:,ê‹2˙\n˛LØ¥¥ám(˛“ ?kœTñ¯%∑–+µË˘⁄~—rÁ+›EaT¢é1ﬂ	@o+Æ≥QjStA#wVÎVO›E	[¶a¨]Ü˙ÿtBeYQg:3¸çÿß§tìµá%≥†πã≈°àäıñ·ﬁÙÌÿ*R5;E.Z5\rêg±©¢;∞≥Zπ⁄äçW_+-5◊Gµæ !¿$_Äÿ∑[¶h„%‰Óça ærs.`ﬁ…T”Iößh˛‡ﬁòópΩΩz›Ÿ‹¶∞b«¸®”i¶xÜ?K.nı”>i^íE&>‹¨8aÒ∂àpÎn£ÒßØîõ');
/*!40000 ALTER TABLE `cf_cache_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pages_tags`
--

DROP TABLE IF EXISTS `cf_cache_pages_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pages_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pages_tags`
--

LOCK TABLES `cf_cache_pages_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_pages_tags` DISABLE KEYS */;
INSERT INTO `cf_cache_pages_tags` VALUES (2,'47b8c3e1a7ced78e7c015f7542a7b933','pageId_1'),(3,'47b8c3e1a7ced78e7c015f7542a7b933','pageId_1');
/*!40000 ALTER TABLE `cf_cache_pages_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pagesection`
--

DROP TABLE IF EXISTS `cf_cache_pagesection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pagesection` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pagesection`
--

LOCK TABLES `cf_cache_pagesection` WRITE;
/*!40000 ALTER TABLE `cf_cache_pagesection` DISABLE KEYS */;
INSERT INTO `cf_cache_pagesection` VALUES (1,'1_222419149',1511346809,'xúÕôYo€FÄˇä™áº5⁄ìK HÅúMÅ§0\"ß(PƒíŸDxÅ\\⁄Vˇ˜ŒR§L™´Ö%?‹·ÏÏ∑≥sêîûÛ˘∑\nˇMuíLœÙ‹kÜl>Â:Ú\0d$h\nK·j–aH\"2í”≥jNΩ˘ÙØÛﬂﬁƒŸß<7Iú¡‰≈Ñ±∑¨	@)¬î+ñ Û\\…%°Zr\n/í$≤z¬EóIË‰]‚Ùã≈ª∑Û8z¡æLû=õn˝z>ˇ”∫±ÔÜÇã–	HED2\Z@â«e∞tîp\Z=µeçò[?Éõ /b˙›^L~ôêæQ Qå)¿†ñB∫@ñÆÁ\0qùfﬂåÔÑÓÃh7‡ó·íE‹#2ê.aûã˛Û¯Räåö·=\Z¢qKR0	åIáêpI5ÅPZ≥ê[=)v—pt‚˜ÔìáoJw≥\nqàñ ïî@BÕ\\¢—r	à\ZI&ö≥¶d≠ª{ÓÌæGÖ3Ç«Ô}DZxNj¬ôpp€K 4\0º†.(N_n”Ÿ`È≈ä‘åãHy\\Óè∫ÅÇ%uOcÉ>ŒT4rWÕ1PK@±M:ˇœ	^0’fPcD[Y3™◊#ä#Ã√Ø°ÙÛ{\rÎÕµ¶ÍIi\'≠å6–â%Jcì¿¥ù∏0∫4ƒ¶ëHõº±ÆÏ5ﬁúÆWÃÙµøô‘äQ3Ö(÷=ë3ü&zï◊¶[WqA÷	–Ve◊3q∫¬§Ç,ÍK–;K/Àº.z÷)ZÉ[É∫˘¢\n}	UœFî5´:?°çãEògÀ¯≤oMµ˚q&u˝ΩZü≈ï_°7Ï˘ÙúûÊuf¸ﬁ±P÷˙y≤ëÛÜ>…/„ÃOÛh≥+Üt¯7‡Ø›Ñï„÷¯	\\C“c`h´J	:©Àƒ/¥π™‡2ÖÃÙA›Å‹6[Ÿ,≈ˇe\"«@(„{{Ù!Ü≈e^∆=‹›5ßVÊ7ã:µ°)yõÌÖı»⁄+\rèÍ4]M~ûº“U\\a Ÿò’êƒUTx\\ú›Y˝ç¨”Xdñ	ueV	Dxx™fˆ∫9ñ∫‘&Œ≥Ÿ≈™»af÷ÉDƒ∑^Ãõπ˛z≤ˇC≥ŸŸÔñÇı)8:)Ωi˜/mKø]:ΩÒ«gÙV„É’îıw©´+s)Ï_Q¥õ˝ëIΩEEQ’dL†´MZ%ÌŸü#€≥Ÿ8Ω7nıùæ˛&-+dJuÜiYvsw›kÌ®≠u¿¨È≠ª∑˙n_ﬂ±˜ÎÍ~±Å†ù·\r¬wíóÈ∆¡˜√Võí-ÁU´*ÀMø¶†ƒÔD›,∫5´MªûÀ{ín“0±|ÖõeÓGù≤ç$∂q8¡\"5{YI6ÅPÕ>æ¸x>ª2QV3,Ç˘:)g7¨á3ƒ∆sòuÙª£≥	tf™ÁÊ∂-M*+GR≈÷©,4∂¨FÛ∏4~I•Ωoıﬁ&`+‚•Rí\'•<◊eÔÍ,tÜÄŒ”\0˝7{U\'	åû∂\Zb≤£`æâØG›£‰‚{–î#îﬁêíá“§…nFFÜå‚(åø•ÿ\'F È)8ÚC\\çT∆ÜåÍ(åã´º4a=∆…O·¿/têå∏8Öø@#å[Ì∆=\ZcÛR6zm«ÇÒHwdÍ0?IÆ£ëÓ»Ü≠á¸dˆü0?BVø*SÍp,Dá\rHèıu˚ﬁ˘7DÌ››‘|ÿí∏w\n‘Áˆ€√3=Öb`ô˜Å≤S	ﬂÓÉŒÎ∞UÒ\'z†àB´5Ç:lX¸8§=‘}a0l^¸xÒ˙	BºLVüã≥-\ZAvN≈≈ü ±®˚\\¨N&zc©.FP›Sqmã∫œµ√æF]ƒÏÁ‡ôﬁ˚qü˙ÉRó´!î¯Îœ»œM’„r•§ÆÁ5_‚Üùã>˙Ê .F¸$ûß:Œ2}Ωß§pD„41lQ‰—mı\08FÒãÊ›nãäπX›-’∞—GøéDE[™åﬁBaÆj–∂ﬁîû\" ò$§KúÖ)Î–‘Â∂ÛzÑ‚Èù«Ìë^Î2∂op’n4˘Ù© -ö˝Â+mFl√)I∏\'∏a+°è~W?\0Œ%˜\'˚]œu√∆A›õ†Û,]Û∫;,m¬UÆ€@\r[y\nóy¯ÁC∂€Qﬁˇ˛?Ù3Õ˛NÄeÕSçª‰†xdi~ŸçTÅ©G˙∫î|Ô‡∂æ˛ëÂpåAç˜˛2∂ˇ∑åQêªª\05\0¿ä');
/*!40000 ALTER TABLE `cf_cache_pagesection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pagesection_tags`
--

DROP TABLE IF EXISTS `cf_cache_pagesection_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pagesection_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pagesection_tags`
--

LOCK TABLES `cf_cache_pagesection_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_pagesection_tags` DISABLE KEYS */;
INSERT INTO `cf_cache_pagesection_tags` VALUES (1,'1_222419149','pageId_1'),(2,'1_222419149','mpvarHash_222419149');
/*!40000 ALTER TABLE `cf_cache_pagesection_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_rootline`
--

DROP TABLE IF EXISTS `cf_cache_rootline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_rootline` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_rootline`
--

LOCK TABLES `cf_cache_rootline` WRITE;
/*!40000 ALTER TABLE `cf_cache_rootline` DISABLE KEYS */;
INSERT INTO `cf_cache_rootline` VALUES (1,'1__0_0_0',1511346809,'a:1:{i:0;a:27:{s:3:\"pid\";i:0;s:3:\"uid\";i:1;s:9:\"t3ver_oid\";i:0;s:10:\"t3ver_wsid\";i:0;s:11:\"t3ver_state\";i:0;s:5:\"title\";s:10:\"Startseite\";s:5:\"alias\";s:0:\"\";s:9:\"nav_title\";s:0:\"\";s:5:\"media\";s:0:\"\";s:6:\"layout\";i:0;s:6:\"hidden\";i:0;s:9:\"starttime\";i:0;s:7:\"endtime\";i:0;s:8:\"fe_group\";s:0:\"\";s:16:\"extendToSubpages\";i:0;s:7:\"doktype\";i:1;s:8:\"TSconfig\";s:0:\"\";s:17:\"tsconfig_includes\";s:0:\"\";s:11:\"is_siteroot\";i:1;s:9:\"mount_pid\";i:0;s:12:\"mount_pid_ol\";i:0;s:13:\"fe_login_mode\";i:0;s:25:\"backend_layout_next_level\";s:0:\"\";s:22:\"tx_realurl_pathsegment\";s:0:\"\";s:18:\"tx_realurl_exclude\";i:0;s:23:\"tx_realurl_pathoverride\";i:0;s:10:\"categories\";s:0:\"\";}}'),(2,'2__0_0_0',1511346809,'a:2:{i:1;a:27:{s:3:\"pid\";i:1;s:3:\"uid\";i:2;s:9:\"t3ver_oid\";i:0;s:10:\"t3ver_wsid\";i:0;s:11:\"t3ver_state\";i:0;s:5:\"title\";s:4:\"Home\";s:5:\"alias\";s:0:\"\";s:9:\"nav_title\";s:0:\"\";s:5:\"media\";s:1:\"1\";s:6:\"layout\";i:0;s:6:\"hidden\";i:0;s:9:\"starttime\";i:0;s:7:\"endtime\";i:0;s:8:\"fe_group\";s:0:\"\";s:16:\"extendToSubpages\";i:0;s:7:\"doktype\";i:1;s:8:\"TSconfig\";N;s:17:\"tsconfig_includes\";N;s:11:\"is_siteroot\";i:0;s:9:\"mount_pid\";i:0;s:12:\"mount_pid_ol\";i:0;s:13:\"fe_login_mode\";i:0;s:25:\"backend_layout_next_level\";s:0:\"\";s:22:\"tx_realurl_pathsegment\";s:0:\"\";s:18:\"tx_realurl_exclude\";i:0;s:23:\"tx_realurl_pathoverride\";i:0;s:10:\"categories\";s:0:\"\";}i:0;a:27:{s:3:\"pid\";i:0;s:3:\"uid\";i:1;s:9:\"t3ver_oid\";i:0;s:10:\"t3ver_wsid\";i:0;s:11:\"t3ver_state\";i:0;s:5:\"title\";s:10:\"Startseite\";s:5:\"alias\";s:0:\"\";s:9:\"nav_title\";s:0:\"\";s:5:\"media\";s:0:\"\";s:6:\"layout\";i:0;s:6:\"hidden\";i:0;s:9:\"starttime\";i:0;s:7:\"endtime\";i:0;s:8:\"fe_group\";s:0:\"\";s:16:\"extendToSubpages\";i:0;s:7:\"doktype\";i:1;s:8:\"TSconfig\";s:0:\"\";s:17:\"tsconfig_includes\";s:0:\"\";s:11:\"is_siteroot\";i:1;s:9:\"mount_pid\";i:0;s:12:\"mount_pid_ol\";i:0;s:13:\"fe_login_mode\";i:0;s:25:\"backend_layout_next_level\";s:0:\"\";s:22:\"tx_realurl_pathsegment\";s:0:\"\";s:18:\"tx_realurl_exclude\";i:0;s:23:\"tx_realurl_pathoverride\";i:0;s:10:\"categories\";s:0:\"\";}}'),(3,'3__0_0_0',1511346809,'a:2:{i:1;a:27:{s:3:\"pid\";i:1;s:3:\"uid\";i:3;s:9:\"t3ver_oid\";i:0;s:10:\"t3ver_wsid\";i:0;s:11:\"t3ver_state\";i:0;s:5:\"title\";s:4:\"News\";s:5:\"alias\";s:0:\"\";s:9:\"nav_title\";s:0:\"\";s:5:\"media\";s:1:\"2\";s:6:\"layout\";i:0;s:6:\"hidden\";i:0;s:9:\"starttime\";i:0;s:7:\"endtime\";i:0;s:8:\"fe_group\";s:0:\"\";s:16:\"extendToSubpages\";i:0;s:7:\"doktype\";i:1;s:8:\"TSconfig\";N;s:17:\"tsconfig_includes\";N;s:11:\"is_siteroot\";i:0;s:9:\"mount_pid\";i:0;s:12:\"mount_pid_ol\";i:0;s:13:\"fe_login_mode\";i:0;s:25:\"backend_layout_next_level\";s:0:\"\";s:22:\"tx_realurl_pathsegment\";s:0:\"\";s:18:\"tx_realurl_exclude\";i:0;s:23:\"tx_realurl_pathoverride\";i:0;s:10:\"categories\";s:0:\"\";}i:0;a:27:{s:3:\"pid\";i:0;s:3:\"uid\";i:1;s:9:\"t3ver_oid\";i:0;s:10:\"t3ver_wsid\";i:0;s:11:\"t3ver_state\";i:0;s:5:\"title\";s:10:\"Startseite\";s:5:\"alias\";s:0:\"\";s:9:\"nav_title\";s:0:\"\";s:5:\"media\";s:0:\"\";s:6:\"layout\";i:0;s:6:\"hidden\";i:0;s:9:\"starttime\";i:0;s:7:\"endtime\";i:0;s:8:\"fe_group\";s:0:\"\";s:16:\"extendToSubpages\";i:0;s:7:\"doktype\";i:1;s:8:\"TSconfig\";s:0:\"\";s:17:\"tsconfig_includes\";s:0:\"\";s:11:\"is_siteroot\";i:1;s:9:\"mount_pid\";i:0;s:12:\"mount_pid_ol\";i:0;s:13:\"fe_login_mode\";i:0;s:25:\"backend_layout_next_level\";s:0:\"\";s:22:\"tx_realurl_pathsegment\";s:0:\"\";s:18:\"tx_realurl_exclude\";i:0;s:23:\"tx_realurl_pathoverride\";i:0;s:10:\"categories\";s:0:\"\";}}'),(4,'4__0_0_0',1511346809,'a:2:{i:1;a:27:{s:3:\"pid\";i:1;s:3:\"uid\";i:4;s:9:\"t3ver_oid\";i:0;s:10:\"t3ver_wsid\";i:0;s:11:\"t3ver_state\";i:0;s:5:\"title\";s:10:\"Leistungen\";s:5:\"alias\";s:0:\"\";s:9:\"nav_title\";s:0:\"\";s:5:\"media\";s:0:\"\";s:6:\"layout\";i:0;s:6:\"hidden\";i:0;s:9:\"starttime\";i:0;s:7:\"endtime\";i:0;s:8:\"fe_group\";s:1:\"0\";s:16:\"extendToSubpages\";i:0;s:7:\"doktype\";i:1;s:8:\"TSconfig\";N;s:17:\"tsconfig_includes\";N;s:11:\"is_siteroot\";i:0;s:9:\"mount_pid\";i:0;s:12:\"mount_pid_ol\";i:0;s:13:\"fe_login_mode\";i:0;s:25:\"backend_layout_next_level\";s:0:\"\";s:22:\"tx_realurl_pathsegment\";s:0:\"\";s:18:\"tx_realurl_exclude\";i:0;s:23:\"tx_realurl_pathoverride\";i:0;s:10:\"categories\";s:0:\"\";}i:0;a:27:{s:3:\"pid\";i:0;s:3:\"uid\";i:1;s:9:\"t3ver_oid\";i:0;s:10:\"t3ver_wsid\";i:0;s:11:\"t3ver_state\";i:0;s:5:\"title\";s:10:\"Startseite\";s:5:\"alias\";s:0:\"\";s:9:\"nav_title\";s:0:\"\";s:5:\"media\";s:0:\"\";s:6:\"layout\";i:0;s:6:\"hidden\";i:0;s:9:\"starttime\";i:0;s:7:\"endtime\";i:0;s:8:\"fe_group\";s:0:\"\";s:16:\"extendToSubpages\";i:0;s:7:\"doktype\";i:1;s:8:\"TSconfig\";s:0:\"\";s:17:\"tsconfig_includes\";s:0:\"\";s:11:\"is_siteroot\";i:1;s:9:\"mount_pid\";i:0;s:12:\"mount_pid_ol\";i:0;s:13:\"fe_login_mode\";i:0;s:25:\"backend_layout_next_level\";s:0:\"\";s:22:\"tx_realurl_pathsegment\";s:0:\"\";s:18:\"tx_realurl_exclude\";i:0;s:23:\"tx_realurl_pathoverride\";i:0;s:10:\"categories\";s:0:\"\";}}'),(5,'5__0_0_0',1511346809,'a:2:{i:1;a:27:{s:3:\"pid\";i:1;s:3:\"uid\";i:5;s:9:\"t3ver_oid\";i:0;s:10:\"t3ver_wsid\";i:0;s:11:\"t3ver_state\";i:0;s:5:\"title\";s:7:\"Kontakt\";s:5:\"alias\";s:0:\"\";s:9:\"nav_title\";s:0:\"\";s:5:\"media\";s:0:\"\";s:6:\"layout\";i:0;s:6:\"hidden\";i:0;s:9:\"starttime\";i:0;s:7:\"endtime\";i:0;s:8:\"fe_group\";s:1:\"0\";s:16:\"extendToSubpages\";i:0;s:7:\"doktype\";i:1;s:8:\"TSconfig\";N;s:17:\"tsconfig_includes\";N;s:11:\"is_siteroot\";i:0;s:9:\"mount_pid\";i:0;s:12:\"mount_pid_ol\";i:0;s:13:\"fe_login_mode\";i:0;s:25:\"backend_layout_next_level\";s:0:\"\";s:22:\"tx_realurl_pathsegment\";s:0:\"\";s:18:\"tx_realurl_exclude\";i:0;s:23:\"tx_realurl_pathoverride\";i:0;s:10:\"categories\";s:0:\"\";}i:0;a:27:{s:3:\"pid\";i:0;s:3:\"uid\";i:1;s:9:\"t3ver_oid\";i:0;s:10:\"t3ver_wsid\";i:0;s:11:\"t3ver_state\";i:0;s:5:\"title\";s:10:\"Startseite\";s:5:\"alias\";s:0:\"\";s:9:\"nav_title\";s:0:\"\";s:5:\"media\";s:0:\"\";s:6:\"layout\";i:0;s:6:\"hidden\";i:0;s:9:\"starttime\";i:0;s:7:\"endtime\";i:0;s:8:\"fe_group\";s:0:\"\";s:16:\"extendToSubpages\";i:0;s:7:\"doktype\";i:1;s:8:\"TSconfig\";s:0:\"\";s:17:\"tsconfig_includes\";s:0:\"\";s:11:\"is_siteroot\";i:1;s:9:\"mount_pid\";i:0;s:12:\"mount_pid_ol\";i:0;s:13:\"fe_login_mode\";i:0;s:25:\"backend_layout_next_level\";s:0:\"\";s:22:\"tx_realurl_pathsegment\";s:0:\"\";s:18:\"tx_realurl_exclude\";i:0;s:23:\"tx_realurl_pathoverride\";i:0;s:10:\"categories\";s:0:\"\";}}');
/*!40000 ALTER TABLE `cf_cache_rootline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_rootline_tags`
--

DROP TABLE IF EXISTS `cf_cache_rootline_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_rootline_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_rootline_tags`
--

LOCK TABLES `cf_cache_rootline_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_rootline_tags` DISABLE KEYS */;
INSERT INTO `cf_cache_rootline_tags` VALUES (1,'1__0_0_0','pageId_1'),(2,'2__0_0_0','pageId_2'),(3,'2__0_0_0','pageId_1'),(4,'3__0_0_0','pageId_3'),(5,'3__0_0_0','pageId_1'),(6,'4__0_0_0','pageId_4'),(7,'4__0_0_0','pageId_1'),(8,'5__0_0_0','pageId_5'),(9,'5__0_0_0','pageId_1');
/*!40000 ALTER TABLE `cf_cache_rootline_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_datamapfactory_datamap`
--

DROP TABLE IF EXISTS `cf_extbase_datamapfactory_datamap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_datamapfactory_datamap` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_datamapfactory_datamap`
--

LOCK TABLES `cf_extbase_datamapfactory_datamap` WRITE;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap` DISABLE KEYS */;
INSERT INTO `cf_extbase_datamapfactory_datamap` VALUES (1,'TYPO3%CMS%Extensionmanager%Domain%Model%Repository',1508758827,'O:52:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMap\":20:{s:12:\"\0*\0className\";s:50:\"TYPO3\\CMS\\Extensionmanager\\Domain\\Model\\Repository\";s:12:\"\0*\0tableName\";s:43:\"tx_extensionmanager_domain_model_repository\";s:13:\"\0*\0recordType\";N;s:13:\"\0*\0subclasses\";a:0:{}s:13:\"\0*\0columnMaps\";a:6:{s:5:\"title\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:5:\"title\";s:13:\"\0*\0columnName\";s:5:\"title\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:11:\"description\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:11:\"description\";s:13:\"\0*\0columnName\";s:11:\"description\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:7:\"wsdlUrl\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:7:\"wsdlUrl\";s:13:\"\0*\0columnName\";s:8:\"wsdl_url\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:13:\"mirrorListUrl\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:13:\"mirrorListUrl\";s:13:\"\0*\0columnName\";s:15:\"mirror_list_url\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:4:\"TEXT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:10:\"lastUpdate\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:10:\"lastUpdate\";s:13:\"\0*\0columnName\";s:11:\"last_update\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:14:\"extensionCount\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:14:\"extensionCount\";s:13:\"\0*\0columnName\";s:15:\"extension_count\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}}s:19:\"\0*\0pageIdColumnName\";s:3:\"pid\";s:23:\"\0*\0languageIdColumnName\";N;s:30:\"\0*\0translationOriginColumnName\";N;s:34:\"\0*\0translationOriginDiffSourceName\";N;s:29:\"\0*\0modificationDateColumnName\";N;s:25:\"\0*\0creationDateColumnName\";N;s:20:\"\0*\0creatorColumnName\";N;s:24:\"\0*\0deletedFlagColumnName\";N;s:25:\"\0*\0disabledFlagColumnName\";N;s:22:\"\0*\0startTimeColumnName\";N;s:20:\"\0*\0endTimeColumnName\";N;s:30:\"\0*\0frontendUserGroupColumnName\";N;s:23:\"\0*\0recordTypeColumnName\";N;s:11:\"\0*\0isStatic\";b:0;s:12:\"\0*\0rootLevel\";b:1;}'),(2,'TYPO3%CMS%Extensionmanager%Domain%Model%Extension',1508758827,'O:52:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMap\":20:{s:12:\"\0*\0className\";s:49:\"TYPO3\\CMS\\Extensionmanager\\Domain\\Model\\Extension\";s:12:\"\0*\0tableName\";s:42:\"tx_extensionmanager_domain_model_extension\";s:13:\"\0*\0recordType\";N;s:13:\"\0*\0subclasses\";a:0:{}s:13:\"\0*\0columnMaps\";a:16:{s:12:\"extensionKey\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:12:\"extensionKey\";s:13:\"\0*\0columnName\";s:13:\"extension_key\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:7:\"version\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:7:\"version\";s:13:\"\0*\0columnName\";s:7:\"version\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:18:\"alldownloadcounter\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:18:\"alldownloadcounter\";s:13:\"\0*\0columnName\";s:18:\"alldownloadcounter\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:11:\"PASSTHROUGH\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:14:\"integerVersion\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:14:\"integerVersion\";s:13:\"\0*\0columnName\";s:15:\"integer_version\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:5:\"title\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:5:\"title\";s:13:\"\0*\0columnName\";s:5:\"title\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:11:\"description\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:11:\"description\";s:13:\"\0*\0columnName\";s:11:\"description\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:4:\"TEXT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:5:\"state\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:5:\"state\";s:13:\"\0*\0columnName\";s:5:\"state\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:8:\"category\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:8:\"category\";s:13:\"\0*\0columnName\";s:8:\"category\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:11:\"lastUpdated\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:11:\"lastUpdated\";s:13:\"\0*\0columnName\";s:12:\"last_updated\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:13:\"updateComment\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:13:\"updateComment\";s:13:\"\0*\0columnName\";s:14:\"update_comment\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:4:\"TEXT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:10:\"authorName\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:10:\"authorName\";s:13:\"\0*\0columnName\";s:11:\"author_name\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:11:\"authorEmail\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:11:\"authorEmail\";s:13:\"\0*\0columnName\";s:12:\"author_email\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:14:\"currentVersion\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:14:\"currentVersion\";s:13:\"\0*\0columnName\";s:15:\"current_version\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"CHECK\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:11:\"reviewState\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:11:\"reviewState\";s:13:\"\0*\0columnName\";s:12:\"review_state\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"CHECK\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:7:\"md5hash\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:7:\"md5hash\";s:13:\"\0*\0columnName\";s:7:\"md5hash\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:22:\"serializedDependencies\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:22:\"serializedDependencies\";s:13:\"\0*\0columnName\";s:23:\"serialized_dependencies\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}}s:19:\"\0*\0pageIdColumnName\";s:3:\"pid\";s:23:\"\0*\0languageIdColumnName\";N;s:30:\"\0*\0translationOriginColumnName\";N;s:34:\"\0*\0translationOriginDiffSourceName\";N;s:29:\"\0*\0modificationDateColumnName\";N;s:25:\"\0*\0creationDateColumnName\";N;s:20:\"\0*\0creatorColumnName\";N;s:24:\"\0*\0deletedFlagColumnName\";N;s:25:\"\0*\0disabledFlagColumnName\";N;s:22:\"\0*\0startTimeColumnName\";N;s:20:\"\0*\0endTimeColumnName\";N;s:30:\"\0*\0frontendUserGroupColumnName\";N;s:23:\"\0*\0recordTypeColumnName\";N;s:11:\"\0*\0isStatic\";b:0;s:12:\"\0*\0rootLevel\";b:1;}');
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_datamapfactory_datamap_tags`
--

DROP TABLE IF EXISTS `cf_extbase_datamapfactory_datamap_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_datamapfactory_datamap_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_datamapfactory_datamap_tags`
--

LOCK TABLES `cf_extbase_datamapfactory_datamap_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_object`
--

DROP TABLE IF EXISTS `cf_extbase_object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_object` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_object`
--

LOCK TABLES `cf_extbase_object` WRITE;
/*!40000 ALTER TABLE `cf_extbase_object` DISABLE KEYS */;
INSERT INTO `cf_extbase_object` VALUES (1,'3bcc835c5d8d7866a0ce2dc41464b9a8',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:52:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManager\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(2,'48ee39591354d5b031b745485de55720',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:38:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManager\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(3,'dbac534c00a92e4f7b105be73fba4655',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(4,'a6993d6ce1dd11daab5560826404f359',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:60:\"TYPO3\\CMS\\Extbase\\Configuration\\FrontendConfigurationManager\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:4:{s:21:\"injectFlexFormService\";s:41:\"TYPO3\\CMS\\Extbase\\Service\\FlexFormService\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectTypoScriptService\";s:43:\"TYPO3\\CMS\\Core\\TypoScript\\TypoScriptService\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(5,'7e27373c7241e8ff24a8f03a1b8705d9',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:41:\"TYPO3\\CMS\\Extbase\\Service\\FlexFormService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(6,'9a77a72df3e21f0367293e1dd7ad5b94',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:43:\"TYPO3\\CMS\\Core\\TypoScript\\TypoScriptService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(7,'ffab3d90bc879cb5f9bc7dad6eeca0fe',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:33:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\Request\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:3:{s:17:\"injectHashService\";s:51:\"TYPO3\\CMS\\Extbase\\Security\\Cryptography\\HashService\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(8,'b50521e5e180c67942dcfb9564f33b28',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:51:\"TYPO3\\CMS\\Extbase\\Security\\Cryptography\\HashService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(9,'4162aee1fc2f8a1059d3c19ec4daa1c7',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:44:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\Routing\\UriBuilder\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:3:{s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:22:\"injectExtensionService\";s:42:\"TYPO3\\CMS\\Extbase\\Service\\ExtensionService\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(10,'161ec4a31f0f6bbc932fcc1ae6d48887',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:42:\"TYPO3\\CMS\\Extbase\\Service\\ExtensionService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(11,'6c06740645171b100a0605c1774e691c',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:50:\"TYPO3\\CMS\\Extbase\\Mvc\\Controller\\ControllerContext\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:25:\"injectFlashMessageService\";s:44:\"TYPO3\\CMS\\Core\\Messaging\\FlashMessageService\";s:22:\"injectExtensionService\";s:42:\"TYPO3\\CMS\\Extbase\\Service\\ExtensionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(12,'fcd3672a290f64f6875bb8d84ef8362b',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:44:\"TYPO3\\CMS\\Core\\Messaging\\FlashMessageService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(13,'e8d805b35474fd740277e82b2633dfdc',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:47:\"TYPO3\\CMS\\Fluid\\Core\\Rendering\\RenderingContext\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:3:{s:4:\"name\";s:4:\"view\";s:10:\"dependency\";s:35:\"TYPO3Fluid\\Fluid\\View\\ViewInterface\";s:12:\"defaultValue\";N;}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:33:\"injectViewHelperVariableContainer\";s:60:\"TYPO3Fluid\\Fluid\\Core\\ViewHelper\\ViewHelperVariableContainer\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(14,'371048d41cb7b30445109b634ee18f29',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:34:\"TYPO3\\CMS\\Fluid\\View\\TemplatePaths\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:2:{s:4:\"name\";s:18:\"packageNameOrArray\";s:12:\"defaultValue\";N;}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(15,'260641975c15b4431e7c2e054aa47a43',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:50:\"TYPO3\\CMS\\Fluid\\Core\\ViewHelper\\ViewHelperResolver\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(16,'2f3412020fd44a4207532a873303335f',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:50:\"TYPO3\\CMS\\Fluid\\Core\\Variables\\CmsVariableProvider\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:2:{s:4:\"name\";s:9:\"variables\";s:12:\"defaultValue\";a:0:{}}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(17,'90c4d1fca9b8b368d86a01496d8b1d91',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:60:\"TYPO3Fluid\\Fluid\\Core\\ViewHelper\\ViewHelperVariableContainer\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(18,'39c6b5b4fd0c110926d6fc9d5179f78f',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:42:\"TYPO3Fluid\\Fluid\\ViewHelpers\\ForViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(19,'13a487475f91cffd2dfec760d195b7f7',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:41:\"TYPO3Fluid\\Fluid\\ViewHelpers\\IfViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(20,'7570793615e57f1e4d5a532559c3c572',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:43:\"TYPO3Fluid\\Fluid\\ViewHelpers\\ThenViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(21,'f73b3e6b000be85545d970a0625389e3',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:43:\"TYPO3Fluid\\Fluid\\ViewHelpers\\ElseViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(22,'a994434730072fb9fbef8b6bef3231ae',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:56:\"ArminVieweg\\Dce\\ViewHelpers\\Be\\ExtensionLoadedViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(23,'33557becb5fd776e48ac1a4e8877c048',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(24,'b96d818a4215e693fc3466a05f01f7d0',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:56:\"ArminVieweg\\Dce\\ViewHelpers\\Format\\AddcslashesViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(25,'b91d7d1131833fa9be06d228a776ff64',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:49:\"TYPO3Fluid\\Fluid\\ViewHelpers\\Format\\RawViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(26,'3a2324f3531ec28171090bd7710b0b26',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:49:\"ArminVieweg\\Dce\\ViewHelpers\\Format\\TinyViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(27,'e3d605d1941465d7ecd7444b70f4e754',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:45:\"TYPO3Fluid\\Fluid\\ViewHelpers\\RenderViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(28,'073372c31ba29fae20b6d42668baeb24',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:61:\"ArminVieweg\\Dce\\ViewHelpers\\Be\\ExtensionIsInstalledViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(29,'2558c2aee7bec9dfe7704d0f28aaeb51',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:45:\"TYPO3Fluid\\Fluid\\ViewHelpers\\LayoutViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(30,'35e605c9ee05772e898ba5a5f4c69031',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:46:\"TYPO3Fluid\\Fluid\\ViewHelpers\\SectionViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(31,'477cd9b03533ff97e582ee65e00d080d',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:49:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Format\\HtmlViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(32,'9a905b1fe4c08f7d9a0eb359dd9f630e',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:48:\"TYPO3Fluid\\Fluid\\ViewHelpers\\SpacelessViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(33,'31af8b8b796e1318e70580f9144ce8c8',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:46:\"TYPO3Fluid\\Fluid\\ViewHelpers\\CommentViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(34,'abc1a496b4da64935752f14c9a378149',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:44:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\SwitchViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(35,'72261c7d7d3dc4cb5ffb5420ec0b1c9f',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:42:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\CaseViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(36,'d65ba3e8641dad6c56e5be8e74491c68',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:51:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Link\\TypolinkViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(37,'75120b86de3d9f19be828f659aaf7d0b',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:50:\"TYPO3Fluid\\Fluid\\ViewHelpers\\DefaultCaseViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(38,'bf66f0fcc76ef31fab03f02f04d710a2',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:49:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Format\\DateViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(39,'3460f0111910bdbec763a839d29eaf53',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:47:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\TranslateViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(40,'ce1dc7d680fd675ad944884e40914d8c',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:45:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\CObjectViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:4:{s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:27:\"injectContentObjectRenderer\";s:54:\"TYPO3\\CMS\\Frontend\\ContentObject\\ContentObjectRenderer\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(41,'5d1c7ae05cde41dee2bff5cd36cc4281',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:54:\"TYPO3\\CMS\\Frontend\\ContentObject\\ContentObjectRenderer\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:3:{s:4:\"name\";s:28:\"typoScriptFrontendController\";s:10:\"dependency\";s:58:\"TYPO3\\CMS\\Frontend\\Controller\\TypoScriptFrontendController\";s:12:\"defaultValue\";N;}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(42,'f56378169db4df0a14757de6f6a254d7',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:57:\"TYPO3\\CMS\\Core\\Resource\\Security\\StoragePermissionsAspect\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:2:{s:4:\"name\";s:25:\"backendUserAuthentication\";s:12:\"defaultValue\";N;}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(43,'f4161c7b5ff989cc5937476177f76d76',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:39:\"TYPO3\\CMS\\Extbase\\SignalSlot\\Dispatcher\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(44,'91beec59b6e878a0a8adfe6fc280848a',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:64:\"TYPO3\\CMS\\Core\\Resource\\OnlineMedia\\Processing\\PreviewProcessing\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(45,'ba7dd5efd5a2397ddb6dde3eb0af3db4',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:46:\"TYPO3\\CMS\\Install\\Configuration\\FeatureManager\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(46,'5dcc2824ac5f03a5cebed6c9d5c4ea1a',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:54:\"TYPO3\\CMS\\Belog\\Controller\\SystemInformationController\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:8:{s:24:\"injectLogEntryRepository\";s:52:\"TYPO3\\CMS\\Belog\\Domain\\Repository\\LogEntryRepository\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:18:\"injectCacheService\";s:38:\"TYPO3\\CMS\\Extbase\\Service\\CacheService\";s:44:\"injectMvcPropertyMappingConfigurationService\";s:71:\"TYPO3\\CMS\\Extbase\\Mvc\\Controller\\MvcPropertyMappingConfigurationService\";s:26:\"injectSignalSlotDispatcher\";s:39:\"TYPO3\\CMS\\Extbase\\SignalSlot\\Dispatcher\";s:23:\"injectValidatorResolver\";s:46:\"TYPO3\\CMS\\Extbase\\Validation\\ValidatorResolver\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(47,'11aff5975a56d7b6faac534774174a87',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:52:\"TYPO3\\CMS\\Belog\\Domain\\Repository\\LogEntryRepository\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:2:{s:4:\"name\";s:13:\"objectManager\";s:10:\"dependency\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:24:\"injectPersistenceManager\";s:57:\"TYPO3\\CMS\\Extbase\\Persistence\\PersistenceManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(48,'1c4ccf3b1c0e8b02b14c2468bd494521',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:56:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\PersistenceManager\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:3:{s:18:\"injectQueryFactory\";s:59:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\QueryFactoryInterface\";s:13:\"injectBackend\";s:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\BackendInterface\";s:24:\"injectPersistenceSession\";s:45:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Session\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(49,'a0b1e155c87dc5e77879a87871025d81',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:50:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\QueryFactory\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:3:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:16:\"injectDataMapper\";s:55:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapper\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(50,'698f3592af2e452d429bd1e9cf4e7f28',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:59:\"TYPO3\\CMS\\Extbase\\Configuration\\BackendConfigurationManager\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:3:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectTypoScriptService\";s:43:\"TYPO3\\CMS\\Core\\TypoScript\\TypoScriptService\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(51,'07a1866183ac6e1ac9234808c4928fb3',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:55:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:7:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:16:\"injectQomFactory\";s:65:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Qom\\QueryObjectModelFactory\";s:24:\"injectPersistenceSession\";s:45:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Session\";s:20:\"injectDataMapFactory\";s:59:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapFactory\";s:18:\"injectQueryFactory\";s:59:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\QueryFactoryInterface\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:26:\"injectSignalSlotDispatcher\";s:39:\"TYPO3\\CMS\\Extbase\\SignalSlot\\Dispatcher\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(52,'7b6eafa37459ae90810443b105992a61',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:65:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Qom\\QueryObjectModelFactory\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(53,'b2d13edc404dad53fde6e8ed67946954',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:45:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Session\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(54,'2c1c56e551397ae5c80783e1cf2c3eda',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:59:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapFactory\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:4:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:18:\"injectCacheManager\";s:33:\"TYPO3\\CMS\\Core\\Cache\\CacheManager\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(55,'993ae131d5bac2569b6e9d01b5777ed7',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:45:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Backend\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:2:{s:4:\"name\";s:20:\"configurationManager\";s:10:\"dependency\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:6:{s:13:\"injectSession\";s:45:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Session\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:16:\"injectQomFactory\";s:65:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Qom\\QueryObjectModelFactory\";s:20:\"injectStorageBackend\";s:62:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Storage\\BackendInterface\";s:16:\"injectDataMapper\";s:55:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapper\";s:26:\"injectSignalSlotDispatcher\";s:39:\"TYPO3\\CMS\\Extbase\\SignalSlot\\Dispatcher\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(56,'01ab75a69565e18f3f821b42318e0ff1',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:60:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Storage\\Typo3DbBackend\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:5:{s:16:\"injectDataMapper\";s:55:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapper\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:18:\"injectCacheService\";s:38:\"TYPO3\\CMS\\Extbase\\Service\\CacheService\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(57,'d3b9a967a6af09d391d44dc0c1d5c4ff',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:38:\"TYPO3\\CMS\\Extbase\\Service\\CacheService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:18:\"injectCacheManager\";s:33:\"TYPO3\\CMS\\Core\\Cache\\CacheManager\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(58,'ee36b5aa7e756497c1be0353ea554c27',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:56:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Typo3QuerySettings\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(59,'71dc71d2ae1928473ef30d8028432258',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:71:\"TYPO3\\CMS\\Extbase\\Mvc\\Controller\\MvcPropertyMappingConfigurationService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:17:\"injectHashService\";s:51:\"TYPO3\\CMS\\Extbase\\Security\\Cryptography\\HashService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(60,'c3680131daaff065daf3097af71f1980',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:46:\"TYPO3\\CMS\\Extbase\\Validation\\ValidatorResolver\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(61,'52b735058f3ab10579fbc382b26f85ac',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:42:\"TYPO3\\CMS\\Extbase\\Mvc\\Controller\\Arguments\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(62,'b0f15d248dce461c4df0c7b241f6d7c8',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:41:\"TYPO3\\CMS\\Core\\ViewHelpers\\IconViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(63,'13724b278e4e3fec33b972d9927b9d56',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:62:\"TYPO3Fluid\\Fluid\\ViewHelpers\\Format\\HtmlspecialcharsViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(64,'cd8f2845eed2f811525d1188c59c2c7e',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:44:\"TYPO3Fluid\\Fluid\\ViewHelpers\\CountViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(65,'78915e2e1fdd639df1175e175e3b005a',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:50:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Format\\Nl2brViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(66,'81de039aca085362d0579722eb57e000',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:44:\"TYPO3\\CMS\\Extbase\\Mvc\\RequestHandlerResolver\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:3:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(67,'1a281c1a4f3a0a8df38130ed92e539a8',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:48:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\FrontendRequestHandler\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:7:{s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:22:\"injectExtensionService\";s:42:\"TYPO3\\CMS\\Extbase\\Service\\ExtensionService\";s:23:\"injectCacheHashEnforcer\";s:43:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\CacheHashEnforcer\";s:16:\"injectDispatcher\";s:32:\"TYPO3\\CMS\\Extbase\\Mvc\\Dispatcher\";s:20:\"injectRequestBuilder\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\RequestBuilder\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(68,'b8f67f89c8146a6a207ef46723840ffd',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:43:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\CacheHashEnforcer\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:2:{i:0;a:2:{s:4:\"name\";s:19:\"cacheHashCalculator\";s:10:\"dependency\";s:43:\"TYPO3\\CMS\\Frontend\\Page\\CacheHashCalculator\";}i:1;a:3:{s:4:\"name\";s:28:\"typoScriptFrontendController\";s:10:\"dependency\";s:58:\"TYPO3\\CMS\\Frontend\\Controller\\TypoScriptFrontendController\";s:12:\"defaultValue\";N;}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(69,'a2f952952daf0737b0bff646f7c96adf',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:43:\"TYPO3\\CMS\\Frontend\\Page\\CacheHashCalculator\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(70,'3ed752e7ea60eee5026a21c8b9990a63',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:32:\"TYPO3\\CMS\\Extbase\\Mvc\\Dispatcher\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:2:{s:4:\"name\";s:13:\"objectManager\";s:10:\"dependency\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:26:\"injectSignalSlotDispatcher\";s:39:\"TYPO3\\CMS\\Extbase\\SignalSlot\\Dispatcher\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(71,'97da3abbad45298c6665a64c93a84160',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\RequestBuilder\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:4:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:22:\"injectExtensionService\";s:42:\"TYPO3\\CMS\\Extbase\\Service\\ExtensionService\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(72,'a4a0eb9689419bdf7e2be55e876763a2',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:47:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\BackendRequestHandler\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:4:{s:16:\"injectDispatcher\";s:32:\"TYPO3\\CMS\\Extbase\\Mvc\\Dispatcher\";s:20:\"injectRequestBuilder\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\RequestBuilder\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(73,'8b1d5067ef201f9397a919b581c2febb',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Cli\\RequestHandler\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:4:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:16:\"injectDispatcher\";s:32:\"TYPO3\\CMS\\Extbase\\Mvc\\Dispatcher\";s:20:\"injectRequestBuilder\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Cli\\RequestBuilder\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(74,'a85a0e954caaa9232e9c899c517e8c23',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Cli\\RequestBuilder\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:4:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:20:\"injectCommandManager\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Cli\\CommandManager\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(75,'73785a4df7cf6265f746a280a022f98d',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Cli\\CommandManager\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(76,'02602cfbe105200536e162488f3b34d8',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:48:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\WidgetRequestHandler\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:7:{s:29:\"injectAjaxWidgetContextHolder\";s:51:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\AjaxWidgetContextHolder\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:20:\"injectRequestBuilder\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\RequestBuilder\";s:26:\"injectWidgetRequestBuilder\";s:48:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\WidgetRequestBuilder\";s:16:\"injectDispatcher\";s:32:\"TYPO3\\CMS\\Extbase\\Mvc\\Dispatcher\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(77,'17dd4738af3c1aa88da935f7c7461a76',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:51:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\AjaxWidgetContextHolder\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(78,'38da5993ff181e4a0878ed613360749b',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:48:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\WidgetRequestBuilder\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:5:{s:29:\"injectAjaxWidgetContextHolder\";s:51:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\AjaxWidgetContextHolder\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:22:\"injectExtensionService\";s:42:\"TYPO3\\CMS\\Extbase\\Service\\ExtensionService\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(79,'65aa369e3ef7755812afb4329fd61d4d',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:34:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\Response\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(80,'600d0c39bc5be0b1fcda4e5a5bc47b58',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:52:\"TYPO3\\CMS\\Extensionmanager\\Controller\\ListController\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:12:{s:25:\"injectExtensionRepository\";s:64:\"TYPO3\\CMS\\Extensionmanager\\Domain\\Repository\\ExtensionRepository\";s:17:\"injectListUtility\";s:46:\"TYPO3\\CMS\\Extensionmanager\\Utility\\ListUtility\";s:18:\"injectPageRenderer\";s:32:\"TYPO3\\CMS\\Core\\Page\\PageRenderer\";s:23:\"injectDependencyUtility\";s:52:\"TYPO3\\CMS\\Extensionmanager\\Utility\\DependencyUtility\";s:26:\"injectConfigurationUtility\";s:55:\"TYPO3\\CMS\\Extensionmanager\\Utility\\ConfigurationUtility\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:18:\"injectCacheService\";s:38:\"TYPO3\\CMS\\Extbase\\Service\\CacheService\";s:44:\"injectMvcPropertyMappingConfigurationService\";s:71:\"TYPO3\\CMS\\Extbase\\Mvc\\Controller\\MvcPropertyMappingConfigurationService\";s:26:\"injectSignalSlotDispatcher\";s:39:\"TYPO3\\CMS\\Extbase\\SignalSlot\\Dispatcher\";s:23:\"injectValidatorResolver\";s:46:\"TYPO3\\CMS\\Extbase\\Validation\\ValidatorResolver\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(81,'aff4d21ee383b57dff68f969053d71b9',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:64:\"TYPO3\\CMS\\Extensionmanager\\Domain\\Repository\\ExtensionRepository\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:2:{s:4:\"name\";s:13:\"objectManager\";s:10:\"dependency\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:16:\"injectDataMapper\";s:55:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapper\";s:24:\"injectPersistenceManager\";s:57:\"TYPO3\\CMS\\Extbase\\Persistence\\PersistenceManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(82,'e20cc8764b467e1e3dc8fbdd883453d9',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:46:\"TYPO3\\CMS\\Extensionmanager\\Utility\\ListUtility\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:5:{s:19:\"injectEmConfUtility\";s:48:\"TYPO3\\CMS\\Extensionmanager\\Utility\\EmConfUtility\";s:25:\"injectExtensionRepository\";s:64:\"TYPO3\\CMS\\Extensionmanager\\Domain\\Repository\\ExtensionRepository\";s:20:\"injectInstallUtility\";s:49:\"TYPO3\\CMS\\Extensionmanager\\Utility\\InstallUtility\";s:20:\"injectPackageManager\";s:37:\"TYPO3\\CMS\\Core\\Package\\PackageManager\";s:26:\"injectSignalSlotDispatcher\";s:39:\"TYPO3\\CMS\\Extbase\\SignalSlot\\Dispatcher\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(83,'ea4df31b3786c3c3ce80ec87fc0cfcbb',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:48:\"TYPO3\\CMS\\Extensionmanager\\Utility\\EmConfUtility\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(84,'a674f986a61ea71afad4133566e33862',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:49:\"TYPO3\\CMS\\Extensionmanager\\Utility\\InstallUtility\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:11:{s:19:\"injectObjectManager\";s:38:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManager\";s:26:\"injectInstallToolSqlParser\";s:51:\"TYPO3\\CMS\\Install\\Service\\SqlSchemaMigrationService\";s:23:\"injectDependencyUtility\";s:52:\"TYPO3\\CMS\\Extensionmanager\\Utility\\DependencyUtility\";s:25:\"injectFileHandlingUtility\";s:54:\"TYPO3\\CMS\\Extensionmanager\\Utility\\FileHandlingUtility\";s:17:\"injectListUtility\";s:46:\"TYPO3\\CMS\\Extensionmanager\\Utility\\ListUtility\";s:21:\"injectDatabaseUtility\";s:50:\"TYPO3\\CMS\\Extensionmanager\\Utility\\DatabaseUtility\";s:25:\"injectExtensionRepository\";s:64:\"TYPO3\\CMS\\Extensionmanager\\Domain\\Repository\\ExtensionRepository\";s:20:\"injectPackageManager\";s:37:\"TYPO3\\CMS\\Core\\Package\\PackageManager\";s:18:\"injectCacheManager\";s:33:\"TYPO3\\CMS\\Core\\Cache\\CacheManager\";s:26:\"injectSignalSlotDispatcher\";s:39:\"TYPO3\\CMS\\Extbase\\SignalSlot\\Dispatcher\";s:14:\"injectRegistry\";s:23:\"TYPO3\\CMS\\Core\\Registry\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(85,'f7da73b42950c32b2a962395ceb60b8d',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:51:\"TYPO3\\CMS\\Install\\Service\\SqlSchemaMigrationService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(86,'b69f7cb4efaad2b53a9f33bf569ecd84',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:52:\"TYPO3\\CMS\\Extensionmanager\\Utility\\DependencyUtility\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:5:{s:19:\"injectObjectManager\";s:38:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManager\";s:25:\"injectExtensionRepository\";s:64:\"TYPO3\\CMS\\Extensionmanager\\Domain\\Repository\\ExtensionRepository\";s:17:\"injectListUtility\";s:46:\"TYPO3\\CMS\\Extensionmanager\\Utility\\ListUtility\";s:19:\"injectEmConfUtility\";s:48:\"TYPO3\\CMS\\Extensionmanager\\Utility\\EmConfUtility\";s:23:\"injectManagementService\";s:61:\"TYPO3\\CMS\\Extensionmanager\\Service\\ExtensionManagementService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(87,'396227459a1d17cda055799a07823f15',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:61:\"TYPO3\\CMS\\Extensionmanager\\Service\\ExtensionManagementService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:5:{s:19:\"injectDownloadQueue\";s:53:\"TYPO3\\CMS\\Extensionmanager\\Domain\\Model\\DownloadQueue\";s:23:\"injectDependencyUtility\";s:52:\"TYPO3\\CMS\\Extensionmanager\\Utility\\DependencyUtility\";s:20:\"injectInstallUtility\";s:49:\"TYPO3\\CMS\\Extensionmanager\\Utility\\InstallUtility\";s:27:\"injectExtensionModelUtility\";s:56:\"TYPO3\\CMS\\Extensionmanager\\Utility\\ExtensionModelUtility\";s:21:\"injectDownloadUtility\";s:50:\"TYPO3\\CMS\\Extensionmanager\\Utility\\DownloadUtility\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(88,'f20912d973eabb8b51785dc068f82d1a',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:53:\"TYPO3\\CMS\\Extensionmanager\\Domain\\Model\\DownloadQueue\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:17:\"injectListUtility\";s:46:\"TYPO3\\CMS\\Extensionmanager\\Utility\\ListUtility\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(89,'0f95da40cd7afd91889a2f5e35d16da5',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:56:\"TYPO3\\CMS\\Extensionmanager\\Utility\\ExtensionModelUtility\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:19:\"injectObjectManager\";s:38:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManager\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(90,'9d3ef9b2cd9ef473fff094bdd5fed184',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:50:\"TYPO3\\CMS\\Extensionmanager\\Utility\\DownloadUtility\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:3:{s:16:\"injectTerUtility\";s:56:\"TYPO3\\CMS\\Extensionmanager\\Utility\\Connection\\TerUtility\";s:22:\"injectRepositoryHelper\";s:52:\"TYPO3\\CMS\\Extensionmanager\\Utility\\Repository\\Helper\";s:25:\"injectFileHandlingUtility\";s:54:\"TYPO3\\CMS\\Extensionmanager\\Utility\\FileHandlingUtility\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(91,'169cb5a02eb643cbf852f79f2a3c5aa2',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:56:\"TYPO3\\CMS\\Extensionmanager\\Utility\\Connection\\TerUtility\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:26:\"injectConfigurationUtility\";s:55:\"TYPO3\\CMS\\Extensionmanager\\Utility\\ConfigurationUtility\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(92,'ac1fb600d327a78112d7957f63c9cb13',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:55:\"TYPO3\\CMS\\Extensionmanager\\Utility\\ConfigurationUtility\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:19:\"injectObjectManager\";s:38:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManager\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(93,'b934231d705dee7bd84cc103fa3fc389',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:52:\"TYPO3\\CMS\\Extensionmanager\\Utility\\Repository\\Helper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(94,'25dd3c6f44822869a9d818c1b23b2f56',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:65:\"TYPO3\\CMS\\Extensionmanager\\Domain\\Repository\\RepositoryRepository\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:2:{s:4:\"name\";s:13:\"objectManager\";s:10:\"dependency\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:24:\"injectPersistenceManager\";s:57:\"TYPO3\\CMS\\Extbase\\Persistence\\PersistenceManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(95,'0c9864d50540c5c98ef6e9b2dd7e2762',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:43:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Query\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:1:{s:4:\"name\";s:4:\"type\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:4:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:16:\"injectDataMapper\";s:55:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapper\";s:24:\"injectPersistenceManager\";s:57:\"TYPO3\\CMS\\Extbase\\Persistence\\PersistenceManagerInterface\";s:16:\"injectQomFactory\";s:65:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Qom\\QueryObjectModelFactory\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(96,'48f018e2873c2af1edd116918ebb6f2c',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:52:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMap\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:4:{i:0;a:1:{s:4:\"name\";s:9:\"className\";}i:1;a:1:{s:4:\"name\";s:9:\"tableName\";}i:2;a:2:{s:4:\"name\";s:10:\"recordType\";s:12:\"defaultValue\";N;}i:3;a:2:{s:4:\"name\";s:10:\"subclasses\";s:12:\"defaultValue\";a:0:{}}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(97,'9d8fa21d3f4c3a4f8c86686a248c4e46',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:2:{i:0;a:1:{s:4:\"name\";s:10:\"columnName\";}i:1;a:1:{s:4:\"name\";s:12:\"propertyName\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(98,'513918375379c108c2e5ced6ccfaff81',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:40:\"TYPO3\\CMS\\Extbase\\Reflection\\ClassSchema\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:1:{s:4:\"name\";s:9:\"className\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(99,'eaa726cb847b952868ce51ad1debc96a',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:50:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Qom\\Selector\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:2:{i:0;a:1:{s:4:\"name\";s:12:\"selectorName\";}i:1;a:1:{s:4:\"name\";s:12:\"nodeTypeName\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(100,'7c21c2d2a455b835f75713bb67fdb586',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:55:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Qom\\PropertyValue\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:2:{i:0;a:1:{s:4:\"name\";s:12:\"propertyName\";}i:1;a:2:{s:4:\"name\";s:12:\"selectorName\";s:12:\"defaultValue\";s:0:\"\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(101,'22e28d47dccc46a73e42571e1c148930',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:52:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Qom\\Comparison\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:3:{i:0;a:2:{s:4:\"name\";s:8:\"operand1\";s:10:\"dependency\";s:64:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Qom\\PropertyValueInterface\";}i:1;a:1:{s:4:\"name\";s:8:\"operator\";}i:2;a:1:{s:4:\"name\";s:8:\"operand2\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(102,'6a53dafc39e8ae9870a1dc56f0f3f129',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:49:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\QueryResult\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:2:{s:4:\"name\";s:5:\"query\";s:10:\"dependency\";s:44:\"TYPO3\\CMS\\Extbase\\Persistence\\QueryInterface\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:16:\"injectDataMapper\";s:55:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapper\";s:24:\"injectPersistenceManager\";s:57:\"TYPO3\\CMS\\Extbase\\Persistence\\PersistenceManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(103,'29afe09069975b1208d85be2e28fe9e7',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:64:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Storage\\Typo3DbQueryParser\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:16:\"injectDataMapper\";s:55:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapper\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(104,'7450d9f728de4c6cb19d97ce1d421fc6',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:50:\"TYPO3\\CMS\\Extensionmanager\\Domain\\Model\\Repository\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(105,'a5de9c163fc78dbfc6793b73d5d98ad7',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:54:\"TYPO3\\CMS\\Extensionmanager\\Utility\\FileHandlingUtility\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:3:{s:19:\"injectEmConfUtility\";s:48:\"TYPO3\\CMS\\Extensionmanager\\Utility\\EmConfUtility\";s:20:\"injectInstallUtility\";s:49:\"TYPO3\\CMS\\Extensionmanager\\Utility\\InstallUtility\";s:21:\"injectLanguageService\";s:30:\"TYPO3\\CMS\\Lang\\LanguageService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(106,'da89ed86a53d0502f4468a2b4628e07d',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:30:\"TYPO3\\CMS\\Lang\\LanguageService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(107,'320446e1479fdf99816cd396568eb495',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:50:\"TYPO3\\CMS\\Extensionmanager\\Utility\\DatabaseUtility\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(108,'8771699b46c3febd7d82eeed0a8e0784',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:23:\"TYPO3\\CMS\\Core\\Registry\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(109,'2bc56f5668cc79b9311461b9a0de6227',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:32:\"TYPO3\\CMS\\Core\\Page\\PageRenderer\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:2:{s:4:\"name\";s:12:\"templateFile\";s:12:\"defaultValue\";s:0:\"\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(110,'5d58ff385d851c4649503e2a64ee158d',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:43:\"TYPO3\\CMS\\Core\\TypoScript\\ConfigurationForm\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(111,'398490ca09566ce7d15d9b0e8b7b28bd',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:42:\"TYPO3\\CMS\\Backend\\View\\BackendTemplateView\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:20:\"injectModuleTemplate\";s:41:\"TYPO3\\CMS\\Backend\\Template\\ModuleTemplate\";s:18:\"injectTemplateView\";s:33:\"TYPO3\\CMS\\Fluid\\View\\TemplateView\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(112,'aabcbf9e423b68fbca941d3825d9403d',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:41:\"TYPO3\\CMS\\Backend\\Template\\ModuleTemplate\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(113,'b7435caf112d881773a587972170ccea',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:33:\"TYPO3\\CMS\\Fluid\\View\\TemplateView\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:3:{s:4:\"name\";s:7:\"context\";s:10:\"dependency\";s:57:\"TYPO3Fluid\\Fluid\\Core\\Rendering\\RenderingContextInterface\";s:12:\"defaultValue\";N;}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(114,'54672acf56e913fcba34f51662cf8320',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:52:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Qom\\LogicalAnd\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:2:{i:0;a:2:{s:4:\"name\";s:11:\"constraint1\";s:10:\"dependency\";s:61:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Qom\\ConstraintInterface\";}i:1;a:2:{s:4:\"name\";s:11:\"constraint2\";s:10:\"dependency\";s:61:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Qom\\ConstraintInterface\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(115,'affa711f8586606a74d534366d590b82',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:52:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Form\\TextfieldViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:4:{s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:24:\"injectPersistenceManager\";s:57:\"TYPO3\\CMS\\Extbase\\Persistence\\PersistenceManagerInterface\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(116,'4dbded97c05bcb5013605f4afc61abb0',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:49:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Link\\ActionViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(117,'c9d95899c7aef4e4984244f794355b54',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:81:\"TYPO3\\CMS\\Extensionmanager\\ViewHelpers\\ToggleExtensionInstallationStateViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(118,'bdd29f301692ed29f70e668c16896b36',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:67:\"TYPO3\\CMS\\Extensionmanager\\ViewHelpers\\ConfigureExtensionViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(119,'7d2c0ae670a793178a654e495cf1e25b',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:72:\"TYPO3\\CMS\\Extensionmanager\\ViewHelpers\\ProcessAvailableActionsViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:3:{s:26:\"injectSignalSlotDispatcher\";s:39:\"TYPO3\\CMS\\Extbase\\SignalSlot\\Dispatcher\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(120,'a818f59acfa5a15b0800436b0d2db783',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:61:\"TYPO3\\CMS\\Extensionmanager\\ViewHelpers\\UpdateScriptViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(121,'3076d3756a0a04b1ce71b266caa5dd47',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:64:\"TYPO3\\CMS\\Extensionmanager\\ViewHelpers\\RemoveExtensionViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(122,'495f56761136ec82ab94ccece6630465',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:62:\"TYPO3\\CMS\\Extensionmanager\\ViewHelpers\\ReloadSqlDataViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(123,'92bd55274ef00f40372278a239ae21c4',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:53:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Be\\PageRendererViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:3:{s:18:\"injectPageRenderer\";s:32:\"TYPO3\\CMS\\Core\\Page\\PageRenderer\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(124,'3a710b30068bc95a62039aab140eed62',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:59:\"TYPO3\\CMS\\Extensionmanager\\ViewHelpers\\Be\\TriggerViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(125,'1d84327be239eebf58cbb0d937011664',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:54:\"TYPO3\\CMS\\Extensionmanager\\Utility\\UpdateScriptUtility\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(126,'23e891537983bb39d4af616ad1f3fae7',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:46:\"TYPO3\\CMS\\Documentation\\Slots\\ExtensionManager\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(127,'d4ca8644206832ff38cec665cc8db1b7',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:53:\"TYPO3\\CMS\\Documentation\\Controller\\DocumentController\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:10:{s:24:\"injectDocumentRepository\";s:60:\"TYPO3\\CMS\\Documentation\\Domain\\Repository\\DocumentRepository\";s:26:\"injectDocumentationService\";s:52:\"TYPO3\\CMS\\Documentation\\Service\\DocumentationService\";s:21:\"injectLanguageUtility\";s:47:\"TYPO3\\CMS\\Documentation\\Utility\\LanguageUtility\";s:26:\"injectSignalSlotDispatcher\";s:39:\"TYPO3\\CMS\\Extbase\\SignalSlot\\Dispatcher\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:18:\"injectCacheService\";s:38:\"TYPO3\\CMS\\Extbase\\Service\\CacheService\";s:44:\"injectMvcPropertyMappingConfigurationService\";s:71:\"TYPO3\\CMS\\Extbase\\Mvc\\Controller\\MvcPropertyMappingConfigurationService\";s:23:\"injectValidatorResolver\";s:46:\"TYPO3\\CMS\\Extbase\\Validation\\ValidatorResolver\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(128,'eccde8fa54d9e6a8eead00d93b786cfb',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:60:\"TYPO3\\CMS\\Documentation\\Domain\\Repository\\DocumentRepository\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(129,'a3738132bbe3b611ec26cc7cb9b35c76',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:52:\"TYPO3\\CMS\\Documentation\\Service\\DocumentationService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(130,'c81318d3a27851529891709874fffc81',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:47:\"TYPO3\\CMS\\Documentation\\Utility\\LanguageUtility\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(131,'0a2c329eb2c8346be16fcb86e5609437',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:51:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\FlashMessagesViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}');
/*!40000 ALTER TABLE `cf_extbase_object` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_object_tags`
--

DROP TABLE IF EXISTS `cf_extbase_object_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_object_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_object_tags`
--

LOCK TABLES `cf_extbase_object_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_object_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_object_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_reflection`
--

DROP TABLE IF EXISTS `cf_extbase_reflection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_reflection` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_reflection`
--

LOCK TABLES `cf_extbase_reflection` WRITE;
/*!40000 ALTER TABLE `cf_extbase_reflection` DISABLE KEYS */;
INSERT INTO `cf_extbase_reflection` VALUES (1,'ReflectionData_Extensionmanager',2145909600,'a:9:{s:19:\"reflectedClassNames\";a:2:{s:49:\"TYPO3\\CMS\\Extensionmanager\\Domain\\Model\\Extension\";i:1508755228;s:50:\"TYPO3\\CMS\\Extensionmanager\\Domain\\Model\\Repository\";i:1508755228;}s:18:\"classPropertyNames\";a:2:{s:50:\"TYPO3\\CMS\\Extensionmanager\\Domain\\Model\\Repository\";a:12:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:13:\"mirrorListUrl\";i:3;s:7:\"mirrors\";i:4;s:7:\"wsdlUrl\";i:5;s:10:\"lastUpdate\";i:6;s:14:\"extensionCount\";i:7;s:3:\"uid\";i:8;s:13:\"_localizedUid\";i:9;s:12:\"_languageUid\";i:10;s:13:\"_versionedUid\";i:11;s:3:\"pid\";}s:49:\"TYPO3\\CMS\\Extensionmanager\\Domain\\Model\\Extension\";a:26:{i:0;s:17:\"defaultCategories\";i:1;s:13:\"defaultStates\";i:2;s:13:\"objectManager\";i:3;s:12:\"extensionKey\";i:4;s:7:\"version\";i:5;s:14:\"integerVersion\";i:6;s:5:\"title\";i:7;s:11:\"description\";i:8;s:5:\"state\";i:9;s:8:\"category\";i:10;s:11:\"lastUpdated\";i:11;s:13:\"updateComment\";i:12;s:10:\"authorName\";i:13;s:11:\"authorEmail\";i:14;s:14:\"currentVersion\";i:15;s:7:\"md5hash\";i:16;s:11:\"reviewState\";i:17;s:18:\"alldownloadcounter\";i:18;s:22:\"serializedDependencies\";i:19;s:12:\"dependencies\";i:20;s:8:\"position\";i:21;s:3:\"uid\";i:22;s:13:\"_localizedUid\";i:23;s:12:\"_languageUid\";i:24;s:13:\"_versionedUid\";i:25;s:3:\"pid\";}}s:16:\"classMethodNames\";a:0:{}s:15:\"classTagsValues\";a:0:{}s:16:\"methodTagsValues\";a:5:{s:50:\"TYPO3\\CMS\\Extensionmanager\\Domain\\Model\\Repository\";a:33:{s:8:\"getTitle\";a:3:{s:6:\"access\";a:1:{i:0;s:6:\"public\";}s:6:\"return\";a:1:{i:0;s:26:\"string title of repository\";}s:3:\"see\";a:1:{i:0;s:18:\"$title, setTitle()\";}}s:8:\"setTitle\";a:3:{s:6:\"access\";a:1:{i:0;s:6:\"public\";}s:5:\"param\";a:1:{i:0;s:40:\"string $title title of repository to set\";}s:3:\"see\";a:1:{i:0;s:18:\"$title, getTitle()\";}}s:14:\"getDescription\";a:3:{s:6:\"access\";a:1:{i:0;s:6:\"public\";}s:6:\"return\";a:1:{i:0;s:26:\"string title of repository\";}s:3:\"see\";a:1:{i:0;s:18:\"$title, setTitle()\";}}s:14:\"setDescription\";a:2:{s:6:\"access\";a:1:{i:0;s:6:\"public\";}s:5:\"param\";a:1:{i:0;s:46:\"string $description title of repository to set\";}}s:16:\"getMirrorListUrl\";a:3:{s:6:\"access\";a:1:{i:0;s:6:\"public\";}s:6:\"return\";a:1:{i:0;s:51:\"string URL of file that contains repository mirrors\";}s:3:\"see\";a:1:{i:0;s:34:\"$mirrorListUrl, getMirrorListUrl()\";}}s:16:\"setMirrorListUrl\";a:3:{s:6:\"access\";a:1:{i:0;s:6:\"public\";}s:5:\"param\";a:1:{i:0;s:56:\"string $url URL of file that contains repository mirrors\";}s:3:\"see\";a:1:{i:0;s:34:\"$mirrorListUrl, getMirrorListUrl()\";}}s:10:\"getWsdlUrl\";a:3:{s:6:\"access\";a:1:{i:0;s:6:\"public\";}s:6:\"return\";a:1:{i:0;s:29:\"string URL of repository WSDL\";}s:3:\"see\";a:1:{i:0;s:22:\"$wsdlUrl, setWsdlUrl()\";}}s:10:\"setWsdlUrl\";a:2:{s:5:\"param\";a:1:{i:0;s:34:\"string $url URL of repository WSDL\";}s:3:\"see\";a:1:{i:0;s:22:\"$wsdlUrl, getWsdlUrl()\";}}s:13:\"getLastUpdate\";a:2:{s:6:\"access\";a:1:{i:0;s:6:\"public\";}s:6:\"return\";a:1:{i:0;s:34:\"\\DateTime timestamp of last update\";}}s:13:\"setLastUpdate\";a:2:{s:6:\"access\";a:1:{i:0;s:6:\"public\";}s:5:\"param\";a:1:{i:0;s:38:\"\\DateTime $time URL of repository WSDL\";}}s:17:\"getExtensionCount\";a:2:{s:6:\"access\";a:1:{i:0;s:6:\"public\";}s:6:\"return\";a:1:{i:0;s:28:\"int count of read extensions\";}}s:17:\"setExtensionCount\";a:2:{s:6:\"access\";a:1:{i:0;s:6:\"public\";}s:5:\"param\";a:1:{i:0;s:38:\"string $count count of read extensions\";}}s:10:\"addMirrors\";a:3:{s:6:\"access\";a:1:{i:0;s:6:\"public\";}s:5:\"param\";a:1:{i:0;s:69:\"\\TYPO3\\CMS\\Extensionmanager\\Domain\\Model\\Mirrors $mirrors mirror list\";}s:3:\"see\";a:1:{i:0;s:53:\"$mirrors, getMirrors(), hasMirrors(), removeMirrors()\";}}s:10:\"hasMirrors\";a:3:{s:6:\"access\";a:1:{i:0;s:6:\"public\";}s:6:\"return\";a:1:{i:0;s:78:\"bool TRUE, if a repository mirrors object has been registered, otherwise FALSE\";}s:3:\"see\";a:1:{i:0;s:53:\"$mirrors, addMirrors(), getMirrors(), removeMirrors()\";}}s:10:\"getMirrors\";a:3:{s:6:\"access\";a:1:{i:0;s:6:\"public\";}s:6:\"return\";a:1:{i:0;s:71:\"\\TYPO3\\CMS\\Extensionmanager\\Domain\\Model\\Mirrors mirrors for repository\";}s:3:\"see\";a:1:{i:0;s:53:\"$mirrors, addMirrors(), hasMirrors(), removeMirrors()\";}}s:13:\"removeMirrors\";a:2:{s:6:\"access\";a:1:{i:0;s:6:\"public\";}s:3:\"see\";a:1:{i:0;s:50:\"$mirrors, addMirrors(), getMirrors(), hasMirrors()\";}}s:6:\"getUid\";a:1:{s:6:\"return\";a:1:{i:0;s:36:\"int the uid or NULL if none set yet.\";}}s:6:\"setPid\";a:1:{s:5:\"param\";a:1:{i:0;s:13:\"int|NULL $pid\";}}s:6:\"getPid\";a:1:{s:6:\"return\";a:1:{i:0;s:36:\"int The pid or NULL if none set yet.\";}}s:12:\"_setProperty\";a:2:{s:5:\"param\";a:2:{i:0;s:20:\"string $propertyName\";i:1;s:20:\"mixed $propertyValue\";}s:6:\"return\";a:1:{i:0;s:4:\"bool\";}}s:12:\"_getProperty\";a:2:{s:5:\"param\";a:1:{i:0;s:20:\"string $propertyName\";}s:6:\"return\";a:1:{i:0;s:23:\"mixed The propertyValue\";}}s:14:\"_getProperties\";a:1:{s:6:\"return\";a:1:{i:0;s:20:\"array The properties\";}}s:12:\"_hasProperty\";a:2:{s:5:\"param\";a:1:{i:0;s:20:\"string $propertyName\";}s:6:\"return\";a:1:{i:0;s:98:\"bool TRUE bool true if the property exists, FALSE if it doesn\'t exist or NULL in case of an error.\";}}s:6:\"_isNew\";a:1:{s:6:\"return\";a:1:{i:0;s:4:\"bool\";}}s:19:\"_memorizeCleanState\";a:1:{s:5:\"param\";a:1:{i:0;s:115:\"string $propertyName The name of the property to be memorized. If omitted all persistable properties are memorized.\";}}s:27:\"_memorizePropertyCleanState\";a:1:{s:5:\"param\";a:1:{i:0;s:115:\"string $propertyName The name of the property to be memorized. If omittet all persistable properties are memorized.\";}}s:19:\"_getCleanProperties\";a:1:{s:6:\"return\";a:1:{i:0;s:5:\"array\";}}s:17:\"_getCleanProperty\";a:2:{s:5:\"param\";a:1:{i:0;s:62:\"string $propertyName The name of the property to be memorized.\";}s:6:\"return\";a:1:{i:0;s:38:\"mixed The clean property value or NULL\";}}s:8:\"_isDirty\";a:3:{s:5:\"param\";a:1:{i:0;s:87:\"string $propertyName An optional name of a property to be checked if its value is dirty\";}s:6:\"throws\";a:1:{i:0;s:66:\"\\TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Exception\\TooDirtyException\";}s:6:\"return\";a:1:{i:0;s:4:\"bool\";}}s:15:\"isPropertyDirty\";a:2:{s:5:\"param\";a:2:{i:0;s:20:\"mixed $previousValue\";i:1;s:19:\"mixed $currentValue\";}s:6:\"return\";a:1:{i:0;s:4:\"bool\";}}s:8:\"_isClone\";a:1:{s:6:\"return\";a:1:{i:0;s:39:\"bool TRUE if the object has been cloned\";}}s:9:\"_setClone\";a:1:{s:5:\"param\";a:1:{i:0;s:11:\"bool $clone\";}}s:10:\"__toString\";a:1:{s:6:\"return\";a:1:{i:0;s:6:\"string\";}}}s:51:\"TYPO3\\CMS\\Extbase\\DomainObject\\AbstractDomainObject\";a:10:{s:6:\"setPid\";a:1:{s:5:\"param\";a:1:{i:0;s:13:\"int|NULL $pid\";}}s:12:\"_setProperty\";a:2:{s:5:\"param\";a:2:{i:0;s:20:\"string $propertyName\";i:1;s:20:\"mixed $propertyValue\";}s:6:\"return\";a:1:{i:0;s:4:\"bool\";}}s:12:\"_getProperty\";a:2:{s:5:\"param\";a:1:{i:0;s:20:\"string $propertyName\";}s:6:\"return\";a:1:{i:0;s:23:\"mixed The propertyValue\";}}s:12:\"_hasProperty\";a:2:{s:5:\"param\";a:1:{i:0;s:20:\"string $propertyName\";}s:6:\"return\";a:1:{i:0;s:98:\"bool TRUE bool true if the property exists, FALSE if it doesn\'t exist or NULL in case of an error.\";}}s:19:\"_memorizeCleanState\";a:1:{s:5:\"param\";a:1:{i:0;s:115:\"string $propertyName The name of the property to be memorized. If omitted all persistable properties are memorized.\";}}s:27:\"_memorizePropertyCleanState\";a:1:{s:5:\"param\";a:1:{i:0;s:115:\"string $propertyName The name of the property to be memorized. If omittet all persistable properties are memorized.\";}}s:17:\"_getCleanProperty\";a:2:{s:5:\"param\";a:1:{i:0;s:62:\"string $propertyName The name of the property to be memorized.\";}s:6:\"return\";a:1:{i:0;s:38:\"mixed The clean property value or NULL\";}}s:8:\"_isDirty\";a:3:{s:5:\"param\";a:1:{i:0;s:87:\"string $propertyName An optional name of a property to be checked if its value is dirty\";}s:6:\"throws\";a:1:{i:0;s:66:\"\\TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Exception\\TooDirtyException\";}s:6:\"return\";a:1:{i:0;s:4:\"bool\";}}s:15:\"isPropertyDirty\";a:2:{s:5:\"param\";a:2:{i:0;s:20:\"mixed $previousValue\";i:1;s:19:\"mixed $currentValue\";}s:6:\"return\";a:1:{i:0;s:4:\"bool\";}}s:9:\"_setClone\";a:1:{s:5:\"param\";a:1:{i:0;s:11:\"bool $clone\";}}}s:52:\"TYPO3\\CMS\\Extensionmanager\\Controller\\ListController\";a:4:{s:28:\"unresolvedDependenciesAction\";a:2:{s:5:\"param\";a:1:{i:0;s:20:\"string $extensionKey\";}s:6:\"throws\";a:1:{i:0;s:25:\"ExtensionManagerException\";}}s:9:\"terAction\";a:1:{s:5:\"param\";a:1:{i:0;s:14:\"string $search\";}}s:19:\"distributionsAction\";a:1:{s:5:\"param\";a:1:{i:0;s:33:\"bool $showUnsuitableDistributions\";}}s:21:\"showAllVersionsAction\";a:1:{s:5:\"param\";a:1:{i:0;s:20:\"string $extensionKey\";}}}s:49:\"TYPO3\\CMS\\Extensionmanager\\Domain\\Model\\Extension\";a:62:{s:19:\"injectObjectManager\";a:1:{s:5:\"param\";a:1:{i:0;s:54:\"\\TYPO3\\CMS\\Extbase\\Object\\ObjectManager $objectManager\";}}s:14:\"setAuthorEmail\";a:1:{s:5:\"param\";a:1:{i:0;s:19:\"string $authorEmail\";}}s:14:\"getAuthorEmail\";a:1:{s:6:\"return\";a:1:{i:0;s:6:\"string\";}}s:13:\"setAuthorName\";a:1:{s:5:\"param\";a:1:{i:0;s:18:\"string $authorName\";}}s:13:\"getAuthorName\";a:1:{s:6:\"return\";a:1:{i:0;s:6:\"string\";}}s:11:\"setCategory\";a:1:{s:5:\"param\";a:1:{i:0;s:13:\"int $category\";}}s:11:\"getCategory\";a:1:{s:6:\"return\";a:1:{i:0;s:3:\"int\";}}s:17:\"getCategoryString\";a:1:{s:6:\"return\";a:1:{i:0;s:6:\"string\";}}s:34:\"getCategoryIndexFromStringOrNumber\";a:2:{s:5:\"param\";a:1:{i:0;s:47:\"string|int $category Category string or integer\";}s:6:\"return\";a:1:{i:0;s:24:\"int Valid category index\";}}s:14:\"setDescription\";a:1:{s:5:\"param\";a:1:{i:0;s:19:\"string $description\";}}s:14:\"getDescription\";a:1:{s:6:\"return\";a:1:{i:0;s:6:\"string\";}}s:15:\"setExtensionKey\";a:1:{s:5:\"param\";a:1:{i:0;s:20:\"string $extensionKey\";}}s:15:\"getExtensionKey\";a:1:{s:6:\"return\";a:1:{i:0;s:6:\"string\";}}s:14:\"setLastUpdated\";a:1:{s:5:\"param\";a:1:{i:0;s:22:\"\\DateTime $lastUpdated\";}}s:14:\"getLastUpdated\";a:1:{s:6:\"return\";a:1:{i:0;s:9:\"\\DateTime\";}}s:8:\"setState\";a:1:{s:5:\"param\";a:1:{i:0;s:10:\"int $state\";}}s:8:\"getState\";a:1:{s:6:\"return\";a:1:{i:0;s:3:\"int\";}}s:14:\"getStateString\";a:1:{s:6:\"return\";a:1:{i:0;s:6:\"string\";}}s:15:\"getDefaultState\";a:2:{s:5:\"param\";a:1:{i:0;s:39:\"mixed $state state title or state index\";}s:6:\"return\";a:1:{i:0;s:5:\"mixed\";}}s:8:\"setTitle\";a:1:{s:5:\"param\";a:1:{i:0;s:13:\"string $title\";}}s:8:\"getTitle\";a:1:{s:6:\"return\";a:1:{i:0;s:6:\"string\";}}s:16:\"setUpdateComment\";a:1:{s:5:\"param\";a:1:{i:0;s:21:\"string $updateComment\";}}s:16:\"getUpdateComment\";a:1:{s:6:\"return\";a:1:{i:0;s:6:\"string\";}}s:10:\"setVersion\";a:1:{s:5:\"param\";a:1:{i:0;s:15:\"string $version\";}}s:10:\"getVersion\";a:1:{s:6:\"return\";a:1:{i:0;s:6:\"string\";}}s:17:\"setCurrentVersion\";a:1:{s:5:\"param\";a:1:{i:0;s:20:\"bool $currentVersion\";}}s:17:\"getCurrentVersion\";a:1:{s:6:\"return\";a:1:{i:0;s:4:\"bool\";}}s:10:\"setMd5hash\";a:1:{s:5:\"param\";a:1:{i:0;s:15:\"string $md5hash\";}}s:10:\"getMd5hash\";a:1:{s:6:\"return\";a:1:{i:0;s:6:\"string\";}}s:18:\"returnInstallPaths\";a:2:{s:6:\"static\";a:0:{}s:6:\"return\";a:1:{i:0;s:5:\"array\";}}s:25:\"returnAllowedInstallPaths\";a:2:{s:6:\"static\";a:0:{}s:6:\"return\";a:1:{i:0;s:5:\"array\";}}s:25:\"returnAllowedInstallTypes\";a:2:{s:6:\"static\";a:0:{}s:6:\"return\";a:1:{i:0;s:5:\"array\";}}s:25:\"setSerializedDependencies\";a:1:{s:5:\"param\";a:1:{i:0;s:20:\"string $dependencies\";}}s:25:\"getSerializedDependencies\";a:1:{s:6:\"return\";a:1:{i:0;s:6:\"string\";}}s:15:\"setDependencies\";a:1:{s:5:\"param\";a:1:{i:0;s:31:\"\\SplObjectStorage $dependencies\";}}s:15:\"getDependencies\";a:1:{s:6:\"return\";a:1:{i:0;s:17:\"\\SplObjectStorage\";}}s:13:\"addDependency\";a:1:{s:5:\"param\";a:1:{i:0;s:63:\"\\TYPO3\\CMS\\Extensionmanager\\Domain\\Model\\Dependency $dependency\";}}s:17:\"setIntegerVersion\";a:1:{s:5:\"param\";a:1:{i:0;s:19:\"int $integerVersion\";}}s:17:\"getIntegerVersion\";a:1:{s:6:\"return\";a:1:{i:0;s:3:\"int\";}}s:14:\"setReviewState\";a:1:{s:5:\"param\";a:1:{i:0;s:16:\"int $reviewState\";}}s:14:\"getReviewState\";a:1:{s:6:\"return\";a:1:{i:0;s:3:\"int\";}}s:11:\"setPosition\";a:1:{s:5:\"param\";a:1:{i:0;s:13:\"int $position\";}}s:11:\"getPosition\";a:1:{s:6:\"return\";a:1:{i:0;s:3:\"int\";}}s:21:\"setAlldownloadcounter\";a:1:{s:5:\"param\";a:1:{i:0;s:23:\"int $alldownloadcounter\";}}s:21:\"getAlldownloadcounter\";a:1:{s:6:\"return\";a:1:{i:0;s:3:\"int\";}}s:6:\"getUid\";a:1:{s:6:\"return\";a:1:{i:0;s:36:\"int the uid or NULL if none set yet.\";}}s:6:\"setPid\";a:1:{s:5:\"param\";a:1:{i:0;s:13:\"int|NULL $pid\";}}s:6:\"getPid\";a:1:{s:6:\"return\";a:1:{i:0;s:36:\"int The pid or NULL if none set yet.\";}}s:12:\"_setProperty\";a:2:{s:5:\"param\";a:2:{i:0;s:20:\"string $propertyName\";i:1;s:20:\"mixed $propertyValue\";}s:6:\"return\";a:1:{i:0;s:4:\"bool\";}}s:12:\"_getProperty\";a:2:{s:5:\"param\";a:1:{i:0;s:20:\"string $propertyName\";}s:6:\"return\";a:1:{i:0;s:23:\"mixed The propertyValue\";}}s:14:\"_getProperties\";a:1:{s:6:\"return\";a:1:{i:0;s:20:\"array The properties\";}}s:12:\"_hasProperty\";a:2:{s:5:\"param\";a:1:{i:0;s:20:\"string $propertyName\";}s:6:\"return\";a:1:{i:0;s:98:\"bool TRUE bool true if the property exists, FALSE if it doesn\'t exist or NULL in case of an error.\";}}s:6:\"_isNew\";a:1:{s:6:\"return\";a:1:{i:0;s:4:\"bool\";}}s:19:\"_memorizeCleanState\";a:1:{s:5:\"param\";a:1:{i:0;s:115:\"string $propertyName The name of the property to be memorized. If omitted all persistable properties are memorized.\";}}s:27:\"_memorizePropertyCleanState\";a:1:{s:5:\"param\";a:1:{i:0;s:115:\"string $propertyName The name of the property to be memorized. If omittet all persistable properties are memorized.\";}}s:19:\"_getCleanProperties\";a:1:{s:6:\"return\";a:1:{i:0;s:5:\"array\";}}s:17:\"_getCleanProperty\";a:2:{s:5:\"param\";a:1:{i:0;s:62:\"string $propertyName The name of the property to be memorized.\";}s:6:\"return\";a:1:{i:0;s:38:\"mixed The clean property value or NULL\";}}s:8:\"_isDirty\";a:3:{s:5:\"param\";a:1:{i:0;s:87:\"string $propertyName An optional name of a property to be checked if its value is dirty\";}s:6:\"throws\";a:1:{i:0;s:66:\"\\TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Exception\\TooDirtyException\";}s:6:\"return\";a:1:{i:0;s:4:\"bool\";}}s:15:\"isPropertyDirty\";a:2:{s:5:\"param\";a:2:{i:0;s:20:\"mixed $previousValue\";i:1;s:19:\"mixed $currentValue\";}s:6:\"return\";a:1:{i:0;s:4:\"bool\";}}s:8:\"_isClone\";a:1:{s:6:\"return\";a:1:{i:0;s:39:\"bool TRUE if the object has been cloned\";}}s:9:\"_setClone\";a:1:{s:5:\"param\";a:1:{i:0;s:11:\"bool $clone\";}}s:10:\"__toString\";a:1:{s:6:\"return\";a:1:{i:0;s:6:\"string\";}}}s:49:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Link\\ActionViewHelper\";a:1:{s:6:\"render\";a:2:{s:5:\"param\";a:17:{i:0;s:28:\"string $action Target action\";i:1;s:26:\"array $arguments Arguments\";i:2;s:76:\"string $controller Target controller. If NULL current controllerName is used\";i:3;s:129:\"string $extensionName Target Extension Name (without \"tx_\" prefix and no underscores). If NULL the current extension name is used\";i:4;s:75:\"string $pluginName Target plugin. If empty, the current plugin name is used\";i:5;s:50:\"int $pageUid target page. See TypoLink destination\";i:6;s:61:\"int $pageType type of the target page. See typolink.parameter\";i:7;s:88:\"bool $noCache set this to disable caching for the target page. You should not need this.\";i:8;s:111:\"bool $noCacheHash set this to suppress the cHash query parameter created by TypoLink. You should not need this.\";i:9;s:49:\"string $section the anchor to be added to the URI\";i:10;s:48:\"string $format The requested format, e.g. \".html\";i:11;s:150:\"bool $linkAccessRestrictedPages If set, links pointing to access restricted pages will still link to the page even though the page cannot be accessed.\";i:12;s:112:\"array $additionalParams additional query parameters that won\'t be prefixed like $arguments (overrule $arguments)\";i:13;s:63:\"bool $absolute If set, the URI of the rendered link is absolute\";i:14;s:81:\"bool $addQueryString If set, the current query parameters will be kept in the URI\";i:15;s:119:\"array $argumentsToBeExcludedFromQueryString arguments to be removed from the URI. Only active if $addQueryString = TRUE\";i:16;s:101:\"string $addQueryStringMethod Set which parameters will be kept. Only active if $addQueryString = TRUE\";}s:6:\"return\";a:1:{i:0;s:20:\"string Rendered link\";}}}}s:16:\"methodParameters\";a:16:{s:50:\"TYPO3\\CMS\\Extensionmanager\\Domain\\Model\\Repository\";a:17:{s:8:\"setTitle\";a:1:{s:5:\"title\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:14:\"setDescription\";a:1:{s:11:\"description\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:16:\"setMirrorListUrl\";a:1:{s:3:\"url\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:10:\"setWsdlUrl\";a:1:{s:3:\"url\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:13:\"setLastUpdate\";a:1:{s:4:\"time\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:0;s:5:\"class\";s:8:\"DateTime\";s:4:\"type\";s:8:\"DateTime\";}}s:17:\"setExtensionCount\";a:1:{s:5:\"count\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:10:\"addMirrors\";a:1:{s:7:\"mirrors\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:0;s:5:\"class\";s:47:\"TYPO3\\CMS\\Extensionmanager\\Domain\\Model\\Mirrors\";s:4:\"type\";s:47:\"TYPO3\\CMS\\Extensionmanager\\Domain\\Model\\Mirrors\";}}s:6:\"setPid\";a:1:{s:3:\"pid\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:8:\"int|NULL\";}}s:12:\"_setProperty\";a:2:{s:12:\"propertyName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}s:13:\"propertyValue\";a:7:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:5:\"mixed\";}}s:12:\"_getProperty\";a:1:{s:12:\"propertyName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:12:\"_hasProperty\";a:1:{s:12:\"propertyName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:19:\"_memorizeCleanState\";a:1:{s:12:\"propertyName\";a:8:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}}s:27:\"_memorizePropertyCleanState\";a:1:{s:12:\"propertyName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:17:\"_getCleanProperty\";a:1:{s:12:\"propertyName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:8:\"_isDirty\";a:1:{s:12:\"propertyName\";a:8:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}}s:15:\"isPropertyDirty\";a:2:{s:13:\"previousValue\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:5:\"mixed\";}s:12:\"currentValue\";a:7:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:5:\"mixed\";}}s:9:\"_setClone\";a:1:{s:5:\"clone\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:7:\"boolean\";}}}s:52:\"TYPO3\\CMS\\Extensionmanager\\Controller\\ListController\";a:7:{s:11:\"indexAction\";a:0:{}s:16:\"initializeAction\";a:0:{}s:28:\"unresolvedDependenciesAction\";a:1:{s:12:\"extensionKey\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:9:\"terAction\";a:1:{s:6:\"search\";a:8:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";s:0:\"\";s:4:\"type\";s:6:\"string\";}}s:19:\"distributionsAction\";a:1:{s:27:\"showUnsuitableDistributions\";a:8:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";b:0;s:4:\"type\";s:7:\"boolean\";}}s:21:\"showAllVersionsAction\";a:1:{s:12:\"extensionKey\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:11:\"errorAction\";a:0:{}}s:49:\"TYPO3\\CMS\\Extensionmanager\\Domain\\Model\\Extension\";a:32:{s:19:\"injectObjectManager\";a:1:{s:13:\"objectManager\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:0;s:5:\"class\";s:38:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManager\";s:4:\"type\";s:38:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManager\";}}s:14:\"setAuthorEmail\";a:1:{s:11:\"authorEmail\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:13:\"setAuthorName\";a:1:{s:10:\"authorName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:11:\"setCategory\";a:1:{s:8:\"category\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:7:\"integer\";}}s:34:\"getCategoryIndexFromStringOrNumber\";a:1:{s:8:\"category\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:10:\"string|int\";}}s:14:\"setDescription\";a:1:{s:11:\"description\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:15:\"setExtensionKey\";a:1:{s:12:\"extensionKey\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:14:\"setLastUpdated\";a:1:{s:11:\"lastUpdated\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:0;s:5:\"class\";s:8:\"DateTime\";s:4:\"type\";s:8:\"DateTime\";}}s:8:\"setState\";a:1:{s:5:\"state\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:7:\"integer\";}}s:15:\"getDefaultState\";a:1:{s:5:\"state\";a:8:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:5:\"mixed\";}}s:8:\"setTitle\";a:1:{s:5:\"title\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:16:\"setUpdateComment\";a:1:{s:13:\"updateComment\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:10:\"setVersion\";a:1:{s:7:\"version\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:17:\"setCurrentVersion\";a:1:{s:14:\"currentVersion\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:7:\"boolean\";}}s:10:\"setMd5hash\";a:1:{s:7:\"md5hash\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:25:\"setSerializedDependencies\";a:1:{s:12:\"dependencies\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:15:\"setDependencies\";a:1:{s:12:\"dependencies\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:16:\"SplObjectStorage\";}}s:13:\"addDependency\";a:1:{s:10:\"dependency\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:0;s:5:\"class\";s:50:\"TYPO3\\CMS\\Extensionmanager\\Domain\\Model\\Dependency\";s:4:\"type\";s:50:\"TYPO3\\CMS\\Extensionmanager\\Domain\\Model\\Dependency\";}}s:17:\"setIntegerVersion\";a:1:{s:14:\"integerVersion\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:7:\"integer\";}}s:14:\"setReviewState\";a:1:{s:11:\"reviewState\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:7:\"integer\";}}s:11:\"setPosition\";a:1:{s:8:\"position\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:7:\"integer\";}}s:21:\"setAlldownloadcounter\";a:1:{s:18:\"alldownloadcounter\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:7:\"integer\";}}s:6:\"setPid\";a:1:{s:3:\"pid\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:8:\"int|NULL\";}}s:12:\"_setProperty\";a:2:{s:12:\"propertyName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}s:13:\"propertyValue\";a:7:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:5:\"mixed\";}}s:12:\"_getProperty\";a:1:{s:12:\"propertyName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:12:\"_hasProperty\";a:1:{s:12:\"propertyName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:19:\"_memorizeCleanState\";a:1:{s:12:\"propertyName\";a:8:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}}s:27:\"_memorizePropertyCleanState\";a:1:{s:12:\"propertyName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:17:\"_getCleanProperty\";a:1:{s:12:\"propertyName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:8:\"_isDirty\";a:1:{s:12:\"propertyName\";a:8:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}}s:15:\"isPropertyDirty\";a:2:{s:13:\"previousValue\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:5:\"mixed\";}s:12:\"currentValue\";a:7:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:5:\"mixed\";}}s:9:\"_setClone\";a:1:{s:5:\"clone\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:7:\"boolean\";}}}s:47:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\TranslateViewHelper\";a:1:{s:6:\"render\";a:0:{}}s:52:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Form\\TextfieldViewHelper\";a:1:{s:6:\"render\";a:0:{}}s:41:\"TYPO3\\CMS\\Core\\ViewHelpers\\IconViewHelper\";a:1:{s:6:\"render\";a:0:{}}s:49:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Link\\ActionViewHelper\";a:1:{s:6:\"render\";a:17:{s:6:\"action\";a:8:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}s:9:\"arguments\";a:8:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:1;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:0;s:5:\"class\";N;s:12:\"defaultValue\";a:0:{}s:4:\"type\";s:5:\"array\";}s:10:\"controller\";a:8:{s:8:\"position\";i:2;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}s:13:\"extensionName\";a:8:{s:8:\"position\";i:3;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}s:10:\"pluginName\";a:8:{s:8:\"position\";i:4;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}s:7:\"pageUid\";a:8:{s:8:\"position\";i:5;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:7:\"integer\";}s:8:\"pageType\";a:8:{s:8:\"position\";i:6;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";i:0;s:4:\"type\";s:7:\"integer\";}s:7:\"noCache\";a:8:{s:8:\"position\";i:7;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";b:0;s:4:\"type\";s:7:\"boolean\";}s:11:\"noCacheHash\";a:8:{s:8:\"position\";i:8;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";b:0;s:4:\"type\";s:7:\"boolean\";}s:7:\"section\";a:8:{s:8:\"position\";i:9;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";s:0:\"\";s:4:\"type\";s:6:\"string\";}s:6:\"format\";a:8:{s:8:\"position\";i:10;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";s:0:\"\";s:4:\"type\";s:6:\"string\";}s:25:\"linkAccessRestrictedPages\";a:8:{s:8:\"position\";i:11;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";b:0;s:4:\"type\";s:7:\"boolean\";}s:16:\"additionalParams\";a:8:{s:8:\"position\";i:12;s:11:\"byReference\";b:0;s:5:\"array\";b:1;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:0;s:5:\"class\";N;s:12:\"defaultValue\";a:0:{}s:4:\"type\";s:5:\"array\";}s:8:\"absolute\";a:8:{s:8:\"position\";i:13;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";b:0;s:4:\"type\";s:7:\"boolean\";}s:14:\"addQueryString\";a:8:{s:8:\"position\";i:14;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";b:0;s:4:\"type\";s:7:\"boolean\";}s:36:\"argumentsToBeExcludedFromQueryString\";a:8:{s:8:\"position\";i:15;s:11:\"byReference\";b:0;s:5:\"array\";b:1;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:0;s:5:\"class\";N;s:12:\"defaultValue\";a:0:{}s:4:\"type\";s:5:\"array\";}s:20:\"addQueryStringMethod\";a:8:{s:8:\"position\";i:16;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}}}s:81:\"TYPO3\\CMS\\Extensionmanager\\ViewHelpers\\ToggleExtensionInstallationStateViewHelper\";a:1:{s:6:\"render\";a:0:{}}s:67:\"TYPO3\\CMS\\Extensionmanager\\ViewHelpers\\ConfigureExtensionViewHelper\";a:1:{s:6:\"render\";a:0:{}}s:72:\"TYPO3\\CMS\\Extensionmanager\\ViewHelpers\\ProcessAvailableActionsViewHelper\";a:1:{s:6:\"render\";a:0:{}}s:61:\"TYPO3\\CMS\\Extensionmanager\\ViewHelpers\\UpdateScriptViewHelper\";a:1:{s:6:\"render\";a:0:{}}s:64:\"TYPO3\\CMS\\Extensionmanager\\ViewHelpers\\RemoveExtensionViewHelper\";a:1:{s:6:\"render\";a:0:{}}s:62:\"TYPO3\\CMS\\Extensionmanager\\ViewHelpers\\ReloadSqlDataViewHelper\";a:1:{s:6:\"render\";a:0:{}}s:53:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Be\\PageRendererViewHelper\";a:1:{s:6:\"render\";a:0:{}}s:59:\"TYPO3\\CMS\\Extensionmanager\\ViewHelpers\\Be\\TriggerViewHelper\";a:1:{s:6:\"render\";a:0:{}}s:51:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\FlashMessagesViewHelper\";a:1:{s:6:\"render\";a:0:{}}}s:18:\"propertyTagsValues\";a:2:{s:50:\"TYPO3\\CMS\\Extensionmanager\\Domain\\Model\\Repository\";a:12:{s:5:\"title\";a:1:{s:3:\"var\";a:1:{i:0;s:6:\"string\";}}s:11:\"description\";a:1:{s:3:\"var\";a:1:{i:0;s:6:\"string\";}}s:13:\"mirrorListUrl\";a:1:{s:3:\"var\";a:1:{i:0;s:6:\"string\";}}s:7:\"mirrors\";a:1:{s:3:\"var\";a:1:{i:0;s:48:\"\\TYPO3\\CMS\\Extensionmanager\\Domain\\Model\\Mirrors\";}}s:7:\"wsdlUrl\";a:1:{s:3:\"var\";a:1:{i:0;s:6:\"string\";}}s:10:\"lastUpdate\";a:1:{s:3:\"var\";a:1:{i:0;s:9:\"\\DateTime\";}}s:14:\"extensionCount\";a:1:{s:3:\"var\";a:1:{i:0;s:6:\"string\";}}s:3:\"uid\";a:1:{s:3:\"var\";a:1:{i:0;s:87:\"int The uid of the record. The uid is only unique in the context of the database table.\";}}s:13:\"_localizedUid\";a:1:{s:3:\"var\";a:1:{i:0;s:142:\"int The uid of the localized record. In TYPO3 v4.x the property \"uid\" holds the uid of the record in default language (the translationOrigin).\";}}s:12:\"_languageUid\";a:1:{s:3:\"var\";a:1:{i:0;s:122:\"int The uid of the language of the object. In TYPO3 v4.x this is the uid of the language record in the table sys_language.\";}}s:13:\"_versionedUid\";a:1:{s:3:\"var\";a:1:{i:0;s:36:\"int The uid of the versioned record.\";}}s:3:\"pid\";a:1:{s:3:\"var\";a:1:{i:0;s:46:\"int The id of the page the record is \"stored\".\";}}}s:49:\"TYPO3\\CMS\\Extensionmanager\\Domain\\Model\\Extension\";a:26:{s:17:\"defaultCategories\";a:1:{s:3:\"var\";a:1:{i:0;s:5:\"array\";}}s:13:\"defaultStates\";a:1:{s:3:\"var\";a:1:{i:0;s:5:\"array\";}}s:13:\"objectManager\";a:1:{s:3:\"var\";a:1:{i:0;s:39:\"\\TYPO3\\CMS\\Extbase\\Object\\ObjectManager\";}}s:12:\"extensionKey\";a:1:{s:3:\"var\";a:1:{i:0;s:6:\"string\";}}s:7:\"version\";a:1:{s:3:\"var\";a:1:{i:0;s:6:\"string\";}}s:14:\"integerVersion\";a:1:{s:3:\"var\";a:1:{i:0;s:3:\"int\";}}s:5:\"title\";a:1:{s:3:\"var\";a:1:{i:0;s:6:\"string\";}}s:11:\"description\";a:1:{s:3:\"var\";a:1:{i:0;s:6:\"string\";}}s:5:\"state\";a:1:{s:3:\"var\";a:1:{i:0;s:3:\"int\";}}s:8:\"category\";a:1:{s:3:\"var\";a:1:{i:0;s:3:\"int\";}}s:11:\"lastUpdated\";a:1:{s:3:\"var\";a:1:{i:0;s:9:\"\\DateTime\";}}s:13:\"updateComment\";a:1:{s:3:\"var\";a:1:{i:0;s:6:\"string\";}}s:10:\"authorName\";a:1:{s:3:\"var\";a:1:{i:0;s:6:\"string\";}}s:11:\"authorEmail\";a:1:{s:3:\"var\";a:1:{i:0;s:6:\"string\";}}s:14:\"currentVersion\";a:1:{s:3:\"var\";a:1:{i:0;s:4:\"bool\";}}s:7:\"md5hash\";a:1:{s:3:\"var\";a:1:{i:0;s:6:\"string\";}}s:11:\"reviewState\";a:1:{s:3:\"var\";a:1:{i:0;s:3:\"int\";}}s:18:\"alldownloadcounter\";a:1:{s:3:\"var\";a:1:{i:0;s:3:\"int\";}}s:22:\"serializedDependencies\";a:1:{s:3:\"var\";a:1:{i:0;s:6:\"string\";}}s:12:\"dependencies\";a:1:{s:3:\"var\";a:1:{i:0;s:70:\"\\SplObjectStorage<\\TYPO3\\CMS\\Extensionmanager\\Domain\\Model\\Dependency>\";}}s:8:\"position\";a:2:{s:8:\"internal\";a:0:{}s:3:\"var\";a:1:{i:0;s:3:\"int\";}}s:3:\"uid\";a:1:{s:3:\"var\";a:1:{i:0;s:87:\"int The uid of the record. The uid is only unique in the context of the database table.\";}}s:13:\"_localizedUid\";a:1:{s:3:\"var\";a:1:{i:0;s:142:\"int The uid of the localized record. In TYPO3 v4.x the property \"uid\" holds the uid of the record in default language (the translationOrigin).\";}}s:12:\"_languageUid\";a:1:{s:3:\"var\";a:1:{i:0;s:122:\"int The uid of the language of the object. In TYPO3 v4.x this is the uid of the language record in the table sys_language.\";}}s:13:\"_versionedUid\";a:1:{s:3:\"var\";a:1:{i:0;s:36:\"int The uid of the versioned record.\";}}s:3:\"pid\";a:1:{s:3:\"var\";a:1:{i:0;s:46:\"int The id of the page the record is \"stored\".\";}}}}s:13:\"taggedClasses\";a:0:{}s:13:\"classSchemata\";a:2:{s:50:\"TYPO3\\CMS\\Extensionmanager\\Domain\\Model\\Repository\";O:40:\"TYPO3\\CMS\\Extbase\\Reflection\\ClassSchema\":6:{s:12:\"\0*\0className\";s:50:\"TYPO3\\CMS\\Extensionmanager\\Domain\\Model\\Repository\";s:12:\"\0*\0modelType\";i:1;s:16:\"\0*\0aggregateRoot\";b:1;s:19:\"\0*\0uuidPropertyName\";N;s:13:\"\0*\0properties\";a:12:{s:5:\"title\";a:4:{s:4:\"type\";s:6:\"string\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:11:\"description\";a:4:{s:4:\"type\";s:6:\"string\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:13:\"mirrorListUrl\";a:4:{s:4:\"type\";s:6:\"string\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:7:\"mirrors\";a:4:{s:4:\"type\";s:47:\"TYPO3\\CMS\\Extensionmanager\\Domain\\Model\\Mirrors\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:7:\"wsdlUrl\";a:4:{s:4:\"type\";s:6:\"string\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:10:\"lastUpdate\";a:4:{s:4:\"type\";s:8:\"DateTime\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:14:\"extensionCount\";a:4:{s:4:\"type\";s:6:\"string\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:3:\"uid\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:13:\"_localizedUid\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:12:\"_languageUid\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:13:\"_versionedUid\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:3:\"pid\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}}s:21:\"\0*\0identityProperties\";a:0:{}}s:49:\"TYPO3\\CMS\\Extensionmanager\\Domain\\Model\\Extension\";O:40:\"TYPO3\\CMS\\Extbase\\Reflection\\ClassSchema\":6:{s:12:\"\0*\0className\";s:49:\"TYPO3\\CMS\\Extensionmanager\\Domain\\Model\\Extension\";s:12:\"\0*\0modelType\";i:1;s:16:\"\0*\0aggregateRoot\";b:1;s:19:\"\0*\0uuidPropertyName\";N;s:13:\"\0*\0properties\";a:26:{s:17:\"defaultCategories\";a:4:{s:4:\"type\";s:5:\"array\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:13:\"defaultStates\";a:4:{s:4:\"type\";s:5:\"array\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:13:\"objectManager\";a:4:{s:4:\"type\";s:38:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManager\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:12:\"extensionKey\";a:4:{s:4:\"type\";s:6:\"string\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:7:\"version\";a:4:{s:4:\"type\";s:6:\"string\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:14:\"integerVersion\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:5:\"title\";a:4:{s:4:\"type\";s:6:\"string\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:11:\"description\";a:4:{s:4:\"type\";s:6:\"string\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:5:\"state\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:8:\"category\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:11:\"lastUpdated\";a:4:{s:4:\"type\";s:8:\"DateTime\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:13:\"updateComment\";a:4:{s:4:\"type\";s:6:\"string\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:10:\"authorName\";a:4:{s:4:\"type\";s:6:\"string\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:11:\"authorEmail\";a:4:{s:4:\"type\";s:6:\"string\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:14:\"currentVersion\";a:4:{s:4:\"type\";s:7:\"boolean\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:7:\"md5hash\";a:4:{s:4:\"type\";s:6:\"string\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:11:\"reviewState\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:18:\"alldownloadcounter\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:22:\"serializedDependencies\";a:4:{s:4:\"type\";s:6:\"string\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:12:\"dependencies\";a:4:{s:4:\"type\";s:16:\"SplObjectStorage\";s:11:\"elementType\";s:50:\"TYPO3\\CMS\\Extensionmanager\\Domain\\Model\\Dependency\";s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:8:\"position\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:3:\"uid\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:13:\"_localizedUid\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:12:\"_languageUid\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:13:\"_versionedUid\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:3:\"pid\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}}s:21:\"\0*\0identityProperties\";a:0:{}}}}');
/*!40000 ALTER TABLE `cf_extbase_reflection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_reflection_tags`
--

DROP TABLE IF EXISTS `cf_extbase_reflection_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_reflection_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_reflection_tags`
--

LOCK TABLES `cf_extbase_reflection_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_reflection_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_reflection_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_groups`
--

DROP TABLE IF EXISTS `fe_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_groups` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tx_extbase_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `lockToDomain` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `subgroup` tinytext COLLATE utf8_unicode_ci,
  `TSconfig` text COLLATE utf8_unicode_ci,
  `felogin_redirectPid` tinytext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_groups`
--

LOCK TABLES `fe_groups` WRITE;
/*!40000 ALTER TABLE `fe_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_sessions`
--

DROP TABLE IF EXISTS `fe_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_sessions` (
  `ses_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ses_userid` int(10) unsigned NOT NULL DEFAULT '0',
  `ses_tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `ses_data` mediumblob,
  `ses_permanent` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ses_anonymous` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ses_id`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_sessions`
--

LOCK TABLES `fe_sessions` WRITE;
/*!40000 ALTER TABLE `fe_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_users`
--

DROP TABLE IF EXISTS `fe_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tx_extbase_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `usergroup` tinytext COLLATE utf8_unicode_ci,
  `disable` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(160) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `middle_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `telephone` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fax` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lockToDomain` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `uc` blob,
  `title` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `zip` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `www` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `company` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `image` tinytext COLLATE utf8_unicode_ci,
  `TSconfig` text COLLATE utf8_unicode_ci,
  `lastlogin` int(10) unsigned NOT NULL DEFAULT '0',
  `is_online` int(10) unsigned NOT NULL DEFAULT '0',
  `felogin_redirectPid` tinytext COLLATE utf8_unicode_ci,
  `felogin_forgotHash` varchar(80) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`username`),
  KEY `username` (`username`),
  KEY `is_online` (`is_online`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_users`
--

LOCK TABLES `fe_users` WRITE;
/*!40000 ALTER TABLE `fe_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `perms_userid` int(10) unsigned NOT NULL DEFAULT '0',
  `perms_groupid` int(10) unsigned NOT NULL DEFAULT '0',
  `perms_user` smallint(5) unsigned NOT NULL DEFAULT '0',
  `perms_group` smallint(5) unsigned NOT NULL DEFAULT '0',
  `perms_everybody` smallint(5) unsigned NOT NULL DEFAULT '0',
  `editlock` smallint(5) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `doktype` int(10) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text COLLATE utf8_unicode_ci,
  `is_siteroot` smallint(6) NOT NULL DEFAULT '0',
  `php_tree_stop` smallint(6) NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `urltype` smallint(5) unsigned NOT NULL DEFAULT '0',
  `shortcut` int(10) unsigned NOT NULL DEFAULT '0',
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT '0',
  `no_cache` int(10) unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `layout` int(10) unsigned NOT NULL DEFAULT '0',
  `target` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `media` int(10) unsigned NOT NULL DEFAULT '0',
  `lastUpdated` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8_unicode_ci,
  `cache_timeout` int(10) unsigned NOT NULL DEFAULT '0',
  `cache_tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `newUntil` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `no_search` smallint(5) unsigned NOT NULL DEFAULT '0',
  `SYS_LASTCHANGED` int(10) unsigned NOT NULL DEFAULT '0',
  `abstract` text COLLATE utf8_unicode_ci,
  `module` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `extendToSubpages` smallint(5) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nav_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nav_hide` smallint(6) NOT NULL DEFAULT '0',
  `content_from_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mount_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mount_pid_ol` smallint(6) NOT NULL DEFAULT '0',
  `alias` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `l18n_cfg` smallint(6) NOT NULL DEFAULT '0',
  `fe_login_mode` smallint(6) NOT NULL DEFAULT '0',
  `backend_layout` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `backend_layout_next_level` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tsconfig_includes` text COLLATE utf8_unicode_ci,
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `categories` int(11) NOT NULL DEFAULT '0',
  `tx_realurl_pathsegment` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tx_realurl_pathoverride` int(11) NOT NULL DEFAULT '0',
  `tx_realurl_exclude` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`deleted`,`sorting`),
  KEY `alias` (`alias`),
  KEY `determineSiteRoot` (`is_siteroot`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,0,0,0,'',0,0,0,0,0,0,1508493466,256,0,1,0,31,27,0,0,1508326787,1,0,'Startseite',1,'',1,0,'',0,0,1,0,0,0,'','',0,'',0,0,'',0,'',0,'',0,1508493496,'','',0,'','','',0,0,0,0,'',0,0,'pagets__1','','',0,0,'',0,0),(2,1,0,0,0,'',0,0,0,0,0,0,1508710221,256,0,1,0,31,27,0,0,1508631980,1,0,'Home',1,NULL,0,0,'',0,0,1,0,0,0,'','',0,'',1,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,'',0,0),(3,1,0,0,0,'',0,0,0,0,0,0,1508710238,512,0,1,0,31,27,0,0,1508631980,1,0,'News',1,NULL,0,0,'',0,0,1,0,0,0,'','',0,'',1,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,'',0,0),(4,1,0,0,0,'',0,0,0,0,0,0,1508631980,768,0,1,0,31,27,0,0,1508631980,1,0,'Leistungen',1,NULL,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,'',0,0),(5,1,0,0,0,'',0,0,0,0,0,0,1508631980,1024,0,1,0,31,27,0,0,1508631980,1,0,'Kontakt',1,NULL,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,'',0,0);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_language_overlay`
--

DROP TABLE IF EXISTS `pages_language_overlay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_language_overlay` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `doktype` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nav_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `media` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `abstract` text COLLATE utf8_unicode_ci,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `l18n_diffsource` mediumblob,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `urltype` smallint(5) unsigned NOT NULL DEFAULT '0',
  `shortcut` int(10) unsigned NOT NULL DEFAULT '0',
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8_unicode_ci,
  `tx_realurl_pathsegment` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_language_overlay`
--

LOCK TABLES `pages_language_overlay` WRITE;
/*!40000 ALTER TABLE `pages_language_overlay` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_language_overlay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_be_shortcuts`
--

DROP TABLE IF EXISTS `sys_be_shortcuts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_be_shortcuts` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `module_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` text COLLATE utf8_unicode_ci,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sc_group` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_be_shortcuts`
--

LOCK TABLES `sys_be_shortcuts` WRITE;
/*!40000 ALTER TABLE `sys_be_shortcuts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_be_shortcuts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category`
--

DROP TABLE IF EXISTS `sys_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `title` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `parent` int(11) NOT NULL DEFAULT '0',
  `items` int(11) NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `category_parent` (`parent`),
  KEY `category_list` (`pid`,`deleted`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category`
--

LOCK TABLES `sys_category` WRITE;
/*!40000 ALTER TABLE `sys_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category_record_mm`
--

DROP TABLE IF EXISTS `sys_category_record_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category_record_mm` (
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fieldname` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sorting_foreign` int(11) NOT NULL DEFAULT '0',
  KEY `uid_local_foreign` (`uid_local`,`uid_foreign`),
  KEY `uid_foreign_tablefield` (`uid_foreign`,`tablenames`(40),`fieldname`(3),`sorting_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category_record_mm`
--

LOCK TABLES `sys_category_record_mm` WRITE;
/*!40000 ALTER TABLE `sys_category_record_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_category_record_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_collection`
--

DROP TABLE IF EXISTS `sys_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_collection` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext COLLATE utf8_unicode_ci,
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `fe_group` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `type` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'static',
  `table_name` tinytext COLLATE utf8_unicode_ci,
  `items` int(11) NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_collection`
--

LOCK TABLES `sys_collection` WRITE;
/*!40000 ALTER TABLE `sys_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_collection_entries`
--

DROP TABLE IF EXISTS `sys_collection_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_collection_entries` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_collection_entries`
--

LOCK TABLES `sys_collection_entries` WRITE;
/*!40000 ALTER TABLE `sys_collection_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_collection_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_domain`
--

DROP TABLE IF EXISTS `sys_domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_domain` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `domainName` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `redirectTo` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `redirectHttpStatusCode` int(10) unsigned NOT NULL DEFAULT '301',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `prepend_params` int(11) NOT NULL DEFAULT '0',
  `forced` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `getSysDomain` (`redirectTo`,`hidden`),
  KEY `getDomainStartPage` (`pid`,`hidden`,`domainName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_domain`
--

LOCK TABLES `sys_domain` WRITE;
/*!40000 ALTER TABLE `sys_domain` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file`
--

DROP TABLE IF EXISTS `sys_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `last_indexed` int(11) NOT NULL DEFAULT '0',
  `missing` smallint(6) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `metadata` int(11) NOT NULL DEFAULT '0',
  `identifier` text COLLATE utf8_unicode_ci,
  `identifier_hash` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `folder_hash` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mime_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` tinytext COLLATE utf8_unicode_ci,
  `sha1` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `size` bigint(20) unsigned NOT NULL DEFAULT '0',
  `creation_date` int(11) NOT NULL DEFAULT '0',
  `modification_date` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `sel01` (`storage`,`identifier_hash`),
  KEY `folder` (`storage`,`folder_hash`),
  KEY `tstamp` (`tstamp`),
  KEY `lastindex` (`last_indexed`),
  KEY `sha1` (`sha1`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file`
--

LOCK TABLES `sys_file` WRITE;
/*!40000 ALTER TABLE `sys_file` DISABLE KEYS */;
INSERT INTO `sys_file` VALUES (1,0,1508493343,0,0,0,'2',0,'/typo3conf/ext/dce/Resources/Public/Icons/ext_icon_white.png','4b68fa0d3e056a873c12689b8a22f8639af4f010','a84a9f0ef723a110dbde341723f12aef94511c8f','png','image/png','ext_icon_white.png','302b7973b336f510796b48ff310ef555a4fa56ec',991,1508492958,1508492958),(2,0,1508709834,0,0,1,'0',0,'/user_upload/index.html','c25533f303185517ca3e1e24b215d53aa74076d2','19669f1e02c2f16705ec7587044c66443be70725','html','inode/x-empty','index.html','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,1508324658,1508324658),(3,0,1508710209,0,0,1,'5',0,'/icons/.ds_store','44fd8bce73a691be87cde41a75ade7adbafa3757','68795054ec29d32fa6ec5e4b6ae562f256d04fc3','ds_store','application/octet-stream','.ds_store','df2fbeb1400acda0909a32c1cf6bf492f1121e07',6148,1508326751,1508326751),(4,0,1508710209,0,0,1,'2',0,'/icons/ce_wiz.gif','255c9b65f8a592519956b554f145a29e4337f20a','68795054ec29d32fa6ec5e4b6ae562f256d04fc3','gif','image/gif','ce_wiz.gif','4d6a2f16b6430c8103216e9fcf8700039f4a15e5',474,1508540276,1260034997),(5,0,1508710209,0,0,1,'2',0,'/icons/gallery.svg','76a0b019023e4595e150d6ccc667a13132b88c13','68795054ec29d32fa6ec5e4b6ae562f256d04fc3','svg','image/svg+xml','gallery.svg','28bce60b99844e58a30c94d2b18a5f3afc3e9d19',2070,1508541538,1508541525),(6,0,1508710209,0,0,1,'2',0,'/icons/icon_home.svg','2e0fc26dbfe536908c6616fa9278f6a9de6eec12','68795054ec29d32fa6ec5e4b6ae562f256d04fc3','svg','image/svg+xml','icon_home.svg','26d99961656ce2528bb686ad66bf837f32ff93df',673,1508709817,1508709674),(7,0,1508710209,0,0,1,'2',0,'/icons/icon_news.svg','9bdc600a9478cdcbaad8070fef008042b0cc8985','68795054ec29d32fa6ec5e4b6ae562f256d04fc3','svg','image/svg+xml','icon_news.svg','ac77647bef421356545aab932dff8c5a92dfca8a',1542,1508709817,1508709757),(8,0,1508710209,0,0,1,'2',0,'/icons/relation.gif','4488799bf28be9ccc5e50847fa3004bc564e74ca','68795054ec29d32fa6ec5e4b6ae562f256d04fc3','gif','image/gif','relation.gif','280a8d4f1cf0670398886586ca0a76457686f24b',233,1508325991,1508325825),(9,0,1508710209,0,0,1,'2',0,'/icons/slideshow.svg','136ee17fb83a1bd2ab434d61e7d46eb83e4d2338','68795054ec29d32fa6ec5e4b6ae562f256d04fc3','svg','image/svg+xml','slideshow.svg','ee663260805dd9f5dc4b7ca3ce71396eb8daa280',896,1508541093,1508541077),(10,0,1508720367,0,0,0,'2',0,'/typo3conf/ext/mw_dummy/Resources/Public/Icons/icon_default.svg','6c2307515edba224e6c65b76f62452affab90087','523cfd65c6386ed517279cb258a24dbbbfbd905d','svg','image/svg+xml','icon_default.svg','ba9b0109563ae814813ceab1d5c71b865596f402',471,1508719931,1430929710);
/*!40000 ALTER TABLE `sys_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_collection`
--

DROP TABLE IF EXISTS `sys_file_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_collection` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext COLLATE utf8_unicode_ci,
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'static',
  `files` int(11) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `folder` text COLLATE utf8_unicode_ci,
  `recursive` smallint(6) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_collection`
--

LOCK TABLES `sys_file_collection` WRITE;
/*!40000 ALTER TABLE `sys_file_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_metadata`
--

DROP TABLE IF EXISTS `sys_file_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_metadata` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `file` int(11) NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8_unicode_ci,
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `alternative` text COLLATE utf8_unicode_ci,
  `l10n_state` text COLLATE utf8_unicode_ci,
  `categories` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `file` (`file`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `fal_filelist` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_metadata`
--

LOCK TABLES `sys_file_metadata` WRITE;
/*!40000 ALTER TABLE `sys_file_metadata` DISABLE KEYS */;
INSERT INTO `sys_file_metadata` VALUES (1,0,1508493343,1508493342,1,0,0,'',0,0,0,'',0,0,0,0,0,0,1,NULL,16,16,NULL,NULL,NULL,0),(2,0,1508710209,1508710209,1,0,0,'',0,0,0,'',0,0,0,0,0,0,4,NULL,18,17,NULL,NULL,NULL,0),(3,0,1508710209,1508710209,1,0,0,'',0,0,0,'',0,0,0,0,0,0,5,NULL,20,20,NULL,NULL,NULL,0),(4,0,1508710209,1508710209,1,0,0,'',0,0,0,'',0,0,0,0,0,0,6,NULL,16,16,NULL,NULL,NULL,0),(5,0,1508710209,1508710209,1,0,0,'',0,0,0,'',0,0,0,0,0,0,7,NULL,485,485,NULL,NULL,NULL,0),(6,0,1508710209,1508710209,1,0,0,'',0,0,0,'',0,0,0,0,0,0,8,NULL,16,16,NULL,NULL,NULL,0),(7,0,1508710209,1508710209,1,0,0,'',0,0,0,'',0,0,0,0,0,0,9,NULL,459,459,NULL,NULL,NULL,0),(8,0,1508720367,1508720367,0,0,0,'',0,0,0,'',0,0,0,0,0,0,10,NULL,16,16,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `sys_file_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_processedfile`
--

DROP TABLE IF EXISTS `sys_file_processedfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_processedfile` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `original` int(11) NOT NULL DEFAULT '0',
  `identifier` varchar(512) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` tinytext COLLATE utf8_unicode_ci,
  `configuration` text COLLATE utf8_unicode_ci,
  `configurationsha1` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `originalfilesha1` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `task_type` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `checksum` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `width` int(11) DEFAULT '0',
  `height` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `combined_1` (`original`,`task_type`,`configurationsha1`),
  KEY `identifier` (`storage`,`identifier`(199))
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_processedfile`
--

LOCK TABLES `sys_file_processedfile` WRITE;
/*!40000 ALTER TABLE `sys_file_processedfile` DISABLE KEYS */;
INSERT INTO `sys_file_processedfile` VALUES (1,1508493343,1508493343,0,1,'',NULL,'a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','24f48d5b4de7d99b7144e6559156976855e74b5d','302b7973b336f510796b48ff310ef555a4fa56ec','Image.CropScaleMask','46ce890876',NULL,NULL),(2,1508710217,1508710217,1,6,'',NULL,'a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";N;}','cfe93cbb07d0cfbe7800b799777ad2e70305dbab','26d99961656ce2528bb686ad66bf837f32ff93df','Image.CropScaleMask','6642a6227f',16,16),(3,1508710217,1508710217,1,6,'',NULL,'a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','26d99961656ce2528bb686ad66bf837f32ff93df','Image.Preview','3e9e538282',NULL,NULL),(4,1508710222,1508710222,1,6,'',NULL,'a:3:{s:5:\"width\";i:45;s:6:\"height\";i:45;s:4:\"crop\";s:98:\"{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}\";}','810cb3ebae746ce83d653c014560bffa73be2bdc','26d99961656ce2528bb686ad66bf837f32ff93df','Image.Preview','0d98663f59',NULL,NULL),(5,1508710236,1508710236,1,7,'',NULL,'a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";N;}','cfe93cbb07d0cfbe7800b799777ad2e70305dbab','ac77647bef421356545aab932dff8c5a92dfca8a','Image.CropScaleMask','dc3df6cdec',150,150),(6,1508710237,1508710237,1,7,'',NULL,'a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','ac77647bef421356545aab932dff8c5a92dfca8a','Image.Preview','248b6d92ab',45,45),(7,1508710239,1508710239,1,7,'',NULL,'a:3:{s:5:\"width\";i:45;s:6:\"height\";i:45;s:4:\"crop\";s:98:\"{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}\";}','810cb3ebae746ce83d653c014560bffa73be2bdc','ac77647bef421356545aab932dff8c5a92dfca8a','Image.Preview','4026a5d618',45,45),(8,1508712082,1508712082,1,6,'',NULL,'a:11:{s:5:\"width\";s:4:\"263c\";s:6:\"height\";s:4:\"155c\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:263;s:9:\"maxHeight\";i:155;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;s:5:\"frame\";i:0;s:4:\"crop\";N;}','58a995fb93a4d8eaafcda38c697a4afec817e45e','26d99961656ce2528bb686ad66bf837f32ff93df','Image.CropScaleMask','5599926d36',155,155),(9,1508712082,1508712082,1,7,'',NULL,'a:11:{s:5:\"width\";s:4:\"263c\";s:6:\"height\";s:4:\"155c\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:263;s:9:\"maxHeight\";i:155;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;s:5:\"frame\";i:0;s:4:\"crop\";N;}','58a995fb93a4d8eaafcda38c697a4afec817e45e','ac77647bef421356545aab932dff8c5a92dfca8a','Image.CropScaleMask','8572a91385',155,155),(10,1508712872,1508712872,1,6,'',NULL,'a:11:{s:5:\"width\";s:3:\"40c\";s:6:\"height\";s:3:\"40c\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;s:5:\"frame\";i:0;s:4:\"crop\";N;}','9a9be510b9d272c414c6b93e2111c7d00a4ae3fe','26d99961656ce2528bb686ad66bf837f32ff93df','Image.CropScaleMask','9aa188a5aa',40,40),(11,1508712872,1508712872,1,7,'',NULL,'a:11:{s:5:\"width\";s:3:\"40c\";s:6:\"height\";s:3:\"40c\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;s:5:\"frame\";i:0;s:4:\"crop\";N;}','9a9be510b9d272c414c6b93e2111c7d00a4ae3fe','ac77647bef421356545aab932dff8c5a92dfca8a','Image.CropScaleMask','d768554303',40,40),(12,1508716996,1508716996,1,6,'',NULL,'a:11:{s:5:\"width\";s:3:\"30c\";s:6:\"height\";s:3:\"30c\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;s:5:\"frame\";i:0;s:4:\"crop\";N;}','687071921e3376055392cd9c5413904c2c7e1052','26d99961656ce2528bb686ad66bf837f32ff93df','Image.CropScaleMask','c4fba09435',30,30),(13,1508716996,1508716996,1,7,'',NULL,'a:11:{s:5:\"width\";s:3:\"30c\";s:6:\"height\";s:3:\"30c\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;s:5:\"frame\";i:0;s:4:\"crop\";N;}','687071921e3376055392cd9c5413904c2c7e1052','ac77647bef421356545aab932dff8c5a92dfca8a','Image.CropScaleMask','c1833d0b60',30,30),(14,1508720367,1508720367,0,10,'',NULL,'a:11:{s:5:\"width\";s:3:\"30c\";s:6:\"height\";s:3:\"30c\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;s:5:\"frame\";i:0;s:4:\"crop\";N;}','687071921e3376055392cd9c5413904c2c7e1052','ba9b0109563ae814813ceab1d5c71b865596f402','Image.CropScaleMask','7bdd2fde20',30,30);
/*!40000 ALTER TABLE `sys_file_processedfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_reference`
--

DROP TABLE IF EXISTS `sys_file_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_reference` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fieldname` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting_foreign` int(11) NOT NULL DEFAULT '0',
  `table_local` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title` tinytext COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `alternative` text COLLATE utf8_unicode_ci,
  `link` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `crop` varchar(4000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `autoplay` smallint(6) NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `tablenames_fieldname` (`tablenames`(32),`fieldname`(12)),
  KEY `deleted` (`deleted`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `combined_1` (`l10n_parent`,`t3ver_oid`,`t3ver_wsid`,`t3ver_state`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_reference`
--

LOCK TABLES `sys_file_reference` WRITE;
/*!40000 ALTER TABLE `sys_file_reference` DISABLE KEYS */;
INSERT INTO `sys_file_reference` VALUES (1,2,1508710221,1508710221,1,256,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',6,2,'pages','media',1,'sys_file','','','','','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0,NULL),(2,3,1508710238,1508710238,1,256,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',7,3,'pages','media',1,'sys_file','','','','','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0,NULL);
/*!40000 ALTER TABLE `sys_file_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_storage`
--

DROP TABLE IF EXISTS `sys_file_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_storage` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `driver` tinytext COLLATE utf8_unicode_ci,
  `configuration` text COLLATE utf8_unicode_ci,
  `is_default` smallint(6) NOT NULL DEFAULT '0',
  `is_browsable` smallint(6) NOT NULL DEFAULT '0',
  `is_public` smallint(6) NOT NULL DEFAULT '0',
  `is_writable` smallint(6) NOT NULL DEFAULT '0',
  `is_online` smallint(6) NOT NULL DEFAULT '1',
  `auto_extract_metadata` smallint(6) NOT NULL DEFAULT '1',
  `processingfolder` tinytext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_storage`
--

LOCK TABLES `sys_file_storage` WRITE;
/*!40000 ALTER TABLE `sys_file_storage` DISABLE KEYS */;
INSERT INTO `sys_file_storage` VALUES (1,0,1508326778,1508326778,0,0,'fileadmin/ (auto-created)','This is the local fileadmin/ directory. This storage mount has been created automatically by TYPO3.','Local','<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"basePath\">\n                    <value index=\"vDEF\">fileadmin/</value>\n                </field>\n                <field index=\"pathType\">\n                    <value index=\"vDEF\">relative</value>\n                </field>\n                <field index=\"caseSensitive\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',1,1,1,1,1,1,NULL);
/*!40000 ALTER TABLE `sys_file_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_filemounts`
--

DROP TABLE IF EXISTS `sys_filemounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_filemounts` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(2000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(120) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `base` int(10) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `read_only` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_filemounts`
--

LOCK TABLES `sys_filemounts` WRITE;
/*!40000 ALTER TABLE `sys_filemounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_filemounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_history`
--

DROP TABLE IF EXISTS `sys_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_history` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sys_log_uid` int(11) NOT NULL DEFAULT '0',
  `history_data` mediumtext COLLATE utf8_unicode_ci,
  `fieldlist` text COLLATE utf8_unicode_ci,
  `recuid` int(11) NOT NULL DEFAULT '0',
  `tablename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `history_files` mediumtext COLLATE utf8_unicode_ci,
  `snapshot` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `recordident_1` (`tablename`,`recuid`),
  KEY `recordident_2` (`tablename`,`tstamp`),
  KEY `sys_log_uid` (`sys_log_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_history`
--

LOCK TABLES `sys_history` WRITE;
/*!40000 ALTER TABLE `sys_history` DISABLE KEYS */;
INSERT INTO `sys_history` VALUES (1,0,3,'a:2:{s:9:\"oldRecord\";a:2:{s:8:\"realName\";s:0:\"\";s:5:\"email\";s:0:\"\";}s:9:\"newRecord\";a:2:{s:8:\"realName\";s:13:\"Volker Golbig\";s:5:\"email\";s:20:\"v.golbig@machwert.de\";}}','realName,email',1,'be_users',1508324988,NULL,0),(2,0,8,'a:2:{s:9:\"oldRecord\";a:1:{s:6:\"hidden\";i:1;}s:9:\"newRecord\";a:1:{s:6:\"hidden\";s:1:\"0\";}}','hidden',1,'pages',1508326793,NULL,0),(3,0,9,'a:2:{s:9:\"oldRecord\";a:1:{s:11:\"is_siteroot\";i:0;}s:9:\"newRecord\";a:1:{s:11:\"is_siteroot\";s:1:\"1\";}}','is_siteroot',1,'pages',1508326801,NULL,0),(4,0,22,'a:2:{s:9:\"oldRecord\";a:1:{s:5:\"title\";s:12:\"NEUE WEBSITE\";}s:9:\"newRecord\";a:1:{s:5:\"title\";s:18:\"t3dummy - Basis TS\";}}','title',1,'sys_template',1508493203,NULL,0),(5,0,23,'a:2:{s:9:\"oldRecord\";a:2:{s:6:\"config\";s:80:\"\n# Default PAGE object:\npage = PAGE\npage.10 = TEXT\npage.10.value = HELLO WORLD!\n\";s:19:\"include_static_file\";N;}s:9:\"newRecord\";a:2:{s:6:\"config\";s:83:\"# Default PAGE object:\r\npage = PAGE\r\npage.10 = TEXT\r\npage.10.value = HELLO WORLD!\r\n\";s:19:\"include_static_file\";s:42:\"EXT:iteratectheme/Configuration/TypoScript\";}}','config,include_static_file',1,'sys_template',1508493218,NULL,0),(6,0,26,'a:2:{s:9:\"oldRecord\";a:1:{s:6:\"config\";s:83:\"# Default PAGE object:\r\npage = PAGE\r\npage.10 = TEXT\r\npage.10.value = HELLO WORLD!\r\n\";}s:9:\"newRecord\";a:1:{s:6:\"config\";s:86:\"# Default PAGE object:\r\n#page = PAGE\r\n#page.10 = TEXT\r\n#page.10.value = HELLO WORLD!\r\n\";}}','config',1,'sys_template',1508493306,NULL,0),(7,0,28,'a:2:{s:9:\"oldRecord\";a:1:{s:19:\"include_static_file\";s:42:\"EXT:iteratectheme/Configuration/TypoScript\";}s:9:\"newRecord\";a:1:{s:19:\"include_static_file\";s:93:\"EXT:iteratectheme/Configuration/TypoScript,EXT:fluid_styled_content/Configuration/TypoScript/\";}}','include_static_file',1,'sys_template',1508493438,NULL,0),(8,0,30,'a:2:{s:9:\"oldRecord\";a:1:{s:14:\"backend_layout\";s:0:\"\";}s:9:\"newRecord\";a:1:{s:14:\"backend_layout\";s:9:\"pagets__1\";}}','backend_layout',1,'pages',1508493466,NULL,0),(9,0,33,'a:2:{s:9:\"oldRecord\";a:1:{s:19:\"include_static_file\";s:93:\"EXT:iteratectheme/Configuration/TypoScript,EXT:fluid_styled_content/Configuration/TypoScript/\";}s:9:\"newRecord\";a:1:{s:19:\"include_static_file\";s:42:\"EXT:iteratectheme/Configuration/TypoScript\";}}','include_static_file',1,'sys_template',1508493513,NULL,0),(10,0,34,'a:2:{s:9:\"oldRecord\";a:1:{s:19:\"include_static_file\";s:42:\"EXT:iteratectheme/Configuration/TypoScript\";}s:9:\"newRecord\";a:1:{s:19:\"include_static_file\";s:93:\"EXT:iteratectheme/Configuration/TypoScript,EXT:fluid_styled_content/Configuration/TypoScript/\";}}','include_static_file',1,'sys_template',1508493523,NULL,0),(11,0,199,'a:2:{s:9:\"oldRecord\";a:1:{s:19:\"include_static_file\";s:93:\"EXT:iteratectheme/Configuration/TypoScript,EXT:fluid_styled_content/Configuration/TypoScript/\";}s:9:\"newRecord\";a:1:{s:19:\"include_static_file\";s:88:\"EXT:fluid_styled_content/Configuration/TypoScript/,EXT:mw_dummy/Configuration/TypoScript\";}}','include_static_file',1,'sys_template',1508547717,NULL,0),(12,0,233,'a:2:{s:9:\"oldRecord\";a:1:{s:8:\"fe_group\";s:1:\"0\";}s:9:\"newRecord\";a:1:{s:8:\"fe_group\";s:0:\"\";}}','fe_group',2,'pages',1508710221,NULL,0),(13,0,235,'a:2:{s:9:\"oldRecord\";a:1:{s:8:\"fe_group\";s:1:\"0\";}s:9:\"newRecord\";a:1:{s:8:\"fe_group\";s:0:\"\";}}','fe_group',2,'pages',1508710221,NULL,0),(14,0,236,'a:2:{s:9:\"oldRecord\";a:1:{s:8:\"fe_group\";s:1:\"0\";}s:9:\"newRecord\";a:1:{s:8:\"fe_group\";s:0:\"\";}}','fe_group',3,'pages',1508710238,NULL,0),(15,0,238,'a:2:{s:9:\"oldRecord\";a:1:{s:8:\"fe_group\";s:1:\"0\";}s:9:\"newRecord\";a:1:{s:8:\"fe_group\";s:0:\"\";}}','fe_group',3,'pages',1508710238,NULL,0),(16,0,251,'a:2:{s:9:\"oldRecord\";a:1:{s:19:\"include_static_file\";s:88:\"EXT:fluid_styled_content/Configuration/TypoScript/,EXT:mw_dummy/Configuration/TypoScript\";}s:9:\"newRecord\";a:1:{s:19:\"include_static_file\";s:129:\"EXT:fluid_styled_content/Configuration/TypoScript/,EXT:mw_dummy/Configuration/TypoScript,EXT:carashtheme/Configuration/TypoScript\";}}','include_static_file',1,'sys_template',1508714934,NULL,0);
/*!40000 ALTER TABLE `sys_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_language`
--

DROP TABLE IF EXISTS `sys_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_language` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `flag` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `language_isocode` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `static_lang_isocode` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_language`
--

LOCK TABLES `sys_language` WRITE;
/*!40000 ALTER TABLE `sys_language` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_lockedrecords`
--

DROP TABLE IF EXISTS `sys_lockedrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_lockedrecords` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `record_table` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `record_uid` int(11) NOT NULL DEFAULT '0',
  `record_pid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `feuserid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`tstamp`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_lockedrecords`
--

LOCK TABLES `sys_lockedrecords` WRITE;
/*!40000 ALTER TABLE `sys_lockedrecords` DISABLE KEYS */;
INSERT INTO `sys_lockedrecords` VALUES (31,1,1508714934,'sys_template',1,0,'machwert',0);
/*!40000 ALTER TABLE `sys_lockedrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_log` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `action` smallint(5) unsigned NOT NULL DEFAULT '0',
  `recuid` int(10) unsigned NOT NULL DEFAULT '0',
  `tablename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `recpid` int(11) NOT NULL DEFAULT '0',
  `error` smallint(5) unsigned NOT NULL DEFAULT '0',
  `details` text COLLATE utf8_unicode_ci,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `details_nr` smallint(6) NOT NULL DEFAULT '0',
  `IP` varchar(39) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `log_data` text COLLATE utf8_unicode_ci,
  `event_pid` int(11) NOT NULL DEFAULT '-1',
  `workspace` int(11) NOT NULL DEFAULT '0',
  `NEWid` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `request_id` varchar(13) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `time_micro` double NOT NULL DEFAULT '0',
  `component` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `level` smallint(5) unsigned NOT NULL DEFAULT '0',
  `message` text COLLATE utf8_unicode_ci,
  `data` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `event` (`userid`,`event_pid`),
  KEY `recuidIdx` (`recuid`,`uid`),
  KEY `user_auth` (`type`,`action`,`tstamp`),
  KEY `request` (`request_id`),
  KEY `combined_1` (`tstamp`,`type`,`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=351 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
INSERT INTO `sys_log` VALUES (1,0,1,1,0,'',0,0,'User %s logged in from %s (%s)',1508324868,255,1,'127.0.0.1','a:3:{i:0;s:8:\"machwert\";i:1;s:9:\"127.0.0.1\";i:2;s:0:\"\";}',-1,-99,'','',0,'',0,NULL,NULL),(2,0,1,1,0,'',0,0,'Personal settings changed',1508324973,254,1,'127.0.0.1','a:0:{}',-1,0,'','',0,'',0,NULL,NULL),(3,0,1,2,1,'be_users',0,0,'Record \'%s\' (%s) was updated. (Online).',1508324988,1,10,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:10:\"be_users:1\";}',0,0,'','',0,'',0,NULL,NULL),(4,0,1,1,0,'',0,0,'Personal settings changed',1508325009,254,1,'127.0.0.1','a:0:{}',-1,0,'','',0,'',0,NULL,NULL),(5,0,1,1,0,'',0,0,'Personal settings changed',1508325015,254,1,'127.0.0.1','a:0:{}',-1,0,'','',0,'',0,NULL,NULL),(6,0,1,1,0,'',0,0,'Personal settings changed',1508325021,254,1,'127.0.0.1','a:0:{}',-1,0,'','',0,'',0,NULL,NULL),(7,0,1,1,1,'pages',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1508326787,1,10,'127.0.0.1','a:4:{i:0;s:10:\"Startseite\";i:1;s:7:\"pages:1\";i:2;s:12:\"[root-level]\";i:3;i:0;}',0,0,'NEW59e73d7b2e764102466350','',0,'',0,NULL,NULL),(8,0,1,2,1,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1508326793,1,10,'127.0.0.1','a:2:{i:0;s:10:\"Startseite\";i:1;s:7:\"pages:1\";}',1,0,'','',0,'',0,NULL,NULL),(9,0,1,2,1,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1508326801,1,10,'127.0.0.1','a:2:{i:0;s:10:\"Startseite\";i:1;s:7:\"pages:1\";}',1,0,'','',0,'',0,NULL,NULL),(10,0,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: Call to undefined method TYPO3\\CMS\\Core\\Utility\\GeneralUtility::loadTCA() | Error thrown in file /Applications/MAMP/htdocs/typo3dummy/web/typo3conf/ext/mw_dummy/ext_tables.php in line 20. Requested URL: http://localhost/typo3/index.php?M=tools_ExtensionmanagerExtensionmanager&moduleToken=2532315a89cb761247d6caef06b14b66bb8779f4&tx_extensionmanager_tools_extensionmanagerextensionmanager%%5BextensionKey%%5D=mw_dummy&tx_extensionmanager_tools_extensionmanagerextensionmanager%%5Baction%%5D=toggleExtensionInstallationState&tx_extensionmanager_tools_extensionmanagerextensionmanager%%5Bcontroller%%5D=Action',1508327212,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(11,0,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: Call to undefined method TYPO3\\CMS\\Core\\Utility\\GeneralUtility::loadTCA() | Error thrown in file /Applications/MAMP/htdocs/typo3dummy/web/typo3conf/ext/mw_dummy/ext_tables.php in line 20. Requested URL: http://localhost/typo3/index.php?ajaxID=%%2Fajax%%2Fsystem-information%%2Frender&ajaxToken=9b2302d2bbe40faf4be6c5474f6bef0d571378b2',1508327216,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(12,0,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: Class \'t3lib_extMgm\' not found | Error thrown in file /Applications/MAMP/htdocs/typo3dummy/web/typo3conf/ext/mw_dummy/ext_tables.php in line 53. Requested URL: http://localhost/typo3/index.php?M=tools_ExtensionmanagerExtensionmanager&moduleToken=2532315a89cb761247d6caef06b14b66bb8779f4',1508327241,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(13,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508327297,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(14,0,1,0,0,'',0,1,'Core: Error handler (BE): PHP Warning: require_once(/Applications/MAMP/htdocs/typo3dummy/web/typo3conf/ext/mw_dummy/Resources/Private/Php/class.mw_dummy_wizicon.php): failed to open stream: No such file or directory in /Applications/MAMP/htdocs/typo3dummy/vendor/typo3/cms/typo3/sysext/backend/Classes/Controller/ContentElement/NewContentElementController.php line 408',1508327301,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(15,0,1,0,0,'',0,1,'Core: Error handler (BE): PHP Warning: require_once(/Applications/MAMP/htdocs/typo3dummy/web/typo3conf/ext/mw_dummy/Resources/Private/Php/class.mw_dummy_wizicon.php): failed to open stream: No such file or directory in /Applications/MAMP/htdocs/typo3dummy/vendor/typo3/cms/typo3/sysext/backend/Classes/Controller/ContentElement/NewContentElementController.php line 408',1508327307,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(16,0,1,0,0,'',0,1,'Core: Error handler (BE): PHP Warning: require_once(/Applications/MAMP/htdocs/typo3dummy/web/typo3conf/ext/mw_dummy/Resources/Private/Php/class.mw_dummy_wizicon.php): failed to open stream: No such file or directory in /Applications/MAMP/htdocs/typo3dummy/vendor/typo3/cms/typo3/sysext/backend/Classes/Controller/ContentElement/NewContentElementController.php line 408',1508327345,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(17,0,1,1,0,'',0,0,'User %s logged in from %s (%s)',1508489564,255,1,'127.0.0.1','a:3:{i:0;s:8:\"machwert\";i:1;s:9:\"127.0.0.1\";i:2;s:0:\"\";}',-1,-99,'','',0,'',0,NULL,NULL),(18,0,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1382276561: The package \"iteratectheme\" depends on \"realurl\" which is not present in the system. | UnexpectedValueException thrown in file /Applications/MAMP/htdocs/typo3dummy/vendor/typo3/cms/typo3/sysext/core/Classes/Package/DependencyResolver.php in line 73. Requested URL: http://localhost/typo3/index.php?M=tools_ExtensionmanagerExtensionmanager&moduleToken=f8fe2b8ee8e6b108322ca3d1cfd0aa94feb8f906&tx_extensionmanager_tools_extensionmanagerextensionmanager%%5BextensionKey%%5D=iteratectheme&tx_extensionmanager_tools_extensionmanagerextensionmanager%%5Baction%%5D=installExtensionWithoutSystemDependencyCheck&tx_extensionmanager_tools_extensionmanagerextensionmanager%%5Bcontroller%%5D=Action',1508492079,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(19,0,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1382276561: The package \"iteratectheme\" depends on \"dce\" which is not present in the system. | UnexpectedValueException thrown in file /Applications/MAMP/htdocs/typo3dummy/vendor/typo3/cms/typo3/sysext/core/Classes/Package/DependencyResolver.php in line 73. Requested URL: http://localhost/typo3/index.php?M=tools_ExtensionmanagerExtensionmanager&moduleToken=f8fe2b8ee8e6b108322ca3d1cfd0aa94feb8f906&tx_extensionmanager_tools_extensionmanagerextensionmanager%%5BextensionKey%%5D=iteratectheme&tx_extensionmanager_tools_extensionmanagerextensionmanager%%5Baction%%5D=installExtensionWithoutSystemDependencyCheck&tx_extensionmanager_tools_extensionmanagerextensionmanager%%5Bcontroller%%5D=Action',1508492816,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(20,0,1,1,1,'sys_template',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1508493171,1,10,'127.0.0.1','a:4:{i:0;s:12:\"NEUE WEBSITE\";i:1;s:14:\"sys_template:1\";i:2;s:10:\"Startseite\";i:3;i:1;}',1,0,'NEW','',0,'',0,NULL,NULL),(21,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508493171,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(22,0,1,2,1,'sys_template',0,0,'Record \'%s\' (%s) was updated. (Online).',1508493203,1,10,'127.0.0.1','a:2:{i:0;s:18:\"t3dummy - Basis TS\";i:1;s:14:\"sys_template:1\";}',1,0,'','',0,'',0,NULL,NULL),(23,0,1,2,1,'sys_template',0,0,'Record \'%s\' (%s) was updated. (Online).',1508493218,1,10,'127.0.0.1','a:2:{i:0;s:18:\"t3dummy - Basis TS\";i:1;s:14:\"sys_template:1\";}',1,0,'','',0,'',0,NULL,NULL),(24,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508493228,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(25,0,1,1,1,'tt_content',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1508493283,1,10,'127.0.0.1','a:4:{i:0;s:7:\"TEST123\";i:1;s:12:\"tt_content:1\";i:2;s:10:\"Startseite\";i:3;i:1;}',1,0,'NEW59e9c7df072e5618161796','',0,'',0,NULL,NULL),(26,0,1,2,1,'sys_template',0,0,'Record \'%s\' (%s) was updated. (Online).',1508493306,1,10,'127.0.0.1','a:2:{i:0;s:18:\"t3dummy - Basis TS\";i:1;s:14:\"sys_template:1\";}',1,0,'','',0,'',0,NULL,NULL),(27,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508493306,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(28,0,1,2,1,'sys_template',0,0,'Record \'%s\' (%s) was updated. (Online).',1508493438,1,10,'127.0.0.1','a:2:{i:0;s:18:\"t3dummy - Basis TS\";i:1;s:14:\"sys_template:1\";}',1,0,'','',0,'',0,NULL,NULL),(29,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508493441,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(30,0,1,2,1,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1508493466,1,10,'127.0.0.1','a:2:{i:0;s:10:\"Startseite\";i:1;s:7:\"pages:1\";}',1,0,'','',0,'',0,NULL,NULL),(31,0,1,1,2,'tt_content',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1508493496,1,10,'127.0.0.1','a:4:{i:0;s:8:\"Test 123\";i:1;s:12:\"tt_content:2\";i:2;s:10:\"Startseite\";i:3;i:1;}',1,0,'NEW59e9c8b2ba28a017468561','',0,'',0,NULL,NULL),(32,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508493500,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(33,0,1,2,1,'sys_template',0,0,'Record \'%s\' (%s) was updated. (Online).',1508493513,1,10,'127.0.0.1','a:2:{i:0;s:18:\"t3dummy - Basis TS\";i:1;s:14:\"sys_template:1\";}',1,0,'','',0,'',0,NULL,NULL),(34,0,1,2,1,'sys_template',0,0,'Record \'%s\' (%s) was updated. (Online).',1508493523,1,10,'127.0.0.1','a:2:{i:0;s:18:\"t3dummy - Basis TS\";i:1;s:14:\"sys_template:1\";}',1,0,'','',0,'',0,NULL,NULL),(35,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508493525,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(36,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508496801,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(37,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508496901,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(38,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508497237,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(39,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508497238,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(40,0,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1404068038: No extension key could be determined when calling addPlugin()!\nThis method is meant to be called from an ext_tables.php or Configuration/TCA/Overrides file. If you call it from Configuration/TCA/Overrides, the extension key needs to be specified as third parameter. Calling it from any other place e.g. ext_localconf.php does not work and is not supported. | RuntimeException thrown in file /Applications/MAMP/htdocs/typo3dummy/vendor/typo3/cms/typo3/sysext/core/Classes/Utility/ExtensionManagementUtility.php in line 1302. Requested URL: http://localhost/typo3/index.php?M=web_layout&moduleToken=1db34298905dfb61b5622cabd674bce8913e8874&id=1',1508497240,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(41,0,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1404068038: No extension key could be determined when calling addPlugin()!\nThis method is meant to be called from an ext_tables.php or Configuration/TCA/Overrides file. If you call it from Configuration/TCA/Overrides, the extension key needs to be specified as third parameter. Calling it from any other place e.g. ext_localconf.php does not work and is not supported. | RuntimeException thrown in file /Applications/MAMP/htdocs/typo3dummy/vendor/typo3/cms/typo3/sysext/core/Classes/Utility/ExtensionManagementUtility.php in line 1302. Requested URL: http://localhost/typo3/index.php?ajaxID=%%2Fajax%%2Fusersettings%%2Fprocess&ajaxToken=2e27891ab8b40c7ce53a5b2698d7f11d5200f5d8',1508497240,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(42,0,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1404068038: No extension key could be determined when calling addPlugin()!\nThis method is meant to be called from an ext_tables.php or Configuration/TCA/Overrides file. If you call it from Configuration/TCA/Overrides, the extension key needs to be specified as third parameter. Calling it from any other place e.g. ext_localconf.php does not work and is not supported. | RuntimeException thrown in file /Applications/MAMP/htdocs/typo3dummy/vendor/typo3/cms/typo3/sysext/core/Classes/Utility/ExtensionManagementUtility.php in line 1302. Requested URL: http://localhost/typo3/index.php?ajaxID=%%2Fajax%%2Fsystem-information%%2Frender&ajaxToken=317f631575261e32912d0deb15c6651fe40d07d3',1508497293,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(43,0,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1404068038: No extension key could be determined when calling addPlugin()!\nThis method is meant to be called from an ext_tables.php or Configuration/TCA/Overrides file. If you call it from Configuration/TCA/Overrides, the extension key needs to be specified as third parameter. Calling it from any other place e.g. ext_localconf.php does not work and is not supported. | RuntimeException thrown in file /Applications/MAMP/htdocs/typo3dummy/vendor/typo3/cms/typo3/sysext/core/Classes/Utility/ExtensionManagementUtility.php in line 1302. Requested URL: http://localhost/typo3/index.php?route=%%2Frecord%%2Fcommit&token=3a542a2473b4c08403cc7c19a7b11dee50112be2&cacheCmd=all',1508497365,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(44,0,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1404068038: No extension key could be determined when calling addPlugin()!\nThis method is meant to be called from an ext_tables.php or Configuration/TCA/Overrides file. If you call it from Configuration/TCA/Overrides, the extension key needs to be specified as third parameter. Calling it from any other place e.g. ext_localconf.php does not work and is not supported. | RuntimeException thrown in file /Applications/MAMP/htdocs/typo3dummy/vendor/typo3/cms/typo3/sysext/core/Classes/Utility/ExtensionManagementUtility.php in line 1302. Requested URL: http://localhost/typo3/index.php?route=%%2Fmain&token=9c846241ac93ea67b3c1a0dacde2b3041843db71',1508497368,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(45,0,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1404068038: No extension key could be determined when calling addPlugin()!\nThis method is meant to be called from an ext_tables.php or Configuration/TCA/Overrides file. If you call it from Configuration/TCA/Overrides, the extension key needs to be specified as third parameter. Calling it from any other place e.g. ext_localconf.php does not work and is not supported. | RuntimeException thrown in file /Applications/MAMP/htdocs/typo3dummy/vendor/typo3/cms/typo3/sysext/core/Classes/Utility/ExtensionManagementUtility.php in line 1302. Requested URL: http://localhost/typo3/index.php?route=%%2Fmain&token=9c846241ac93ea67b3c1a0dacde2b3041843db71',1508497375,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(46,0,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1404068038: No extension key could be determined when calling addPlugin()!\nThis method is meant to be called from an ext_tables.php or Configuration/TCA/Overrides file. If you call it from Configuration/TCA/Overrides, the extension key needs to be specified as third parameter. Calling it from any other place e.g. ext_localconf.php does not work and is not supported. | RuntimeException thrown in file /Applications/MAMP/htdocs/typo3dummy/vendor/typo3/cms/typo3/sysext/core/Classes/Utility/ExtensionManagementUtility.php in line 1302. Requested URL: http://localhost/typo3/index.php?route=%%2Fmain&token=9c846241ac93ea67b3c1a0dacde2b3041843db71',1508497424,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(47,0,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1404068038: No extension key could be determined when calling addPlugin()!\nThis method is meant to be called from an ext_tables.php or Configuration/TCA/Overrides file. If you call it from Configuration/TCA/Overrides, the extension key needs to be specified as third parameter. Calling it from any other place e.g. ext_localconf.php does not work and is not supported. | RuntimeException thrown in file /Applications/MAMP/htdocs/typo3dummy/vendor/typo3/cms/typo3/sysext/core/Classes/Utility/ExtensionManagementUtility.php in line 1302. Requested URL: http://localhost/typo3/index.php?route=%%2Fmain&token=9c846241ac93ea67b3c1a0dacde2b3041843db71',1508497521,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(48,0,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1404068038: No extension key could be determined when calling addPlugin()!\nThis method is meant to be called from an ext_tables.php or Configuration/TCA/Overrides file. If you call it from Configuration/TCA/Overrides, the extension key needs to be specified as third parameter. Calling it from any other place e.g. ext_localconf.php does not work and is not supported. | RuntimeException thrown in file /Applications/MAMP/htdocs/typo3dummy/vendor/typo3/cms/typo3/sysext/core/Classes/Utility/ExtensionManagementUtility.php in line 1302. Requested URL: http://localhost/typo3/index.php?route=%%2Fmain&token=9c846241ac93ea67b3c1a0dacde2b3041843db71',1508497539,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(49,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508497629,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(50,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508499002,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(51,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508499099,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(52,0,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: Too few arguments to function TYPO3\\CMS\\Core\\Utility\\ExtensionManagementUtility::extPath(), 0 passed in /Applications/MAMP/htdocs/typo3dummy/web/typo3conf/ext/mw_dummy/Resources/Private/Php/class.mw_dummy_wizicon.php on line 13 and at least 1 expected | ArgumentCountError thrown in file /Applications/MAMP/htdocs/typo3dummy/vendor/typo3/cms/typo3/sysext/core/Classes/Utility/ExtensionManagementUtility.php in line 130. Requested URL: http://localhost/typo3/index.php?route=%%2Frecord%%2Fcontent%%2Fnew&token=9333c340c8bf564baf84316808ea99d4091e4879&id=1&sys_language_uid=0&colPos=1&uid_pid=-2&returnUrl=%%2Ftypo3%%2Findex.php%%3FM%%3Dweb_layout%%26moduleToken%%3D1db34298905dfb61b5622cabd674bce8913e8874%%26id%%3D1',1508499107,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(53,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508499268,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(54,0,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1365429656: TYPO3 Fatal Error: Extension key \"MwDummy\" is NOT loaded! | BadFunctionCallException thrown in file /Applications/MAMP/htdocs/typo3dummy/vendor/typo3/cms/typo3/sysext/core/Classes/Utility/ExtensionManagementUtility.php in line 133. Requested URL: http://localhost/typo3/index.php?route=%%2Frecord%%2Fcontent%%2Fnew&token=9333c340c8bf564baf84316808ea99d4091e4879&id=1&sys_language_uid=0&colPos=1&uid_pid=-2&returnUrl=%%2Ftypo3%%2Findex.php%%3FM%%3Dweb_layout%%26moduleToken%%3D1db34298905dfb61b5622cabd674bce8913e8874%%26id%%3D1',1508499275,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(55,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508499322,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(56,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508499369,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(57,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508499393,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(58,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508499416,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(59,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508499418,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(60,0,0,3,0,'',0,3,'Login-attempt from %s (%s), username \'%s\', password not accepted!',1508499441,255,1,'127.0.0.1','a:3:{i:0;s:9:\"127.0.0.1\";i:1;s:0:\"\";i:2;s:8:\"machwert\";}',-1,-99,'','',0,'',0,NULL,NULL),(61,0,1,1,0,'',0,0,'User %s logged in from %s (%s)',1508499454,255,1,'127.0.0.1','a:3:{i:0;s:8:\"machwert\";i:1;s:9:\"127.0.0.1\";i:2;s:0:\"\";}',-1,-99,'','',0,'',0,NULL,NULL),(62,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508499720,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(63,0,0,3,0,'',0,3,'Login-attempt from %s (%s), username \'%s\', password not accepted!',1508499748,255,1,'127.0.0.1','a:3:{i:0;s:9:\"127.0.0.1\";i:1;s:0:\"\";i:2;s:8:\"machwert\";}',-1,-99,'','',0,'',0,NULL,NULL),(64,0,1,1,0,'',0,0,'User %s logged in from %s (%s)',1508499764,255,1,'127.0.0.1','a:3:{i:0;s:8:\"machwert\";i:1;s:9:\"127.0.0.1\";i:2;s:0:\"\";}',-1,-99,'','',0,'',0,NULL,NULL),(65,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508500081,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(66,0,0,3,0,'',0,3,'Login-attempt from %s (%s), username \'%s\', password not accepted!',1508500111,255,1,'127.0.0.1','a:3:{i:0;s:9:\"127.0.0.1\";i:1;s:0:\"\";i:2;s:8:\"machwert\";}',-1,-99,'','',0,'',0,NULL,NULL),(67,0,1,1,0,'',0,0,'User %s logged in from %s (%s)',1508500122,255,1,'127.0.0.1','a:3:{i:0;s:8:\"machwert\";i:1;s:9:\"127.0.0.1\";i:2;s:0:\"\";}',-1,-99,'','',0,'',0,NULL,NULL),(68,0,1,1,0,'',0,0,'User %s logged in from %s (%s)',1508538751,255,1,'127.0.0.1','a:3:{i:0;s:8:\"machwert\";i:1;s:9:\"127.0.0.1\";i:2;s:0:\"\";}',-1,-99,'','',0,'',0,NULL,NULL),(69,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508539774,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(70,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508539890,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(71,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508539989,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(72,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508540098,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(73,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508540214,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(74,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508540304,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(75,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508540451,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(76,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508540794,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(77,0,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: Call to a member function registerIcon() on null | Error thrown in file /Applications/MAMP/htdocs/typo3dummy/web/typo3conf/ext/mw_dummy/ext_tables.php in line 14. Requested URL: http://localhost/typo3/index.php?M=web_layout&moduleToken=3a0e4cb7719c1a0b9f50b82aaea77d00f1560b7c&id=1',1508540796,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(78,0,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: Call to a member function registerIcon() on null | Error thrown in file /Applications/MAMP/htdocs/typo3dummy/web/typo3conf/ext/mw_dummy/ext_tables.php in line 14. Requested URL: http://localhost/typo3/index.php?ajaxID=%%2Fajax%%2Fsystem-information%%2Frender&ajaxToken=fc814eeeee5f343b85accd3dab4f17d0eaacc6f6',1508540866,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(79,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508540954,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(80,0,1,0,0,'',0,1,'Core: Error handler (BE): PHP Warning: simplexml_load_string(): Entity: line 1: parser error : Start tag expected, \'&lt;\' not found in /Applications/MAMP/htdocs/typo3dummy/vendor/typo3/cms/typo3/sysext/core/Classes/Imaging/IconProvider/SvgIconProvider.php line 97',1508540957,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(81,0,1,0,0,'',0,1,'Core: Error handler (BE): PHP Warning: simplexml_load_string(): GIF89a in /Applications/MAMP/htdocs/typo3dummy/vendor/typo3/cms/typo3/sysext/core/Classes/Imaging/IconProvider/SvgIconProvider.php line 97',1508540957,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(85,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508541133,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(86,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508541581,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(94,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508541660,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(95,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508541732,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(103,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508541784,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(111,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508541830,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(119,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508541858,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(127,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508541912,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(135,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508541958,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(143,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508542007,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(158,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508542402,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(166,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508542434,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(167,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508542454,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(175,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508542553,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(183,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508542589,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(184,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508542622,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(185,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508543331,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(188,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508543363,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(189,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508543567,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(190,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508543743,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(191,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508544356,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(192,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508544374,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(193,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508544446,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(194,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508544713,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(195,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508545630,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(196,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508546333,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(197,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508547238,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(198,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508547710,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(199,0,1,2,1,'sys_template',0,0,'Record \'%s\' (%s) was updated. (Online).',1508547717,1,10,'127.0.0.1','a:2:{i:0;s:18:\"t3dummy - Basis TS\";i:1;s:14:\"sys_template:1\";}',1,0,'','',0,'',0,NULL,NULL),(200,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508548198,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(201,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508548273,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(202,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508548711,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(203,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508548856,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(204,0,1,0,0,'',0,1,'Core: Error handler (FE): PHP Warning: filemtime(): stat failed for /Applications/MAMP/htdocs/typo3dummy/web/typo3conf/ext/mw_dummy/Resources/Private/Templates/StartTemplate.html in /Applications/MAMP/htdocs/typo3dummy/vendor/typo3fluid/fluid/src/View/TemplatePaths.php line 617',1508548910,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(205,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508549161,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(206,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508551732,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(207,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508551829,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(208,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508551920,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(209,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508552224,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(211,0,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: Class \'KayStrobach\\DyncssLess\\Parser\\LessParser\' not found | Error thrown in file /Applications/MAMP/htdocs/typo3dummy/web/typo3conf/ext/dyncss/Classes/ExtMgm/Statefield.php in line 33. Requested URL: http://localhost/typo3/index.php?M=tools_ExtensionmanagerExtensionmanager&moduleToken=024eb5bec784bef178eff23b68ad403c1a992cee&tx_extensionmanager_tools_extensionmanagerextensionmanager%%5Bextension%%5D%%5Bkey%%5D=dyncss&tx_extensionmanager_tools_extensionmanagerextensionmanager%%5Baction%%5D=showConfigurationForm&tx_extensionmanager_tools_extensionmanagerextensionmanager%%5Bcontroller%%5D=Configuration',1508552272,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(212,0,1,1,0,'',0,0,'User %s logged in from %s (%s)',1508629362,255,1,'127.0.0.1','a:3:{i:0;s:8:\"machwert\";i:1;s:9:\"127.0.0.1\";i:2;s:0:\"\";}',-1,-99,'','',0,'',0,NULL,NULL),(214,0,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: Class \'KayStrobach\\DyncssLess\\Parser\\LessParser\' not found | Error thrown in file /Applications/MAMP/htdocs/typo3dummy/web/typo3conf/ext/dyncss/Classes/ExtMgm/Statefield.php in line 33. Requested URL: http://localhost/typo3/index.php?M=tools_ExtensionmanagerExtensionmanager&moduleToken=f0c418ecd59344e6fa2d4a45f57644b7bf47dfc7&tx_extensionmanager_tools_extensionmanagerextensionmanager%%5Bextension%%5D%%5Bkey%%5D=dyncss&tx_extensionmanager_tools_extensionmanagerextensionmanager%%5Baction%%5D=showConfigurationForm&tx_extensionmanager_tools_extensionmanagerextensionmanager%%5Bcontroller%%5D=Configuration',1508629422,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(215,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508629489,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(216,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508629491,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(217,0,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: Class \'KayStrobach\\DyncssLess\\Parser\\LessParser\' not found | Error thrown in file /Applications/MAMP/htdocs/typo3dummy/web/typo3conf/ext/dyncss/Classes/ExtMgm/Statefield.php in line 33. Requested URL: http://localhost/typo3/index.php?M=tools_ExtensionmanagerExtensionmanager&moduleToken=f0c418ecd59344e6fa2d4a45f57644b7bf47dfc7&tx_extensionmanager_tools_extensionmanagerextensionmanager%%5Bextension%%5D%%5Bkey%%5D=dyncss&tx_extensionmanager_tools_extensionmanagerextensionmanager%%5Baction%%5D=showConfigurationForm&tx_extensionmanager_tools_extensionmanagerextensionmanager%%5Bcontroller%%5D=Configuration',1508629499,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(218,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508629842,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(219,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508630118,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(220,0,1,1,2,'pages',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1508631980,1,10,'127.0.0.1','a:4:{i:0;s:4:\"Home\";i:1;s:7:\"pages:2\";i:2;s:10:\"Startseite\";i:3;i:1;}',1,0,'NEW0','',0,'',0,NULL,NULL),(221,0,1,1,3,'pages',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1508631980,1,10,'127.0.0.1','a:4:{i:0;s:4:\"News\";i:1;s:7:\"pages:3\";i:2;s:10:\"Startseite\";i:3;i:1;}',1,0,'NEW1','',0,'',0,NULL,NULL),(222,0,1,1,4,'pages',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1508631980,1,10,'127.0.0.1','a:4:{i:0;s:10:\"Leistungen\";i:1;s:7:\"pages:4\";i:2;s:10:\"Startseite\";i:3;i:1;}',1,0,'NEW2','',0,'',0,NULL,NULL),(223,0,1,1,5,'pages',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1508631980,1,10,'127.0.0.1','a:4:{i:0;s:7:\"Kontakt\";i:1;s:7:\"pages:5\";i:2;s:10:\"Startseite\";i:3;i:1;}',1,0,'NEW3','',0,'',0,NULL,NULL),(224,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508631983,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(225,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508632123,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(226,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508633274,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(227,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508633341,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(228,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508633396,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(229,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508634440,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(230,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508634524,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(231,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508634526,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(232,0,1,1,0,'',0,0,'User %s logged in from %s (%s)',1508709162,255,1,'127.0.0.1','a:3:{i:0;s:8:\"machwert\";i:1;s:9:\"127.0.0.1\";i:2;s:0:\"\";}',-1,-99,'','',0,'',0,NULL,NULL),(233,0,1,2,2,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1508710221,1,10,'127.0.0.1','a:2:{i:0;s:4:\"Home\";i:1;s:7:\"pages:2\";}',2,0,'','',0,'',0,NULL,NULL),(234,0,1,1,1,'sys_file_reference',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1508710221,1,10,'127.0.0.1','a:4:{i:0;s:13:\"icon_home.svg\";i:1;s:20:\"sys_file_reference:1\";i:2;s:4:\"Home\";i:3;i:2;}',2,0,'NEW59ed17499a6b6116270595','',0,'',0,NULL,NULL),(235,0,1,2,2,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1508710221,1,10,'127.0.0.1','a:2:{i:0;s:4:\"Home\";i:1;s:7:\"pages:2\";}',2,0,'','',0,'',0,NULL,NULL),(236,0,1,2,3,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1508710238,1,10,'127.0.0.1','a:2:{i:0;s:4:\"News\";i:1;s:7:\"pages:3\";}',3,0,'','',0,'',0,NULL,NULL),(237,0,1,1,2,'sys_file_reference',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1508710238,1,10,'127.0.0.1','a:4:{i:0;s:13:\"icon_news.svg\";i:1;s:20:\"sys_file_reference:2\";i:2;s:4:\"News\";i:3;i:3;}',3,0,'NEW59ed175cc6352738533760','',0,'',0,NULL,NULL),(238,0,1,2,3,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1508710238,1,10,'127.0.0.1','a:2:{i:0;s:4:\"News\";i:1;s:7:\"pages:3\";}',3,0,'','',0,'',0,NULL,NULL),(239,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508710599,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(240,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508710625,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(241,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508711280,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(242,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508711323,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(243,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508711350,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(244,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508711935,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(245,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508712079,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(246,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508712491,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(247,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508712602,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(248,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508712740,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(249,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508712808,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(250,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508712868,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(251,0,1,2,1,'sys_template',0,0,'Record \'%s\' (%s) was updated. (Online).',1508714934,1,10,'127.0.0.1','a:2:{i:0;s:18:\"t3dummy - Basis TS\";i:1;s:14:\"sys_template:1\";}',1,0,'','',0,'',0,NULL,NULL),(252,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508714937,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(253,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508715042,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(254,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508715245,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(255,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508715358,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(256,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508715502,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(257,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508715602,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(258,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508715619,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(259,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508715661,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(260,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508715706,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(261,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508715756,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(262,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508715845,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(263,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508715964,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(264,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508716096,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(265,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508716178,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(266,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508716257,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(267,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508716574,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(268,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508716619,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(269,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508716677,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(270,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508716750,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(271,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508716914,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(272,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508716950,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(273,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508716994,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(274,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508717033,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(275,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508717596,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(276,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508717741,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(277,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508717743,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(278,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508717849,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(279,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508717907,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(280,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508718380,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(281,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508718681,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(282,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508718858,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(283,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508718995,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(284,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508719122,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(285,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508719420,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(286,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508719459,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(287,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508719529,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(288,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508719558,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(289,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508719679,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(290,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508720297,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(291,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508720309,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(292,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508720364,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(293,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508720506,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(294,0,1,1,0,'',0,0,'User %s logged in from %s (%s)',1508750022,255,1,'127.0.0.1','a:3:{i:0;s:8:\"machwert\";i:1;s:9:\"127.0.0.1\";i:2;s:0:\"\";}',-1,-99,'','',0,'',0,NULL,NULL),(295,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508750056,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(296,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508750407,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(297,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508751219,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(298,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508751221,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(299,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508751447,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(300,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508751489,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(301,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508751491,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(302,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508751552,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(303,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508751651,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(304,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508751826,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(305,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508751877,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(306,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508751927,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(307,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508752055,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;i:1;}',-1,0,'','',0,'',0,NULL,NULL),(308,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508752056,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;i:1;}',-1,0,'','',0,'',0,NULL,NULL),(309,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508752060,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(310,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508752185,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(311,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508752186,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(312,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508752254,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(313,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508752334,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(314,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508752369,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(315,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508752370,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(316,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508752452,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(317,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508752493,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(318,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508752494,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(319,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508752618,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(320,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508752705,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(321,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508752707,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(322,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508752760,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(323,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508752762,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(324,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508752837,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(325,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508752839,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(326,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508752981,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(327,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508753259,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(328,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508753261,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(329,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508753318,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(330,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508753418,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(331,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508753420,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(332,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508753450,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(333,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508753501,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(334,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508753831,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(335,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508754036,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(336,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508754088,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(337,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508754179,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(338,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508754198,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(339,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508754226,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(340,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508754277,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(341,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508754352,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(342,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508754542,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(343,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508754622,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(344,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508754668,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(345,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508754709,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(346,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508754710,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(347,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508754743,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(348,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508754744,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(349,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508754761,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(350,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1508754806,3,0,'127.0.0.1','a:2:{i:0;s:8:\"machwert\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL);
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_news`
--

DROP TABLE IF EXISTS `sys_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_news` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_news`
--

LOCK TABLES `sys_news` WRITE;
/*!40000 ALTER TABLE `sys_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_note`
--

DROP TABLE IF EXISTS `sys_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_note` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8_unicode_ci,
  `personal` smallint(5) unsigned NOT NULL DEFAULT '0',
  `category` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_note`
--

LOCK TABLES `sys_note` WRITE;
/*!40000 ALTER TABLE `sys_note` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_refindex`
--

DROP TABLE IF EXISTS `sys_refindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_refindex` (
  `hash` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tablename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `recuid` int(11) NOT NULL DEFAULT '0',
  `field` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `flexpointer` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `softref_key` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `softref_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `workspace` int(11) NOT NULL DEFAULT '0',
  `ref_table` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ref_uid` int(11) NOT NULL DEFAULT '0',
  `ref_string` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`hash`),
  KEY `lookup_rec` (`tablename`(240),`recuid`),
  KEY `lookup_uid` (`ref_table`(240),`ref_uid`),
  KEY `lookup_string` (`ref_string`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_refindex`
--

LOCK TABLES `sys_refindex` WRITE;
/*!40000 ALTER TABLE `sys_refindex` DISABLE KEYS */;
INSERT INTO `sys_refindex` VALUES ('0f701991a1f1e8a0b417e38b74ffedad','sys_file',7,'storage','','','',0,0,0,'sys_file_storage',1,''),('1a0bebda8af3734351dd08be282d88dc','sys_file_reference',1,'uid_local','','','',0,0,0,'sys_file',6,''),('1c6b3ffd36f17c70f12a4768a19549cc','sys_file',8,'storage','','','',0,0,0,'sys_file_storage',1,''),('1f9795254925fff4468da0d377e7d2b1','pages',3,'media','','','',0,0,0,'sys_file_reference',2,''),('4e88bcb1598697f603d22ec160e89bc8','pages',2,'media','','','',0,0,0,'sys_file_reference',1,''),('59c41b9f1d5338d9417c9b6817e2c542','sys_file',2,'storage','','','',0,0,0,'sys_file_storage',1,''),('764ed7b4d26b234a0b36628e00db1247','sys_file',5,'storage','','','',0,0,0,'sys_file_storage',1,''),('7aa5e4a1791dd828d7822e15da804816','sys_file_reference',2,'uid_local','','','',0,0,0,'sys_file',7,''),('893e20b39f66903f90c681e8c41b6297','sys_file',3,'storage','','','',0,0,0,'sys_file_storage',1,''),('b8f7c5f7a81efe6792630f9a8d6b15d0','sys_file',6,'storage','','','',0,0,0,'sys_file_storage',1,''),('c2db2d185e97fb2ed9859cfebdbe6718','sys_file',9,'storage','','','',0,0,0,'sys_file_storage',1,''),('d1657b650408849099784a78159bc058','sys_file',4,'storage','','','',0,0,0,'sys_file_storage',1,''),('f9e3e70433f21181a0afe79a067b4b55','be_users',1,'email','','email','2',-1,0,0,'_STRING',0,'v.golbig@machwert.de');
/*!40000 ALTER TABLE `sys_refindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_registry`
--

DROP TABLE IF EXISTS `sys_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_registry` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_namespace` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `entry_key` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `entry_value` mediumblob,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `entry_identifier` (`entry_namespace`,`entry_key`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_registry`
--

LOCK TABLES `sys_registry` WRITE;
/*!40000 ALTER TABLE `sys_registry` DISABLE KEYS */;
INSERT INTO `sys_registry` VALUES (1,'installUpdate','TYPO3\\CMS\\Install\\Updates\\AccessRightParametersUpdate','i:1;'),(2,'installUpdate','TYPO3\\CMS\\Install\\Updates\\LanguageIsoCodeUpdate','i:1;'),(3,'installUpdate','TYPO3\\CMS\\Install\\Updates\\PageShortcutParentUpdate','i:1;'),(4,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateShortcutUrlsAgainUpdate','i:1;'),(5,'installUpdate','TYPO3\\CMS\\Install\\Updates\\ProcessedFileChecksumUpdate','i:1;'),(6,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FilesReplacePermissionUpdate','i:1;'),(7,'installUpdate','TYPO3\\CMS\\Install\\Updates\\TableFlexFormToTtContentFieldsUpdate','i:1;'),(8,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FileListInAccessModuleListUpdate','i:1;'),(9,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FileListIsStartModuleUpdate','i:1;'),(10,'installUpdate','TYPO3\\CMS\\Install\\Updates\\WorkspacesNotificationSettingsUpdate','i:1;'),(11,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateMediaToAssetsForTextMediaCe','i:1;'),(12,'installUpdate','TYPO3\\CMS\\Install\\Updates\\Compatibility6ExtractionUpdate','i:1;'),(13,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MediaceExtractionUpdate','i:1;'),(14,'installUpdate','TYPO3\\CMS\\Install\\Updates\\OpenidExtractionUpdate','i:1;'),(15,'installUpdate','TYPO3\\CMS\\Install\\Updates\\ExtensionManagerTables','i:1;'),(16,'installUpdate','TYPO3\\CMS\\Install\\Updates\\WizardDoneToRegistry','i:1;'),(17,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendUserStartModuleUpdate','i:1;'),(18,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FrontendUserImageUpdateWizard','i:1;'),(19,'installUpdate','TYPO3\\CMS\\Install\\Updates\\DatabaseRowsUpdateWizard','i:1;'),(20,'installUpdate','TYPO3\\CMS\\Install\\Updates\\CommandLineBackendUserRemovalUpdate','i:1;'),(21,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FillTranslationSourceField','i:1;'),(22,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SectionFrameToFrameClassUpdate','i:1;'),(23,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SplitMenusUpdate','i:1;'),(24,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BulletContentElementUpdate','i:1;'),(25,'installUpdate','TYPO3\\CMS\\Install\\Updates\\UploadContentElementUpdate','i:1;'),(26,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateCscStaticTemplateUpdate','i:1;'),(27,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateFscStaticTemplateUpdate','i:1;'),(28,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateFeSessionDataUpdate','i:1;'),(29,'installUpdate','TYPO3\\CMS\\Install\\Updates\\Compatibility7ExtractionUpdate','i:1;'),(30,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FormLegacyExtractionUpdate','i:1;'),(31,'installUpdate','TYPO3\\CMS\\Install\\Updates\\RteHtmlAreaExtractionUpdate','i:1;'),(32,'core','formProtectionSessionToken:1','s:64:\"a0a4c3b3e768b3509c63643fe8e55f6d44e379b61c13dbd02a8606ae33ead471\";'),(33,'TYPO3\\CMS\\Lang','de','i:1508324958;'),(34,'extensionDataImport','typo3/sysext/scheduler/ext_tables_static+adt.sql','s:0:\"\";'),(35,'extensionDataImport','typo3conf/ext/realurl/ext_tables_static+adt.sql','s:0:\"\";'),(36,'extensionDataImport','typo3conf/ext/dce/ext_tables_static+adt.sql','s:0:\"\";'),(37,'extensionDataImport','typo3conf/ext/iteratectheme/ext_tables_static+adt.sql','s:0:\"\";'),(38,'tx_realurl','updateLevel','i:4;'),(39,'extensionDataImport','typo3conf/ext/dyncss/ext_tables_static+adt.sql','s:0:\"\";'),(40,'extensionDataImport','typo3conf/ext/dyncss_less/ext_tables_static+adt.sql','s:0:\"\";'),(41,'installUpdate','TYPO3\\CMS\\Install\\Updates\\DatabaseCharsetUpdate','i:1;'),(42,'extensionDataImport','typo3conf/ext/carashtheme/ext_tables_static+adt.sql','s:0:\"\";');
/*!40000 ALTER TABLE `sys_registry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_template`
--

DROP TABLE IF EXISTS `sys_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_template` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sitetitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `root` smallint(5) unsigned NOT NULL DEFAULT '0',
  `clear` smallint(5) unsigned NOT NULL DEFAULT '0',
  `include_static_file` text COLLATE utf8_unicode_ci,
  `constants` text COLLATE utf8_unicode_ci,
  `config` text COLLATE utf8_unicode_ci,
  `nextLevel` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `basedOn` tinytext COLLATE utf8_unicode_ci,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `includeStaticAfterBasedOn` smallint(5) unsigned NOT NULL DEFAULT '0',
  `static_file_mode` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`deleted`,`hidden`,`sorting`),
  KEY `roottemplate` (`deleted`,`hidden`,`root`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_template`
--

LOCK TABLES `sys_template` WRITE;
/*!40000 ALTER TABLE `sys_template` DISABLE KEYS */;
INSERT INTO `sys_template` VALUES (1,1,0,0,0,'',0,0,0,0,0,0,1508714934,256,1508493171,1,'t3dummy - Basis TS','',0,0,0,1,3,'EXT:fluid_styled_content/Configuration/TypoScript/,EXT:mw_dummy/Configuration/TypoScript,EXT:carashtheme/Configuration/TypoScript',NULL,'# Default PAGE object:\r\n#page = PAGE\r\n#page.10 = TEXT\r\n#page.10.value = HELLO WORLD!\r\n','',NULL,'',0,0,0,0);
/*!40000 ALTER TABLE `sys_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tt_content`
--

DROP TABLE IF EXISTS `tt_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tt_content` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `editlock` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `CType` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `header` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `header_position` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rowDescription` text COLLATE utf8_unicode_ci,
  `bodytext` mediumtext COLLATE utf8_unicode_ci,
  `bullets_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uploads_description` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uploads_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `assets` int(10) unsigned NOT NULL DEFAULT '0',
  `image` int(10) unsigned NOT NULL DEFAULT '0',
  `imagewidth` int(10) unsigned NOT NULL DEFAULT '0',
  `imageorient` smallint(5) unsigned NOT NULL DEFAULT '0',
  `imagecols` smallint(5) unsigned NOT NULL DEFAULT '0',
  `imageborder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `media` int(10) unsigned NOT NULL DEFAULT '0',
  `layout` int(10) unsigned NOT NULL DEFAULT '0',
  `frame_class` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cols` int(10) unsigned NOT NULL DEFAULT '0',
  `spaceBefore` smallint(5) unsigned NOT NULL DEFAULT '0',
  `spaceAfter` smallint(5) unsigned NOT NULL DEFAULT '0',
  `space_before_class` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `space_after_class` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `records` text COLLATE utf8_unicode_ci,
  `pages` text COLLATE utf8_unicode_ci,
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `colPos` int(10) unsigned NOT NULL DEFAULT '0',
  `subheader` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fe_group` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `header_link` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `image_zoom` smallint(5) unsigned NOT NULL DEFAULT '0',
  `header_layout` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `list_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sectionIndex` smallint(5) unsigned NOT NULL DEFAULT '0',
  `linkToTop` smallint(5) unsigned NOT NULL DEFAULT '0',
  `file_collections` text COLLATE utf8_unicode_ci,
  `filelink_size` smallint(5) unsigned NOT NULL DEFAULT '0',
  `filelink_sorting` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `recursive` smallint(5) unsigned NOT NULL DEFAULT '0',
  `imageheight` int(10) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `pi_flexform` mediumtext COLLATE utf8_unicode_ci,
  `accessibility_title` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `accessibility_bypass` smallint(5) unsigned NOT NULL DEFAULT '0',
  `accessibility_bypass_text` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob,
  `l10n_source` int(11) NOT NULL DEFAULT '0',
  `selected_categories` text COLLATE utf8_unicode_ci,
  `category_field` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `table_class` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `table_caption` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `table_delimiter` smallint(5) unsigned NOT NULL DEFAULT '0',
  `table_enclosure` smallint(5) unsigned NOT NULL DEFAULT '0',
  `table_header_position` smallint(5) unsigned NOT NULL DEFAULT '0',
  `table_tfoot` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8_unicode_ci,
  `categories` int(11) NOT NULL DEFAULT '0',
  `tx_dce_dce` int(11) NOT NULL DEFAULT '0',
  `tx_dce_index` mediumtext COLLATE utf8_unicode_ci,
  `tx_dce_new_container` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`sorting`),
  KEY `language` (`l18n_parent`,`sys_language_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tt_content`
--

LOCK TABLES `tt_content` WRITE;
/*!40000 ALTER TABLE `tt_content` DISABLE KEYS */;
INSERT INTO `tt_content` VALUES (1,1,0,0,0,'',0,0,0,0,0,0,1508493283,1508493283,1,0,0,256,'text','TEST123','','','',0,0,0,0,0,0,0,2,0,0,0,'default',0,0,0,0,'','',NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,'',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,NULL,0),(2,1,0,0,0,'',0,0,0,0,0,0,1508493496,1508493496,1,0,0,128,'text','Test 123','','','',0,0,0,0,0,0,0,2,0,0,0,'default',0,0,0,0,'','',NULL,NULL,0,0,1,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,NULL,'',0,'',0,'',0,NULL,'','',NULL,124,0,0,0,0,NULL,0,0,NULL,0);
/*!40000 ALTER TABLE `tt_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dce_domain_model_dce`
--

DROP TABLE IF EXISTS `tx_dce_domain_model_dce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dce_domain_model_dce` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fields` text COLLATE utf8_unicode_ci,
  `wizard_enable` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `wizard_category` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `wizard_description` text COLLATE utf8_unicode_ci,
  `wizard_icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `wizard_custom_icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `template_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `template_content` text COLLATE utf8_unicode_ci,
  `template_file` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cache_dce` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `show_access_tab` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `show_media_tab` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `show_category_tab` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hide_default_ce_wrap` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `flexform_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'LLL:EXT:dce/Resources/Private/Language/locallang_db.xml:tx_dce_domain_model_dce.flexformLabel.default',
  `use_simple_backend_view` smallint(5) unsigned NOT NULL DEFAULT '0',
  `backend_view_header` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '*dcetitle',
  `backend_view_bodytext` text COLLATE utf8_unicode_ci,
  `backend_template_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `backend_template_content` text COLLATE utf8_unicode_ci,
  `backend_template_file` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `template_layout_root_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'EXT:dce/Resources/Private/Layouts/',
  `template_partial_root_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'EXT:dce/Resources/Private/Partials/',
  `palette_fields` text COLLATE utf8_unicode_ci,
  `enable_detailpage` smallint(5) unsigned NOT NULL DEFAULT '0',
  `detailpage_identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `detailpage_template_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `detailpage_template` text COLLATE utf8_unicode_ci,
  `detailpage_template_file` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `enable_container` smallint(5) unsigned NOT NULL DEFAULT '0',
  `container_item_limit` int(11) NOT NULL DEFAULT '0',
  `container_template_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `container_template` text COLLATE utf8_unicode_ci,
  `container_template_file` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dce_domain_model_dce`
--

LOCK TABLES `tx_dce_domain_model_dce` WRITE;
/*!40000 ALTER TABLE `tx_dce_domain_model_dce` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_dce_domain_model_dce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dce_domain_model_dcefield`
--

DROP TABLE IF EXISTS `tx_dce_domain_model_dcefield`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dce_domain_model_dcefield` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `variable` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `configuration` text COLLATE utf8_unicode_ci,
  `map_to` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `new_tca_field_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `new_tca_field_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `section_fields` text COLLATE utf8_unicode_ci,
  `section_fields_tag` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `parent_dce` int(11) NOT NULL DEFAULT '0',
  `parent_field` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dce_domain_model_dcefield`
--

LOCK TABLES `tx_dce_domain_model_dcefield` WRITE;
/*!40000 ALTER TABLE `tx_dce_domain_model_dcefield` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_dce_domain_model_dcefield` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_extensionmanager_domain_model_extension`
--

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_extensionmanager_domain_model_extension` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `extension_key` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `repository` int(10) unsigned NOT NULL DEFAULT '1',
  `version` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `alldownloadcounter` int(10) unsigned NOT NULL DEFAULT '0',
  `downloadcounter` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0',
  `review_state` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `last_updated` int(10) unsigned NOT NULL DEFAULT '0',
  `serialized_dependencies` mediumtext COLLATE utf8_unicode_ci,
  `author_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ownerusername` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `md5hash` varchar(35) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `update_comment` mediumtext COLLATE utf8_unicode_ci,
  `authorcompany` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `integer_version` int(11) NOT NULL DEFAULT '0',
  `current_version` int(11) NOT NULL DEFAULT '0',
  `lastreviewedversion` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `versionextrepo` (`extension_key`,`version`,`repository`),
  KEY `index_extrepo` (`extension_key`,`repository`),
  KEY `index_versionrepo` (`integer_version`,`repository`,`extension_key`),
  KEY `index_currentversions` (`current_version`,`review_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_extension`
--

LOCK TABLES `tx_extensionmanager_domain_model_extension` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_extensionmanager_domain_model_repository`
--

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_repository`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_extensionmanager_domain_model_repository` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8_unicode_ci,
  `wsdl_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mirror_list_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_update` int(10) unsigned NOT NULL DEFAULT '0',
  `extension_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_repository`
--

LOCK TABLES `tx_extensionmanager_domain_model_repository` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` DISABLE KEYS */;
INSERT INTO `tx_extensionmanager_domain_model_repository` VALUES (1,0,'TYPO3.org Main Repository','Main repository on typo3.org. This repository has some mirrors configured which are available with the mirror url.','https://typo3.org/wsdl/tx_ter_wsdl.php','https://repositories.typo3.org/mirrors.xml.gz',1346191200,0);
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_impexp_presets`
--

DROP TABLE IF EXISTS `tx_impexp_presets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_impexp_presets` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `user_uid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `public` smallint(6) NOT NULL DEFAULT '0',
  `item_uid` int(11) NOT NULL DEFAULT '0',
  `preset_data` blob,
  PRIMARY KEY (`uid`),
  KEY `lookup` (`item_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_impexp_presets`
--

LOCK TABLES `tx_impexp_presets` WRITE;
/*!40000 ALTER TABLE `tx_impexp_presets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_impexp_presets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_pathdata`
--

DROP TABLE IF EXISTS `tx_realurl_pathdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_pathdata` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `rootpage_id` int(11) NOT NULL DEFAULT '0',
  `mpvar` tinytext COLLATE utf8_unicode_ci,
  `pagepath` text COLLATE utf8_unicode_ci,
  `expire` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `pathq1` (`rootpage_id`,`pagepath`(32),`expire`),
  KEY `pathq2` (`page_id`,`language_id`,`rootpage_id`,`expire`),
  KEY `expire` (`expire`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_pathdata`
--

LOCK TABLES `tx_realurl_pathdata` WRITE;
/*!40000 ALTER TABLE `tx_realurl_pathdata` DISABLE KEYS */;
INSERT INTO `tx_realurl_pathdata` VALUES (1,0,2,0,1,'','home',0),(2,0,3,0,1,'','news',0),(3,0,4,0,1,'','leistungen',0),(4,0,5,0,1,'','kontakt',0);
/*!40000 ALTER TABLE `tx_realurl_pathdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_uniqalias`
--

DROP TABLE IF EXISTS `tx_realurl_uniqalias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_uniqalias` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tablename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `field_alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `field_id` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value_alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value_id` int(11) NOT NULL DEFAULT '0',
  `lang` int(11) NOT NULL DEFAULT '0',
  `expire` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `tablename` (`tablename`),
  KEY `bk_realurl01` (`field_alias`(20),`field_id`,`value_id`,`lang`,`expire`),
  KEY `bk_realurl02` (`tablename`(32),`field_alias`(20),`field_id`,`value_alias`(20),`expire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_uniqalias`
--

LOCK TABLES `tx_realurl_uniqalias` WRITE;
/*!40000 ALTER TABLE `tx_realurl_uniqalias` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_realurl_uniqalias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_uniqalias_cache_map`
--

DROP TABLE IF EXISTS `tx_realurl_uniqalias_cache_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_uniqalias_cache_map` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `alias_uid` int(11) NOT NULL DEFAULT '0',
  `url_cache_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `check_existence` (`alias_uid`,`url_cache_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_uniqalias_cache_map`
--

LOCK TABLES `tx_realurl_uniqalias_cache_map` WRITE;
/*!40000 ALTER TABLE `tx_realurl_uniqalias_cache_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_realurl_uniqalias_cache_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_urldata`
--

DROP TABLE IF EXISTS `tx_realurl_urldata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_urldata` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `rootpage_id` int(11) NOT NULL DEFAULT '0',
  `original_url` text COLLATE utf8_unicode_ci,
  `original_url_hash` int(10) unsigned NOT NULL DEFAULT '0',
  `speaking_url` text COLLATE utf8_unicode_ci,
  `speaking_url_hash` int(10) unsigned NOT NULL DEFAULT '0',
  `request_variables` text COLLATE utf8_unicode_ci,
  `expire` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `pathq1` (`rootpage_id`,`original_url_hash`,`expire`),
  KEY `pathq2` (`rootpage_id`,`speaking_url_hash`,`expire`),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_urldata`
--

LOCK TABLES `tx_realurl_urldata` WRITE;
/*!40000 ALTER TABLE `tx_realurl_urldata` DISABLE KEYS */;
INSERT INTO `tx_realurl_urldata` VALUES (1,0,1508493292,1,1,'id=1',327306477,'/',2043925204,'{\"id\":\"1\"}',0),(2,0,1508631986,2,1,'id=2',2324372823,'home/',4285650444,'{\"id\":\"2\"}',0),(3,0,1508631986,3,1,'id=3',4253822401,'news/',312823993,'{\"id\":\"3\"}',0),(4,0,1508632126,4,1,'id=4',1676195938,'leistungen/',152094668,'{\"id\":\"4\"}',0),(5,0,1508632126,5,1,'id=5',351242484,'kontakt/',2355839649,'{\"id\":\"5\"}',0);
/*!40000 ALTER TABLE `tx_realurl_urldata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rsaauth_keys`
--

DROP TABLE IF EXISTS `tx_rsaauth_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rsaauth_keys` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `key_value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `crdate` (`crdate`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rsaauth_keys`
--

LOCK TABLES `tx_rsaauth_keys` WRITE;
/*!40000 ALTER TABLE `tx_rsaauth_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rsaauth_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_scheduler_task`
--

DROP TABLE IF EXISTS `tx_scheduler_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_scheduler_task` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `disable` smallint(5) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `nextexecution` int(10) unsigned NOT NULL DEFAULT '0',
  `lastexecution_time` int(10) unsigned NOT NULL DEFAULT '0',
  `lastexecution_failure` text COLLATE utf8_unicode_ci,
  `lastexecution_context` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `serialized_task_object` blob,
  `serialized_executions` blob,
  `task_group` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `index_nextexecution` (`nextexecution`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_scheduler_task`
--

LOCK TABLES `tx_scheduler_task` WRITE;
/*!40000 ALTER TABLE `tx_scheduler_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_scheduler_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_scheduler_task_group`
--

DROP TABLE IF EXISTS `tx_scheduler_task_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_scheduler_task_group` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `groupName` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_scheduler_task_group`
--

LOCK TABLES `tx_scheduler_task_group` WRITE;
/*!40000 ALTER TABLE `tx_scheduler_task_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_scheduler_task_group` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-23 12:59:36

<?php

/***************************************************************
 * Extension Manager/Repository config file for ext "dyncss".
 *
 * Auto generated | Identifier: 3fc039119c1cb3524a34c40280c13f73
 *
 * Manual updates:
 * Only the data in the array - everything else is removed by next
 * writing. "version" and "dependencies" must not be touched!
 ***************************************************************/

$EM_CONF[$_EXTKEY] = array (
	'title' => 'DynCss - BaseModule',
	'description' => 'Compile your CSS dynamically with DynCss Adapters.',
	'category' => 'fe',
	'version' => '0.8.2',
	'state' => 'stable',
	'uploadfolder' => true,
	'createDirs' => '',
	'clearcacheonload' => true,
	'author' => 'Kay Strobach',
	'author_email' => 'kay.strobach@typo3.org',
	'author_company' => '',
	'constraints' => 
	array (
		'depends' => 
		array (
			'typo3' => '7.6.15-8.7.99',
		),
		'conflicts' => 
		array (
		),
		'suggests' => 
		array (
		),
	),
	'_md5_values_when_last_written' => 'a:32:{s:9:"ChangeLog";s:4:"cf48";s:11:"LICENSE.txt";s:4:"e7b1";s:9:"README.md";s:4:"ed2a";s:13:"composer.json";s:4:"5445";s:21:"ext_conf_template.txt";s:4:"44d9";s:12:"ext_icon.gif";s:4:"6759";s:17:"ext_localconf.php";s:4:"df18";s:14:"ext_tables.php";s:4:"9cfd";s:13:"locallang.xml";s:4:"13b4";s:43:"Classes/Command/DyncssCommandController.php";s:4:"58f0";s:36:"Classes/Configuration/BeRegistry.php";s:4:"e052";s:29:"Classes/ExtMgm/Statefield.php";s:4:"9730";s:55:"Classes/Hooks/T3libPageRendererRenderPreProcessHook.php";s:4:"a9b1";s:34:"Classes/Hooks/T3libTcemainHook.php";s:4:"1cf3";s:47:"Classes/Hooks/TslibFeContentPostProcAllHook.php";s:4:"efe3";s:55:"Classes/Hooks/Backend/Toolbar/ClearCacheActionsHook.php";s:4:"9877";s:33:"Classes/Parser/AbstractParser.php";s:4:"43a1";s:30:"Classes/Parser/DummyParser.php";s:4:"42b2";s:34:"Classes/Parser/ParserInterface.php";s:4:"c4c8";s:33:"Classes/Service/DyncssService.php";s:4:"55d6";s:40:"Classes/Utilities/ApplicationContext.php";s:4:"57bb";s:35:"Documentation/Images/clearcache.png";s:4:"745f";s:34:"Documentation/Images/sourcemap.png";s:4:"6b0d";s:33:"Migrations/Code/ClassAliasMap.php";s:4:"d33d";s:39:"Migrations/Code/LegacyClassesForIde.php";s:4:"3bdb";s:40:"Resources/Private/Language/locallang.xlf";s:4:"d8c3";s:60:"Resources/Public/Icons/actions-system-cache-clear-dyncss.svg";s:4:"43a7";s:43:"Tests/Unit/Configuration/BeRegistryTest.php";s:4:"eaab";s:36:"Tests/Unit/ExtMgm/StatefieldTest.php";s:4:"2905";s:30:"Tests/Unit/Hooks/SetupTest.php";s:4:"09ec";s:37:"Tests/Unit/Parser/DummyParserTest.php";s:4:"b67a";s:40:"Tests/Unit/Service/DyncssServiceTest.php";s:4:"bbc7";}',
);

?>
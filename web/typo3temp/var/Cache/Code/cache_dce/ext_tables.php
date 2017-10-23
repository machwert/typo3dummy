<?php

$GLOBALS['TCA']['tt_content']['columns']['CType']['config']['items'][] = [
	0 => 'LLL:EXT:dce/Resources/Private/Language/locallang_db.xml:tx_dce_domain_model_dce_long',
	1 => '--div--'
];

\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addTCAcolumns('tt_content', [

]);


// global definitions
$GLOBALS['TCA']['tt_content']['columns']['CType']['config']['items'][] = [
	0 => 'LLL:EXT:dce/Resources/Private/Language/locallang_db.xml:tx_dce_domain_model_dce.miscellaneous',
	1 => '--div--'
];

\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addPageTSConfig('mod.wizards.newContentElement.wizardItems.dce.header = LLL:EXT:dce/Resources/Private/Language/locallang_db.xml:tx_dce_domain_model_dce_long');

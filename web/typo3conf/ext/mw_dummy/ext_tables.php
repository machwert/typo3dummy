<?php

if(!defined ('TYPO3_MODE')){
    die('Access denied.');
}

$iconRegistry = \TYPO3\CMS\Core\Utility\GeneralUtility::makeInstance(\TYPO3\CMS\Core\Imaging\IconRegistry::class);
$iconRegistry->registerIcon(
    'icon_mw_dummy_slideshow',
    \TYPO3\CMS\Core\Imaging\IconProvider\SvgIconProvider::class,
    ['source' => 'EXT:mw_dummy/Resources/Public/Icons/slideshow.svg']
);

$iconRegistry->registerIcon(
    'icon_mw_dummy_gallery',
    \TYPO3\CMS\Core\Imaging\IconProvider\SvgIconProvider::class,
    ['source' => 'EXT:mw_dummy/Resources/Public/Icons/gallery.svg']
);

\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addStaticFile($_EXTKEY, 'Configuration/TypoScript', 'machwert Dummy');
<?php

if(!defined ('TYPO3_MODE')){
    die('Access denied.');
}

\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addPageTSConfig(
    '<INCLUDE_TYPOSCRIPT: source="FILE:EXT:carashtheme/Configuration/TSConfig/Page.ts">'
);

/**
 * Configure Custom Content Element
 */
\TYPO3\CMS\Extbase\Utility\ExtensionUtility::configurePlugin(
    'Machwert.'.$_EXTKEY,
    'CustomContentElement',
    array(
        'CustomElement' => 'render',
    ),
    array(
    ),
    \TYPO3\CMS\Extbase\Utility\ExtensionUtility::PLUGIN_TYPE_CONTENT_ELEMENT
);


/**
 * Include TypoScript for tt_content before static
 */
$customFluidContentElementTypoScriptConstants = trim('
plugin.tx_carashtheme {
    view {
        templateRootPath = EXT:carashtheme/Resources/Private/Templates/
        partialRootPath = EXT:carashtheme/Resources/Private/Partials/
        layoutRootPath = EXT:carashtheme/Resources/Private/Layouts/
    }
}
');
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addTypoScript(
    $_EXTKEY,
    'constants',
    $customFluidContentElementTypoScriptConstants
);

\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addTypoScript(
    $_EXTKEY,
    'setup',
    $customFluidContentElementTypoScriptSetup,
    43
);

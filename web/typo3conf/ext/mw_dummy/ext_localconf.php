<?php

if(!defined ('TYPO3_MODE')){
    die('Access denied.');
}

\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addPageTSConfig(
    '<INCLUDE_TYPOSCRIPT: source="FILE:EXT:mw_dummy/Configuration/TSConfig/Page.ts">'
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
plugin.tx_mwdummy {
    view {
        templateRootPath = EXT:mw_dummy/Resources/Private/Templates/
        partialRootPath = EXT:mw_dummy/Resources/Private/Partials/
        layoutRootPath = EXT:mw_dummy/Resources/Private/Layouts/
    }
}
');
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addTypoScript(
    $_EXTKEY,
    'constants',
    $customFluidContentElementTypoScriptConstants
);

$customFluidContentElementTypoScriptSetup = trim('
tt_content.mwdummy_slideshow = COA
tt_content.mwdummy_slideshow {
    10 = < lib.stdheader
    20 = FLUIDTEMPLATE
    20 {
        file = {$plugin.tx_mwdummy.view.templateRootPath}CustomElement/Slideshow.html
        partialRootPath = {$plugin.tx_mwdummy.view.partialRootPath}
        layoutRootPath = {$plugin.tx_mwdummy.view.layoutRootPath}
    }
}
');

\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addTypoScript(
    $_EXTKEY,
    'setup',
    $customFluidContentElementTypoScriptSetup,
    43
);

$customFluidContentElementTypoScriptSetup = trim('
tt_content.mwdummy_gallery = COA
tt_content.mwdummy_gallery {
    10 = < lib.stdheader
    20 = FLUIDTEMPLATE
    20 {
        file = {$plugin.tx_mwdummy.view.templateRootPath}CustomElement/Gallery.html
        partialRootPath = {$plugin.tx_mwdummy.view.partialRootPath}
        layoutRootPath = {$plugin.tx_mwdummy.view.layoutRootPath}
    }
}
');

\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addTypoScript(
    $_EXTKEY,
    'setup',
    $customFluidContentElementTypoScriptSetup,
    43
);
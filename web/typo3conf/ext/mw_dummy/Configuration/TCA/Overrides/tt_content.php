<?php
call_user_func(function()
{
    /**
     * Register Custom Content Element
     */

    \TYPO3\CMS\Extbase\Utility\ExtensionUtility::registerPlugin(
        'Machwert.MwDummy',
        'CustomContentElement',
        'Custom Content Element'
    );

    /**
     * Register Custom Fluid Content Element
     */

    \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addPlugin(
        array(
            'Slideshow',
            'mwdummy_slideshow'
        ),
        'CType',
        'mw_dummy'
    );


    \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addPlugin(
        array(
            'Gallery',
            'mwdummy_gallery'
        ),
        'CType',
        'mw_dummy'
    );

    /**
     * Prepare TCA for Custom Content Element
     */
    $GLOBALS['TCA']['tt_content']['types']['mwdummy_customcontentelement']['showitem'] = $GLOBALS['TCA']['tt_content']['types']['text']['showitem'];

    /**
     * Prepare TCA for Custom Fluid Content Element
     */
    $GLOBALS['TCA']['tt_content']['types']['mwdummy_gallery']['showitem'] = 'CType,hidden,header,header_layout,header_link,image';
    $GLOBALS['TCA']['tt_content']['types']['mwdummy_slideshow']['showitem'] = 'CType,hidden,header,header_layout,header_link,bodytext;Verzeichnis';


    /*
    \TYPO3\CMS\Extbase\Utility\ExtensionUtility::registerPlugin(
        'Vendor.MyExtension',
        'PluginName',
        'Plugin Description'
    );

    $newColumn = [
        'programming_language' => [
            'exclude' => true,
            'label' => 'Programming Language',
            'config' => [
                'type' => 'select',
                'renderType' => 'selectSingle',
                'items' => [
                    ...
                ]
            ]
        ]
    ];
    \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addTCAcolumns('tt_content', $newColumn);

    // Reload on change
    $GLOBALS['TCA']['tt_content']['ctrl']['requestUpdate'] .= ',programming_language';
    // Use type icon
    $GLOBALS['TCA']['tt_content']['ctrl']['typeicon_classes']['fs_code_snippet'] = 'fs-code-snippet';

    // Adds the content element to the "Type" dropdown
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addPlugin(
   array(
      'LLL:EXT:your_extension_key/Resources/Private/Language/Tca.xlf:yourextensionkey_newcontentelement',
      'yourextensionkey_newcontentelement',
      'EXT:your_extension_key/Resources/Public/Icons/ContentElements/yourextensionkey_newcontentelement.gif'
   ),
   'CType',
   'your_extension_key'
);

    */
});



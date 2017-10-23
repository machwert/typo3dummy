<?php
namespace Machwert\MwDummy\ViewHelpers;

/***************************************************************
 *  Copyright notice
 *
 *  (c) 2016 Volker Golbig <v.golbig@machwert.de>
 *  
 *  All rights reserved
 *
 *  This script is part of the TYPO3 project. The TYPO3 project is
 *  free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  The GNU General Public License can be found at
 *  http://www.gnu.org/copyleft/gpl.html.
 *
 *  This script is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  This copyright notice MUST APPEAR in all copies of the script!
 ***************************************************************/

/**
 * @author Volker Golbig <v.golbig@machwert.de>
 */
class SlideshowViewHelper extends \TYPO3\CMS\Fluid\Core\ViewHelper\AbstractViewHelper {
    
    /**
     * @param string $data
     * @param string $as
     * @param string $table
     * @param string $field
     * 
     * @return string
     */
    public function render($data,$as = "items", $table = "tt_content", $field = "image") {

        $directory = trim($data);
        if(substr($directory,-1)!='/') {
            $directory = $directory.'/';
        }
        $images = glob($directory."*.{jpg,png,gif,JPG,PNG,GIF}", GLOB_BRACE);
        $content = '';
        $items = array();

        foreach($images as $image) {
            $content .= $image;
            $items[]['publicUrl'] = $image;
        }

        $this->templateVariableContainer->add($as, $items);
        $content = $this->renderChildren();
        $this->templateVariableContainer->remove($as);

        if(count($images) > 1) {
            $headerData = '
<link rel="stylesheet" type="text/css" href="typo3conf/ext/mw_dummy/Resources/Public/Css/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="typo3conf/ext/mw_dummy/Resources/Public/Css/slick/slick-theme.css"/>
        ';
            $footerData = '
<script type="text/javascript" src="typo3conf/ext/mw_dummy/Resources/Public/Css/slick/slick.min.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
        $(\'.slideshow\').slick({
            slidesToShow: 1,
            slidesToScroll: 1,
            autoplay: true,
            autoplaySpeed: 2000
        });
    });
</script>
        ';

            $GLOBALS['TSFE']->additionalHeaderData['tx_mw_dummy'] = $headerData;
            $GLOBALS['TSFE']->additionalFooterData['tx_mw_dummy'] = $footerData;
        }
        return $content;
    }
}
?>

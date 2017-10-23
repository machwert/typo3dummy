## HEADER ADDITIONS
lib.stdheader.10.setCurrent.htmlSpecialChars = 0
lib.stdheader {
    10 {
        6 < lib.stdheader.10.2
        6.dataWrap = <h2 class="boxheader">|</h2>
        //6.dataWrap.htmlSpecialChars = 0

        7 < lib.stdheader.10.2
        7.dataWrap = <h3 class="boxheader">|</h3>

        12 < lib.stdheader.10.2
        12.dataWrap = <div class="h1">|</div>

    }
}

####### Rahmen
tt_content.stdWrap {
    innerWrap.cObject = CASE
    innerWrap.cObject {
        1 =< tt_content.stdWrap.innerWrap.cObject.default
        1.20.10.value = contentbox col2
        1.30.cObject.default.value = ><div class="innercont">|</div></div>

        2 < tt_content.stdWrap.innerWrap.cObject.default
        2.20.10.value = contentbox col2 last
        2.30.cObject.default.value = ><div class="innercont">|</div></div><div class="clearer"></div>

        3 =< tt_content.stdWrap.innerWrap.cObject.default
        3.20.10.value = contentbox col3
        3.30.cObject.default.value = ><div class="innercont">|</div></div>

        4 =< tt_content.stdWrap.innerWrap.cObject.default
        4.20.10.value = contentbox col3 last
        4.30.cObject.default.value = ><div class="innercont">|</div></div><div class="clearer"></div>

        7 =< tt_content.stdWrap.innerWrap.cObject.default
        7.20.10.value = contentbox col4
        7.30.cObject.default.value = ><div class="innercont">|</div></div>

        8 =< tt_content.stdWrap.innerWrap.cObject.default
        8.20.10.value = contentbox col4 last
        8.30.cObject.default.value = ><div class="innercont">|</div></div><div class="clearer"></div>

        16 =< tt_content.stdWrap.innerWrap.cObject.default
        16.20.10.value = contentbox col6
        16.30.cObject.default.value = ><div class="innercont">|</div></div>

        17 =< tt_content.stdWrap.innerWrap.cObject.default
        17.20.10.value = contentbox col6 last
        17.30.cObject.default.value = ><div class="innercont">|</div></div><div class="clearer"></div>

        19 =< tt_content.stdWrap.innerWrap.cObject.default
        19.20.10.value = contentbox col8
        19.30.cObject.default.value = ><div class="innercont">|</div></div>

        22 =< tt_content.stdWrap.innerWrap.cObject.default
        22.20.10.value = contentbox col8 last
        22.30.cObject.default.value = ><div class="innercont">|</div></div><div class="clearer"></div>

        25 =< tt_content.stdWrap.innerWrap.cObject.default
        25.20.10.value = contentbox col9
        25.30.cObject.default.value = ><div class="innercont">|</div></div>

        26 =< tt_content.stdWrap.innerWrap.cObject.default
        26.20.10.value = contentbox col9 last
        26.30.cObject.default.value = ><div class="innercont">|</div></div><div class="clearer"></div>

        27 =< tt_content.stdWrap.innerWrap.cObject.default
        27.20.10.value = contentbox cbox10
        27.30.cObject.default.value = ><div class="innercont">|</div></div>

        28 =< tt_content.stdWrap.innerWrap.cObject.default
        28.20.10.value = contentbox cbox10last
        28.30.cObject.default.value = ><div class="innercont">|</div></div><div class="clearer"></div>

    }
}

## TT CONTENT LAYOUTS
tt_content.stdWrap.innerWrap.cObject.default.20.40 = CASE
tt_content.stdWrap.innerWrap.cObject.default.20.40 {
    key.field = layout

    102 = TEXT
    102.value = csc-special


    108 = TEXT
    108.value = paddingleft

    110 = TEXT
    110.value = paddingright

    112 = TEXT
    112.value = paddingleft paddingright
    114 = TEXT
    114.value = paddingtop
    116 = TEXT
    116.value = paddingtop paddingleft

    117 = TEXT
    117.value = paddingtop paddingright



    118 = TEXT
    118.value = paddingtop paddingleft paddingright

    #122 = TEXT
    #122.value = largepadding

    #124 = TEXT
    #124.value = paddingtop largepadding
    #107 = TEXT
    #107.value = s_last
    #108 = TEXT
    #108.value = marginauto

    131 = TEXT
    131.value = ka_unternehmen ka_u margintop startbox_large
    132 = TEXT
    132.value = ka_news ka_n startbox_small
    133 = TEXT
    133.value = ka_marken ka_m
    134 = TEXT
    134.value = ka_verantwortung ka_v
    135 = TEXT
    135.value = ka_karriere ka_k startbox_small
    136 = TEXT
    136.value = ka_innovation ka_i startbox_large
}

## DONT WRAP GRIDELEMENTS ??
tt_content.stdWrap.innerWrap.cObject.default {
    if {
        equals.field = CType
        value = gridelements_pi1
        negate = 1
    }
    //20.10.value = testouter
}

tt_content.gridelements_pi1 {
    //stdWrap.wrap = <div class="huhu">|</div>
    10>
    stdWrap.innerWrap >
    stdWrap.wrap >
    stdWrap.outerWrap >
    #20.stdWrap.innerWrap.cObject.default.20.10.value = testingthis_outer
    #20.stdWrap.innerWrap.cObject.default.30.cObject.default.value = ><div class="innercontent">|</div></div><div class="clearer"></div>
}


tt_content.gridelements_pi1.20.10.setup {
    # ID des Gridelements
    1 < lib.gridelements.defaultGridSetup
    1 {
        # FLUIDTEMPLATE konfigurieren
        cObject = FLUIDTEMPLATE
        cObject {
            file = {$resDir}/Private/Extensions/Gridelements/layout_container_single.html
            partialRootPath = {$resDir}/Private/Extensions/Gridelements/Partials/
            layoutRootPath = {$resDir}/Private/Extensions/Gridelements/Layouts/
        }
    }
    2 < lib.gridelements.defaultGridSetup
    2 {
        # FLUIDTEMPLATE konfigurieren
        cObject = FLUIDTEMPLATE
        cObject {
            file = {$resDir}/Private/Extensions/Gridelements/layout_container_double.html
            partialRootPath = {$resDir}/Private/Extensions/Gridelements/Partials/
            layoutRootPath = {$resDir}/Private/Extensions/Gridelements/Layouts/
        }
    }

    3 < lib.gridelements.defaultGridSetup
    3 {
        # FLUIDTEMPLATE konfigurieren
        cObject = FLUIDTEMPLATE
        cObject {
            file ={$resDir}/Private/Extensions/Gridelements/layout_container_triple.html
            partialRootPath = {$resDir}/Private/Extensions/Gridelements/Partials/
            layoutRootPath = {$resDir}/Private/Extensions/Gridelements/Layouts/
        }
    }

    4 < lib.gridelements.defaultGridSetup
    4 {
        # FLUIDTEMPLATE konfigurieren
        cObject = FLUIDTEMPLATE
        cObject {
            file ={$resDir}/Private/Extensions/Gridelements/layout_container_image_box.html
            partialRootPath = {$resDir}/Private/Extensions/Gridelements/Partials/
            layoutRootPath = {$resDir}/Private/Extensions/Gridelements/Layouts/
        }
    }

    5 < lib.gridelements.defaultGridSetup
    5 {
        # FLUIDTEMPLATE konfigurieren
        cObject = FLUIDTEMPLATE
        cObject {
            file ={$resDir}/Private/Extensions/Gridelements/layout_container_full.html
            partialRootPath = {$resDir}/Private/Extensions/Gridelements/Partials/
            layoutRootPath = {$resDir}/Private/Extensions/Gridelements/Layouts/
        }
    }
}


// EIGENE CONTENTELEMENTE

lib.fluidContent.templateRootPaths.0 = {$resDir}/Private/Extensions/Fsc/Templates/
lib.fluidContent.partialRootPaths.0 = {$resDir}/Private/Extensions/Fsc/Partials/
lib.fluidContent.layoutRootPaths.0 = {$resDir}/Private/Extensions/Fsc/Layouts/

tt_content {
    fixed_text < lib.fluidContent
    fixed_text {
        templateName = FixedText
    }

}
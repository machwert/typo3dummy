lib.toplogo = TEXT
lib.toplogo {
    value = <img src="typo3conf/ext/mw_dummy/Resources/Public/Images/logo_machwert.svg" alt="Logo" title="zur Startseite" />
    typolink.parameter = 2
}


[PIDinRootline = 3]
    lib.toplogo.typolink.parameter = 3
[global]


### BREADCRUMB
lib.breadcrumb = HMENU
lib.breadcrumb {
    special = rootline
    special.range = 1|-1
    1 = TMENU
    1 {
        # wrap = you are here: &nbsp;&nbsp; |
        noBlur = 1
        NO {
            allWrap =   |  &nbsp;&nbsp; <i class="fa fa-angle-right"></i> &nbsp;&nbsp;   |*|  |  &nbsp;&nbsp; <i class="fa fa-angle-right"></i> &nbsp;&nbsp;  |*| |
            stdWrap.htmlSpecialChars = 1
        }
        ACT = 1
        ACT {
            allWrap = <span class="act">  | </span>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;&nbsp;    |*|  <span class="act">  | </span>   &nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;&nbsp;   |*| <span class="act">  | </span>
            stdWrap.htmlSpecialChars = 1
        }
        CUR = 1
        CUR {
            allWrap = <span class="cur">  | </span>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;&nbsp;    |*|  <span class="cur">  | </span>   &nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;&nbsp;   |*| <span class="cur">  | </span>
            stdWrap.htmlSpecialChars = 1
            doNotLinkIt = 1
        }
    }
}

### SIMPLE PAGEHEADER
lib.pageheader = TEXT
lib.pageheader {
    value = {leveltitle:-1}
    insertData = 1
    wrap = <h1>|</h1>
}





### STANDARD FOOTER
lib.footer = COA
lib.footer {

}


[globalVar = TSFE:id=3]
    lib.footer >
    lib.footer = COA
    lib.footer {

    10 < styles.content.get
    10.select.where = colPos = 2
    10.stdWrap.wrap = <div class="footer_left col8">|</div>

    20 < styles.content.get
    20.select.where = colPos = 3
    20.stdWrap.wrap = <div class="footer_right col4 last">|</div>

    }


[global]


### LANGUAGE NAV
lib.lang = HMENU
lib.lang  {
    # Ein Sprach-Menü wird erzeugt
    special = language
    # Reihenfolge und Auswahl der Sprachen im Menü
    special.value = 1,0
    special.normalWhenNoLanguage = 0
    //wrap = <div class="langmenu"><ul>|</ul></div>
    1 = TMENU
    1 {
        noBlur = 1
        # Standard Sprachen
        NO = 1
        NO {
            linkWrap = <li class="lang langeng">|</li>||<li class="lang langde hier last">|</li>
            # Standard-Titel für den Link wäre Seitenttitel
            # => anderer Text als Link-Text (Optionsschift)
            stdWrap.override = EN||DE
            # Standardmäßige Verlinkung des Menüs ausschalten
            # Da diese sonstige GET-Parameter nicht enthält
            doNotLinkIt = 1
            # Nun wird der Link mit den aktuellen GET-Parametern neu aufgebaut
            stdWrap.typolink.parameter.data = page:uid
            stdWrap.typolink.additionalParams = &L=1||&L=0
            stdWrap.typolink.addQueryString = 1
            stdWrap.typolink.addQueryString.exclude = L,id,cHash,no_cache
            stdWrap.typolink.addQueryString.method = GET
            stdWrap.typolink.useCacheHash = 1
            stdWrap.typolink.no_cache = 0
        }
        # Aktive Sprache
        ACT < .NO
        ACT.linkWrap = <li class="lang langeng">|</li>||<li class="lang langde hier last">|</li>
        # NO + Übersetzung nicht vorhanden
        USERDEF1 < .NO
        # ACT + Übersetzung nicht vorhanden
        USERDEF2 < .ACT
    }
}

[globalVar = GP:L=1]

    lib.lang  = HMENU
    lib.lang  {
        # Ein Sprach-Menü wird erzeugt
        special = language
        # Reihenfolge und Auswahl der Sprachen im Menü
        special.value = 1,0
        special.normalWhenNoLanguage = 0
        //wrap = <div class="langmenu"><ul>|</ul></div>
        1 = TMENU
        1 {
            noBlur = 1
            # Standard Sprachen
            NO = 1
            NO {
                linkWrap = <li class="lang langeng hier">|</li>||<li class="lang langde last">|</li>
                # Standard-Titel für den Link wäre Seitenttitel
                # => anderer Text als Link-Text (Optionsschift)
                stdWrap.override = EN||DE
                # Standardmäßige Verlinkung des Menüs ausschalten
                # Da diese sonstige GET-Parameter nicht enthält
                doNotLinkIt = 1
                # Nun wird der Link mit den aktuellen GET-Parametern neu aufgebaut
                stdWrap.typolink.parameter.data = page:uid
                stdWrap.typolink.additionalParams = &L=1||&L=0
                stdWrap.typolink.addQueryString = 1
                stdWrap.typolink.addQueryString.exclude = L,id,cHash,no_cache
                stdWrap.typolink.addQueryString.method = GET
                stdWrap.typolink.useCacheHash = 1
                stdWrap.typolink.no_cache = 0
            }
            # Aktive Sprache
            ACT < .NO
            ACT.linkWrap = <li class="lang langeng hier">|</li>||<li class="lang langde last">|</li>
            # NO + Übersetzung nicht vorhanden
            USERDEF1 < .NO
            # ACT + Übersetzung nicht vorhanden
            USERDEF2 < .ACT
        }
    }

[global]

lib.whoami = TEXT
//lib.whoami.stdWrap.wrap = &nbsp; |
//lib.whoami.stdWrap.htmlSpecialChars = 1
lib.whoami.value >
[PIDinRootline = 3]
    lib.whoami.value = wrapper_career
[global]

lib.whoamifooter = TEXT
//lib.whoami.stdWrap.wrap = &nbsp; |
//lib.whoami.stdWrap.htmlSpecialChars = 1
lib.whoamifooter.value = footer_std
[globalVar = TSFE:id=3]
    lib.whoamifooter.value = careerfooter
[global]


lib.sideNav < lib.mainnav

# localize date format, used within the fluid templates
lib.ll_date = TEXT
lib.ll_date {
    current = 1
    strftime = %d.%m.%Y
}



lib.newsListLink = TEXT
lib.newsListLink.value = mehr News
lib.newsListLink.typolink.parameter = 36
lib.newsListLink.wrap = <div class="newsListLink">|</div>


lib.eventListLink = TEXT
lib.eventListLink.value = mehr Events
lib.eventListLink.typolink.parameter = 37
lib.eventListLink.wrap = <div class="newsListLink">|</div>

[PIDinRootline = 3]
    lib.eventListLink.typolink.parameter = 11
[global]

[PIDinRootline = 144]

    config {
        sys_language_uid = 1
        language = en
        htmlTag_langKey = en
        locale_all = en_GB
    }
    # bodyTag
    page.bodyTag >
    page.bodyTagCObject = TEXT
    page.bodyTagCObject.value= <body id="iteratec_english"><script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start': new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0], j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src='https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f); })(window,document,'script','dataLayer','GTM-KVZZWT');</script><noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-KVZZWT" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>


    page.includeCSS {
        file99 = {$resDir}/Public/Css/en.css
    }

    lib.mainnav >
    lib.mobileNav >


    lib.footer {
        10 = COA
        10 {
            stdWrap.wrap = <div class="footer_social">|</div>
            10 = COA
            10 {
                stdWrap.wrap = <div class="socialbar col6"><h2>Follow us</h2>|</div>
            }
        }
        20 = COA
        20 {
            stdWrap.wrap = <div class="footer_standorte"><h2>Locations</h2>|</div>
			10 = RECORDS
            10 {
                tables = tt_content
                source = 3686
                stdWrap.wrap =<div class="footercol col2">|</div>
            }
            20 < .10
            20 {
                source = 5783
            }
            30 < .10
            30 {
                source = 3687
            }
            40 < .10
            40 {
                source = 3688
            }
            50 < .10
            50 {
                source = 3689
                stdWrap.wrap =<div class="footercol col2 last">|</div>
            }
            60 < .10
            60 {
                source = 3690
            }
            70 < .10
            70 {
                source = 3691
                stdWrap.wrap =<div class="footercol col2 last">|</div>
            }
        }

		40 = HMENU
    40 {
        special = directory
        special.value = 12
        wrap = <ul class="footer_nav">|</ul>
        1 = TMENU
        1 {
            noBlur = 1
            expAll = 1
            NO {
                wrapItemAndSub = <li class="first"><a href="/" title="German Version">German Version</a></li><li>|</li>|*|<li class="last">|</li>

            }
            ACT = 1
            ACT {
                wrapItemAndSub = <li class="first"><a href="/" title="German Version">German Version</a></li><li>|</li>|*|<li class="last">|</li>

            }
            CUR = 1
            CUR {
                wrapItemAndSub =  <li class="first"><a href="/" title="German Version">German Version</a></li><li>|</li>|*|<li class="last">|</li>

            }
        }
    }

    }




[global]
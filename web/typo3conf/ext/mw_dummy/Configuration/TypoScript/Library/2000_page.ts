page = PAGE
typeNum = 0
## FAVICON
page.shortcutIcon = {$resDir}/Public/Icons/favicon.ico

##CSS & JS
page.includeCSS {
    file50 = {$customCss}
}

page.bodyTag >

// properties for Facebook

lib.canonicalTag = TEXT
lib.canonicalTag {
    typolink {
        parameter = {page:uid}
        parameter.insertData = 1
        useCacheHash = 0
        # add all get parameters from the current URL
        addQueryString = 1
        addQueryString.method = GET
        # remove the page id from the parameters so it is not inserted twice
        addQueryString.exclude = id,cHash
        returnLast = url
    }
    wrap = |
}

// condition: nur für facebook user agent:
//[useragent = facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)]
page.headerData.15 = COA
page.headerData.15 {
    5 = TEXT
    5.value (
        <meta name="twitter:card" content="summary" />
    )
    6 = TEXT
    6.value = <meta property="og:type" content="website" />
    20 = TEXT
    20.value (

<meta property="og:title" content="
    )
    30 = TEXT
    30.data = page:title
    40 = TEXT
    40.value = "/>
    60 = TEXT
    60.value (

<meta property="og:description" content="
    )
    70 = TEXT
    70.data = page:description
    80 = TEXT
    80.value = "/>
}
page.headerData.16 = COA
page.headerData.16 {
    90 = TEXT
    90.value (

<meta property="og:url" content="
    )
    100 < lib.canonicalTag
    110 = TEXT
    110.value(
"/>

    )
}

// canonical tag für google
page.headerData.42 = COA
page.headerData.42 {
    10 = TEXT
    10 {
        value =<link rel="canonical" href="
    }
    20 < lib.canonicalTag
    30 = TEXT
    30.value(
" />

    )
}

[globalVar = GP:tx_news_pi1|news > 0]
 page.headerData.15.6 >
 page.headerData.15.20 >
 page.headerData.15.30 >
 page.headerData.15.40 >
 page.headerData.15.60 >
 page.headerData.15.70 >
 page.headerData.15.80 >
 page.headerData.16 >
[global]

[globalVar = TSFE:id=2]
    page.headerData.99921 = TEXT
    page.headerData.99921 {
        value (
        <script type="text/javascript">

       jQuery.noConflict();
jQuery(document).ready(function() {
                 var mySwiper = new Swiper ('.stage_start', {
            pagination: '.swiper-pagination',
            paginationClickable: true,
            autoplay: 6000,
            autoplayDisableOnInteraction: false
        });
        var tweetSwiper = new Swiper ('.twitterfeed', {
            autoplay: 8000,
            autoplayDisableOnInteraction: false
        });

});



        </script>

        )
    }

[global]

[globalVar = TSFE:id=3]
    page.headerData.99921 = TEXT
    page.headerData.99921 {
        value (
        <script type="text/javascript">


       jQuery.noConflict();
jQuery(document).ready(function() {
          var mySwiper = new Swiper ('.stage_start', {
            pagination: '.swiper-pagination',
            paginationClickable: true,
            autoplay: 6000,
            autoplayDisableOnInteraction: false
        });

       });

       </script>

        )
    }

[global]



page.10 = FLUIDTEMPLATE
page.10 {
    partialRootPath = {$resDir}/Private/Partials
    layoutRootPath = {$resDir}/Private/Layouts
    file.stdWrap.cObject = CASE
    file.stdWrap.cObject {
        key.data = levelfield:-1, backend_layout_next_level, slide
        key.override.field = backend_layout
        # Set the default Template, Startseite
        pagets__1 = TEXT
        pagets__1.value = {$resDir}/Private/Templates/StartTemplate.html

        pagets__2 = TEXT
        pagets__2.value = {$resDir}/Private/Templates/ContentTemplate.html

        pagets__3 = TEXT
        pagets__3.value = {$resDir}/Private/Templates/OverviewTemplate.html

        pagets__4 = TEXT
        pagets__4.value = {$resDir}/Private/Templates/StartTemplate.html

        pagets__5 = TEXT
        pagets__5.value = {$resDir}/Private/Templates/ContentTemplate.html

        default = TEXT
        default.value = {$resDir}/Private/Templates/DefaultTemplate.html


    }
}


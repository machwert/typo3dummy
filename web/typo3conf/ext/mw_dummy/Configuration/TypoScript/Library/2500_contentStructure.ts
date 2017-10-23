
### tx_news: prepare single title
temp.newsTitle = RECORDS
temp.newsTitle {
    source = {GP:tx_news_pi1|news}
    source.insertData = 1
    tables = tx_news_domain_model_news
    conf.tx_news_domain_model_news >
    conf.tx_news_domain_model_news = TEXT
    conf.tx_news_domain_model_news.field = title
}


[globalVar = TSFE:id=232] || [globalVar = TSFE:id=258]
    config.noPageTitle = 2
    page.headerData.5 >
    page.headerData.5 = TEXT
    page.headerData.5 < temp.newsTitle
    page.headerData.5.field = title
    page.headerData.5.wrap = <title>|</title>
[global]

lib.contentStage = COA
lib.contentStage {
    5 = TEXT
    5.value = <div class="stageoverlay"></div>

    10 = COA
    10.stdWrap.wrap = <div class="stageinnerwrapper"><div class="stageinner"><div class="stagecontents">|</div></div></div>
    10 {
        10 = TEXT
        //10.value = Link zurück tbd
        10.typolink.parameter.data = leveluid : -2
        10.stdWrap.wrap = <i class="icon-left"></i>|
        10.wrap = <div class="stagesubheader">|</div>
        #10.data = leveltitle : -2
        10.data = levelfield:-2, nav_title // levelfield:-2, title
        10.insertData = 1

        20 = TEXT
        20 {
            field = nav_title // title
            //value = {leveltitle:-1}
            //insertData = 1
            #wrap = <div class="h1 stageheader">|</div>
            wrap = <h1 class="stageheader">|</h1>
            htmlSpecialChars = 0
        }
    }

}


[globalVar = TSFE:id=38] || [globalVar = TSFE:id=39] || [globalVar = TSFE:id=146] || [globalVar = TSFE:id=232]
//[globalVar = GP:tx_news_pi1|action = detail]
    lib.contentStage {
        
        10.20 >
        10.20 < temp.newsTitle
        10.20.wrap = <h1 class="stageheader">|</h1>
    }
[global]


#/*****************INHALTE*/
temp.contentStructure = CASE
temp.contentStructure {
    # Durch den Key können wir festlegen, auf welches Feld er prüft, in diesem Fall das Feld
    # "backend_layout" im Seiten-Datensatz.
    key.field = backend_layout
    # Falls das Feld leer ist, schaut er rekursiv bis zur Root Page, ob irgendwo das Feld gesetzt ist.
    key.ifEmpty.data = levelfield:-2, backend_layout_next_level, slide

    # STARTSEITE (ID 1)
    pagets__1 = COA
    pagets__1{

        10 < styles.content.get
        10.select.where = colPos = 1
        10.stdWrap.wrap = <div class="stagewrapper stage_start swiper-container"><div class="swiper-wrapper">|</div></div>

        20 = COA
        20 {
            wrap = <main class="maincontents">|</main>
            10 < styles.content.get
            10.select.where = colPos = 2
            10.stdWrap.wrap = <section class="outer"><div class="inner innerstart"><div class="startbox col4 cepurple">|</div>

            20 < styles.content.get
            20.select.where = colPos = 3
            20.stdWrap.wrap = <div class="startbox col8 last cegray">|</div></div></section>

            30 < styles.content.get
            30.select.where = colPos = 4
            30.stdWrap.wrap = <section class="outer"><div class="inner innerstart centered twitter_wrapper"><div class="startbox col10 last">|</div></div></section>

            40 < styles.content.get
            40.select.where = colPos = 5
            40.stdWrap.wrap = <section class="outer"><div class="inner innerstart centered"><div class="startbox col6 ceblue">|</div>

            50 < styles.content.get
            50.select.where = colPos = 6
            50.stdWrap.wrap = <div class="startbox col6 last cepurple">|</div></div></section>
        }
    }
    # CONTENTSEITE (ID 2)
    pagets__2 = COA
    pagets__2 {
       // if.isTrue.numRows < styles.content.get
        10 < styles.content.get
        10.select.where = colPos = 1
        10.stdWrap.wrap = <div class="stagewrapper stage_content"><div class="stage" style="background-image:url(|)">

        15 < lib.contentStage

        18 = TEXT
        18.value = </div></div>

        20 < styles.content.get
        20.select.where = colPos = 2
        20.stdWrap.wrap = <main class="maincontents">|</main>
    }

    # OVERVIEW (ID 3)
    pagets__3 = COA
    pagets__3{
        10 < styles.content.get
        10.select.where = colPos = 1
        10.stdWrap.wrap = <div class="stagewrapper stage_overview">|</div>

        20 < styles.content.get
        20.select.where = colPos = 2
        20.stdWrap.wrap = <main class="maincontents">|</main>
    }


    # STARTSEITE Karriere (ID 4)
    pagets__4 = COA
    pagets__4{

        10 < styles.content.get
        10.select.where = colPos = 1
        10.stdWrap.wrap = <div class="stagewrapper stage_start stage_career swiper-container"><div class="swiper-wrapper">|</div></div>
    }

    # VARIABLE CONTENTSEITE (ID 5)
    pagets__5 = COA
    pagets__5{
        10 < styles.content.get
        10.select.where = colPos = 1
        10.stdWrap.wrap = <div class="stagewrapper stage_content">|</div>

        20 < styles.content.get
        20.select.where = colPos = 2
        20.stdWrap.wrap = <main class="maincontents">|</main>
    }


}


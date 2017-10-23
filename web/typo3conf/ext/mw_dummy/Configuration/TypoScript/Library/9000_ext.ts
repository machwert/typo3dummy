//NEWS
plugin.tx_news.view.templateRootPaths.0 = EXT:mw_dummy/Resources/Private/Extensions/news/Resources/Private/Templates
plugin.tx_news.view.templateRootPaths.1 < plugin.tx_news.view.templateRootPaths.0

plugin.tx_news.view.partialRootPaths.0 = EXT:mw_dummy/Resources/Private/Extensions/news/Resources/Private/Partials
plugin.tx_news.view.partialRootPaths.1 < plugin.tx_news.view.partialRootPaths.0

plugin.tx_news.view.layoutRootPaths.0 = EXT:mw_dummy/Resources/Private/Extensions/news/Resources/Private/Layouts
plugin.tx_news.view.layoutRootPaths.0 < plugin.tx_news.view.layoutRootPaths.0





lib.twitter = USER_INT
lib.twitter {
    includeLibs = EXT:mw_dummy/Resources/Public/Userfuncs/tweedintypo3.php
    userFunc = getTweetsInHtml
    stdWrap.wrap = <div class="twitterfeed swiper-container">|</div>
}
//lib.twitter >


plugin.tx_news {
    settings {
        displayDummyIfNoMedia = 0
        detail {
            showSocialShareButtons = 0
        }
        list.paginate.insertAbove = 0
    }
}
plugin.tx_news.settings.list.paginate.insertAbove = 0


plugin.tx_cookieconsent2 {
    _LOCAL_LANG.de {
        message = Cookies erleichtern die Bereitstellung unserer Dienste. Mit der Nutzung unserer Dienste erklären Sie sich damit einverstanden, dass wir Cookies verwenden.
    }
}


config {
     headerComment (

     )
    pageTitleFirst = 1
    # real url configuration
    absRefPrefix = /
    simulateStaticDocuments = 0
    tx_realurl_enable = 1
    prefixLocalAnchors = all
    //prefixLocalAnchors = 1
    disablePrefixComment = 1
    # put js and stylesheet into external files automatically
    removeDefaultJS = external
    inlineStyle2TempFile = 1
   

    # enable indexing of pages for indexed search
    index_enable = 1
    index_externals = 1

    # configuration of http-headers to avoid error message in IE when using back-button with form fields like search
    sendCacheHeaders = 0
    sendCacheHeaders_onlyWhenLoginDeniedInBranch = 0
    #enableContentLengthHeader = 1

    # default language definitions
    language = de
    locale_all = de_DE
    htmlTag_langKey = de
    linkVars = L
    uniqueLinkVars = 1
    sys_language_uid = 0

    # doctypescwitch: see below, switch only for ie (ie needs switch to make correct display, otherwise no switch to get documents validated)
    #doctype = xhtml_trans
    #doctype = html_5
    doctype = <!DOCTYPE html>
    xhtml_cleaning = all

    # clean cache == good for indexed search
    cache_clearAtMidnight = 1
    no_cache = 0

    admPanel = 1

    typolinkCheckRootline = 1
    typolinkEnableLinksAcrossDomains = 1



    //pageRendererTemplateFile = {$resDir}/Private/Templates/PageRenderer.html

    //compressCss = 1
    //concatenateCss = 1

    //compressJs = 1
    //concatenateJs = 1
}

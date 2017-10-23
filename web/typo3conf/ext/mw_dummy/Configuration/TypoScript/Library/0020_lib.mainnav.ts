lib.mainnav = COA
lib.mainnav.10 = HMENU
lib.mainnav.10 {
    1 = TMENU
    1 {
        noBlur = 1
        expAll = 0
        NO {
            before.wrap = <li>|
            after.wrap = |</li>

            doNotLinkIt = 1
            stdWrap.cObject = COA
            stdWrap.cObject {
                stdWrap.typolink.parameter.field = uid
                10 = FILES
                10 {
                    references {
                        table = pages
                        fieldName = media
                    }
                    renderObj = IMAGE
                    renderObj {
                        file {
                            width = 30c
                            height = 30c
                            import.data = file:current:publicUrl
                        }
                        altText.field = title
                    }
                    stdWrap.ifEmpty.cObject = IMAGE
                    stdWrap.ifEmpty.cObject {
                        file = EXT:mw_dummy/Resources/Public/Icons/icon_default.svg
                        file.height = 30c
                        file.width  = 30c
                    }
                    stdWrap.wrap = <span class="menu-icon">|</span>
                }

                20 = TEXT
                20.field = title
                20.wrap = <span class="menu-text">|</span>
            }
        }
        ACT = 1
        ACT {
            wrapItemAndSub = <li>|</li>
            wrapItemAndSub.insertData = 1
            ATagTitle.field = abstract // description // title
            ATagParams = class="hier"
            stdWrap.htmlSpecialChars = 1
        }
        CUR = 1
        CUR {
            wrapItemAndSub =  <li>|</li>
            wrapItemAndSub.insertData = 1
            ATagTitle.field = abstract // description // title
            ATagParams = class="hier"
            stdWrap.htmlSpecialChars = 1
        }


    }
}

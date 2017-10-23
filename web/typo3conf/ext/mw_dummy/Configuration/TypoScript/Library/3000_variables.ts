page.10 {
    variables {
        mainContent < temp.contentStructure
        # mainContent < styles.content.get
        # mainContent {
        #     select.where = colPos = 0
        #     stdWrap.wrap = <div class="content content_start"><div class="inner">|</div></div>
        # }
        stage < styles.content.get
        stage {
            select.where = colPos = 1
            stdWrap.wrap = <div class="stage">|</div>
        }
    }
}

TCEFORM.tt_content.CType {
    removeItems := addToList(header, text, textmedia, image, bullets, table, uploads, multimedia, media,mailform, search, login, menu, shortcut, html, script, splash, div, form, menu_abstract,menu_categorized_content,menu_categorized_pages,menu_pages,menu_subpages,menu_recently_updated,menu_related_pages,menu_section,menu_section_pages,menu_sitemap,menu_sitemap_pages,form_formframework)
}

TCEFORM.tt_content {
    subheader.disabled = 1
    sectionIndex.disabled = 1
    linkToTop.disabled = 1
    starttime.disabled = 1
    endtime.disabled = 1
    categories.disabled = 1
    fe_group.disabled = 1
}

mod.wizards {
    newContentElement.wizardItems {
        plugins {
            elements {
                plugins_mw_dummy_slideshow {
                    iconIdentifier = icon_mw_dummy_slideshow
                    title = LLL:EXT:mw_dummy/Resources/Private/Language/locallang.xml:mwdummy_title
                    description = LLL:EXT:mw_dummy/Resources/Private/Language/locallang.xml:mwdummy_description
                    tt_content_defValues {
                        CType = mwdummy_slideshow
                    }
                }
                plugins_mw_dummy_gallery {
                    iconIdentifier = icon_mw_dummy_gallery
                    title = LLL:EXT:mw_dummy/Resources/Private/Language/locallang.xml:mwdummy_title_gallery
                    description = LLL:EXT:mw_dummy/Resources/Private/Language/locallang.xml:mwdummy_description_gallery
                    tt_content_defValues {
                        CType = mwdummy_gallery
                    }
                }
            }
        }
    }
}


### BACKEND LAYOUTS (!!!)
mod.web_layout.BackendLayouts {
    1 {
        title = Startseite (iteratec)
        config {
            backend_layout {
                colCount = 4
                rowCount = 4
                rows {
                    1 {
                        columns {
                            1 {
                                name = Bühne
                                colspan = 4
                                colPos = 1
                            }
                        }
                    }
                    2 {
                        columns {
                            1 {
                                name = Startseiten Box oben links (klein)
                                colPos = 2
                            }
                            2 {
                                name = Startseiten Box oben rechts (groß)
                                colspan = 3
                                colPos = 3
                            }
                        }
                    }
                    3 {
                        columns {
                            1 {
                                name = Social Media Bereich (volle Breite)
                                colspan = 4
                                colPos = 4
                            }
                        }
                    }
                    4 {
                        columns {
                            1 {
                                name = Startseiten Box unten links (50%)
                                colspan = 2
                                colPos = 5
                            }
                            2 {
                                name = Startseiten Box unten rechts (50%)
                                colspan = 2
                                colPos = 6
                            }
                        }
                    }
                }
            }

        }
    }
    2 {
        title = Contentseite (iteratec)
        config {
            backend_layout {
                colCount = 1
                rowCount = 2
                rows {
                    1 {
                        columns {
                            1 {
                                name = Bühne (optional, nur Hintergrundbild)
                                colspan = 1
                                colPos = 1
                                allowed = dce_dceuid5
                            }
                        }
                    }
                    2 {
                        columns {
                            1 {
                                name = Inhalte
                                colspan = 1
                                colPos = 2
                            }
                        }
                    }
                }
            }

        }
    }
    3 {
        title = Übersichtsseite (iteratec)
        config {
            backend_layout {
                colCount = 1
                rowCount = 2
                rows {
                    1 {
                        columns {
                            1 {
                                name = Bühne
                                colPos = 1
                                allowed = dce_dceuid3
                            }
                        }
                    }
                    2 {
                        columns {
                            1 {
                                name = Inhalte
                                colPos = 2
                            }

                        }
                    }
                }
            }

        }
    }
    4 {
        title = Startseite (Karriere)
        config {
            backend_layout {
                colCount = 2
                rowCount = 2
                rows {
                    1 {
                        columns {
                            1 {
                                name = Bühne
                                colPos = 1
                                colspan = 2
                            }
                        }
                    }
                    2 {
                        columns {
                            1 {
                                name = Footer (links)
                                colPos = 2
                            }
                            2 {
                                name = Footer (rechts)
                                colPos = 3
                            }
                        }
                    }
                }
            }

        }
    }
    5 {
        title = Contentseite (iteratec) mit anpassbarer Bühne
        config {
            backend_layout {
                colCount = 1
                rowCount = 2
                rows {
                    1 {
                        columns {
                            1 {
                                name = Bühne
                                colPos = 1
                                allowed = dce_dceuid3
                            }
                        }
                    }
                    2 {
                        columns {
                            1 {
                                name = Inhalte
                                colPos = 2
                            }

                        }
                    }
                }
            }

        }
    }


}
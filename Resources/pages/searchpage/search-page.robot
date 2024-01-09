*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SECOND_NEWS_ELEMENT}    css:.gsc-expansionArea > div:nth-of-type(2) .gsc-thumbnail-inside > .gs-title > a      
${FIRST_TITLE_GLOBAL}


*** Keywords ***
Get Second Title News In Search Page
    ${FIRST_TITLE}=  Get Text    ${SECOND_NEWS_ELEMENT}
    Set Global Variable  ${FIRST_TITLE_GLOBAL}  ${FIRST_TITLE}
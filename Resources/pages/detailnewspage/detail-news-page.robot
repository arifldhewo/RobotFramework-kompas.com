*** Settings ***
Library    SeleniumLibrary
Library    String
Resource    ../searchpage/search-page.robot


*** Variables ***
${COMPARE_TITLE_ELEMENT}    xpath:/html/body/div[1]/div[3]/div[4]/div/h1
${COMPARE_TITLE}

*** Keywords ***

Verify Title Between Action And Result
    ${COMPARE_TITLE}=    Get Text    ${COMPARE_TITLE_ELEMENT}
    ${COMPARE_TITLE}=    Replace String    string=${COMPARE_TITLE}    search_for=Terintegrasi    replace_with=...
    Should Be Equal As Strings    first=${FIRST_TITLE_GLOBAL}    second=${COMPARE_TITLE}

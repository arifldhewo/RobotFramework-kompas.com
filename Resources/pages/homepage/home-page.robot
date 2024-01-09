*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${PROFILE-DROPDOWN_ELEMENT}    id:sso__icon__login_top
${LOGIN-LIST_ELEMENT}          id:sso__item
${SEARCH_INPUT}                id:search
${NEWSINDEX2_ELEMENT}          css:.gsc-expansionArea > div:nth-of-type(2) .gsc-thumbnail-inside > .gs-title > a

*** Keywords ***

Click To Login Page
    Click Element    ${PROFILE-DROPDOWN_ELEMENT}
    Click Element    ${LOGIN-LIST_ELEMENT}

Search
    [Arguments]    ${BODY}
    Input Text    ${SEARCH_INPUT}    ${BODY}
    Press Keys    ${SEARCH_INPUT}    ENTER

Click News
    Click Element    ${NEWSINDEX2_ELEMENT}
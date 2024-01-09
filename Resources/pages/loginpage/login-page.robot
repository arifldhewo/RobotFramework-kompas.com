*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${EMAIL_INPUT}        id:email
${PASSWORD_INPUT}     id:password
${LOGIN_BUTTON}       xpath://input[@class='button -primary']
${RESPONSE_ELEMENT}   xpath:/html/body/div/div[1]/h1

*** Keywords ***

Input Credentials Data
    [Arguments]    ${EMAIL}    ${PASSWORD}
    Input Text                         ${EMAIL_INPUT}    ${EMAIL}
    Input Password                     ${PASSWORD_INPUT}    ${PASSWORD}

Click Login Button
    Click Button    ${LOGIN_BUTTON}

Verify Login Is Successfull
    Wait Until Element Is Visible    ${RESPONSE_ELEMENT}
*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/settings/global-variable.robot
Resource    ../Resources/pages/homepage/home-page.robot
Resource    ../Resources/pages/loginpage/login-page.robot
Resource    ../Resources/pages/detailnewspage/detail-news-page.robot
Resource    ../Resources/pages/searchpage/search-page.robot


*** Keywords ***

Initiate Browser
    Open Browser    url=${BASEURL}    browser=chrome
    Maximize Browser Window

*** Test Cases ***

Login User

    Initiate Browser
    Click To Login Page
    Input Credentials Data    EMAIL=${EMAIL}    PASSWORD=${PASSWORD}
    Click Login Button
    Verify Login Is Successfull
    Close Browser

Click News From 2nd Sequence
    Initiate Browser
    Search    BODY=AMD RYZEN
    Get Second Title News In Search Page
    Click News
    Verify Title Between Action And Result
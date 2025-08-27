*** Settings ***
Documentation    Login Page: Positive, Negative, and Usability/Environment Tests
Library          SeleniumLibrary
Library          String
Resource         resources/base.robot
Resource         pages/login_page.robot
Test Setup       Check Driver Existence
Test Teardown    TearingDown

*** Variables ***
${URL}                   https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${CHROME_DRIVER}         /ADD/Your/Driver/Path/chromedriver
${FIREFOX_DRIVER}        /ADD/Your/Driver/Path/geckodriver

${PosUserName}   Admin
${PosPassword}   admin123 

${NegUserName}   omid
${NegPassword}   omid123 

${ChromeBrowser}    chrome
${FireFoxBrowser}    firefox

*** Test Cases ***
Positive Login Tests
    [Tags]    positive
        SettingUP    ${URL}    ${ChromeBrowser}      ${CHROME_DRIVER}
        Performe Loggin    ${PosUserName}    ${PosPassword}
        Verify Login Successful

Negative Login Tests
    [Setup]      SettingUP    ${URL}    ${ChromeBrowser}      ${CHROME_DRIVER}  
    [Tags]       negative
        Performe Loggin   ${NegUserName}    ${NegPassword}
        Verify Login Failed

Usability / Environment Tests
    [Tags]    usability
        SettingUP    ${URL}    ${FireFoxBrowser}      ${FIREFOX_DRIVER}
        Performe Loggin    Admin    admin123
        Verify Login Successful


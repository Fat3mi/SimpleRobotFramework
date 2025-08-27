*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/base.robot

*** Variables ***
${USERNAME_FIELD}    name:username
${PASSWORD_FIELD}    name:password
${LOGIN_BUTTON}      xpath://button
${DASHBOARD_TEXT}    Dashboard
${INVALID_TEXT}      Invalid credentials

*** Keywords ***
Performe Loggin
    [Arguments]    ${username}    ${password}
    Insert Clean Text    ${USERNAME_FIELD}    ${username}
    Insert Clean Text    ${PASSWORD_FIELD}    ${password}
    Click Element With Screenshot    ${LOGIN_BUTTON}

Verify Login Successful
    Page Should Contain    ${DASHBOARD_TEXT}

Verify Login Failed
    Page Should Contain    ${INVALID_TEXT}

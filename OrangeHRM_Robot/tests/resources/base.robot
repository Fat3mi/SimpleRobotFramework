*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Keywords ***
Check Driver Existence
    File Should Exist    /home/dev/WorkStation/Drivers/chromedriver
    File Should Exist    /home/dev/WorkStation/Drivers/geckodriver

SettingUP
    [Arguments]    ${url}    ${browser}    ${driver_path}
    Open Browser   ${url}   ${browser}   ${driver_path}
    Maximize Browser Window
    Set Selenium Implicit Wait     10seconds
    
Insert Clean Text
    [Arguments]    ${locator}    ${text}
    Clear Element Text    ${locator}
    Input Text            ${locator}    ${text}
    Capture Page Screenshot

Click Element With Screenshot
    [Arguments]    ${locator}
    Click Element    ${locator}
    Capture Page Screenshot

TearingDown
    Log To Console    \nTest Done!\n
    Close Browser

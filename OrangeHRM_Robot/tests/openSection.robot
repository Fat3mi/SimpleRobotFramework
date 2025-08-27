*** Settings ***
Documentation       Login Page: Positive, Negative, and Usability/Environment Tests

Library             String
Library             SeleniumLibrary
Resource            resources/base.robot
Resource            pages/dashboard_page.robot
Resource            pages/login_page.robot

Test Setup          Check Driver Existence
Test Teardown       TearingDown


*** Variables ***
${URL}                  https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${CHROME_DRIVER}        /home/dev/WorkStation/Drivers/chromedriver

${POSUSERNAME}          Admin
${POSPASSWORD}          admin123

${LOGINNAME}            ${EMPTY}
${LOCATORLOGINNAME}     xpath://span[p]

${SEARCHTEXT}           Buzz
${LOCATORSEARCHTEXT}    xpath://input
${TARGETELEMENT}        //div[@class='orangehrm-buzz-post-body-picture']

${PANELMENU}            //i[@class='oxd-icon bi-caret-down-fill oxd-userdropdown-icon']
${LOGOUTTEXT}           //a[text()='Logout']

${CHROMEBROWSER}        chrome


*** Test Cases ***
Open Buzz Section
    [Documentation]    Login to site and Search Buzz In side panel and click on it Then Find Pictures Of Girl
    [Tags]    buzz
    SettingUP    ${URL}    ${CHROMEBROWSER}    ${CHROME_DRIVER}
    Performe Loggin    ${POSUSERNAME}    ${POSPASSWORD}
    Verify Login Successful
    LogginVerfication    ${LOGINNAME}    ${LOCATORLOGINNAME}
    SearchDesireSection    ${SEARCHTEXT}    ${LOCATORSEARCHTEXT}
    ScrollIntoTarget    ${TARGETELEMENT}
    PreformLogOut    ${PANELMENU}    ${LOGOUTTEXT}

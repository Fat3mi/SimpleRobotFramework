*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/base.robot

*** Keywords ***
LogginVerfication
    [Arguments]      ${loginName}    ${locatorLoginName}
    ${loginName}=    Get Text        ${locatorLoginName}      
    Log To Console   \n${loginName}\n 

SearchDesireSection
    [Arguments]    ${searchText}            ${locatorSearchText}   
    Input Text     ${locatorSearchText}     ${searchText}
    Click Element        xpath://span[text()='${searchText}']
    
ScrollIntoTarget
    [Arguments]                ${targetElement}
    Scroll Element Into View   ${targetElement}
    Element Should Be Visible   ${targetElement}

PreformLogOut
    [Arguments]      ${PanelMenu}    ${LogoutText}  
    Click Element    ${PanelMenu}
    Click Element    ${LogoutText} 

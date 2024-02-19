*** Settings ***
Resource        ../base/base.robot
Variables       login-locators.yaml

*** Keywords ***
Input Username On Login Page
    [Arguments]       ${username}
    Wait Until Element Is Visible    ${username-input}
    Input Text        ${username-input}        ${username}
Input Password On Login page
    [Arguments]        ${password}
    Wait Until Element Is Visible    ${password-input}
    Input Password    ${password-input}        ${password}
Click Sign In Button On Login page
    
    Click Element    ${log-in-button}

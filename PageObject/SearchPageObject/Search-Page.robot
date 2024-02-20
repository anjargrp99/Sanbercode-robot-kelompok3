*** Settings ***
Resource        ../base/base.robot
Variables       search-locator.yaml

*** Variables ***
${Correct_number}            //android.widget.TextView[@text="DA 935"]

*** Keywords ***
Click Search Button On Dashboard
    Click Element            locator=${dashboardSearch_btn}

Input Valid Flight Number 
    Wait Until Element Is Visible    locator=${input_search}
    Input Text                       locator=${input_search}    text=DA935

Input Invalid Flight Number 
    Wait Until Element Is Visible    locator=${input_search}
    Input Text                       locator=${input_search}    text=DAC935

Click Search Button On Page
    Click Element            locator=${search_btn}

Verify Flight Number is Correct
    Wait Until Element Is Visible    ${Correct_number}

Verify Flight Number Invalid
    Wait Until Page Contains    text=Please enter valid Flight Number
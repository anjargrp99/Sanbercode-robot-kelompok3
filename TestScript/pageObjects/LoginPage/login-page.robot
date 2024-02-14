*** Settings ***
Resource            ../base/base.robot
Resource            ../HomePage/home-page.robot
Variables           login-locator.yaml

*** Variables ***
${Success_Login}    //android.widget.ImageView[@resource-id="com.example.myapplication:id/imageView"]

*** Keywords ***
Input Username
    Wait Until Element Is Visible            locator=${username_input}
    Input Text                               locator=${username_input}    text=support@ngendigital.com

Input Password User
    Input Text                               locator=${password_input}    text=abc123
Click Sign In button On Login Page
    Click Element                            locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]

Verify User Is success to Logged In
    Wait Until Element Is Visible                 ${Success_Login}


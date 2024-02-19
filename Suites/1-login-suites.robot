*** Settings ***
Resource        ../PageObject/base/base.robot
Resource        ../PageObject/HomePageObjects/home-page.robot
Resource        ../PageObject/LoginPageObjects/login-page.robot


*** Test Cases ***
  

login Invalid Credential
    Open Flight Application
    Click Sign In Button On Home Screen
    Input Username On Login Page              ${invalid-username}
    Input Password On Login page              ${invalid-password}
    Click Sign In Button On Login page

Login Valid Credential
    Open Flight Application
    Click Sign In Button On Home Screen
    Input Username On Login Page       ${valid-username}
    Input Password On Login page     ${valid-password}
    Click Sign In Button On Login page 
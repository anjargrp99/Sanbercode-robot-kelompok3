*** Settings ***
Resource                ../pageObjects/HomePage/home-page.robot
Resource                ../pageObjects/LoginPage/login-page.robot

*** Test Cases ***
Login with Valid Data
    base.Open Flight Application    
    Click Sign In Button On Home Page
    Input Username
    login-page.Input Password User
    Click Sign In button On Login Page
    login-page.Verify User Is success to Logged In
    Close Flight Application
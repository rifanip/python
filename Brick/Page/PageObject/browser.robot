*** Settings ***
Library           SeleniumLibrary

*** Keywords ***
Start
    Open Browser    https://qademo.onebrick.io/    chrome
    Set Selenium speed    0.3
    Reload Page
    Maximize Browser Window

Finish
    Close Browser
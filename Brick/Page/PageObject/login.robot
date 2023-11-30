*** Settings ***
Library  SeleniumLibrary
Variables  ../../Page/PageElement/register.py

*** Keywords ***
Input emailorusername
    [Arguments]     ${emailorusername}
    Input Text  ${username}    ${emailorusername}

Input password
    [Arguments]     ${password}
    Input Text  ${paswd}    ${password}

Click Login
    click button    ${btnlogin}
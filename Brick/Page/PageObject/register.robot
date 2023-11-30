*** Settings ***
Library  SeleniumLibrary
Variables  ../../Page/PageElement/register.py


*** Keywords ***
Input firstname
    [Arguments]     ${firstname}
    Input Text  ${fname}    ${firstname}

Input lastname
    [Arguments]     ${lastname}
    Input Text  ${lname}    ${lastname}


Input email
    [Arguments]     ${email}
    Input Text  ${mail}    ${email}


Input phonenumber
    [Arguments]     ${phonenumber}
    Input Text  ${phnumber}    ${phonenumber}


Input address
    [Arguments]     ${address}
    Input Text  ${adres}    ${address}


Input password
    [Arguments]     ${password}
    Input Text  ${paswd}    ${password}

Input confirmpassword
    [Arguments]     ${confirmpassword}
    Input Text  ${confpaswd}    ${confirmpassword}

Click Register
    click button    ${btnregister}




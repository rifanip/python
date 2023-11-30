*** Settings ***
Library  SeleniumLibrary

Resource  ../Page/PageObject/browserLogin.robot
Resource  ../Page/PageObject/login.robot


Test Setup  browserLogin.Start
Test Teardown   browserLogin.Finish


*** Variables ***
${browser}          chrome
${url}              https://qademo.onebrick.io/login
${emailorusername}  test@gmail.com
${password}         123465
${timer}            10s
${error}           //div[@class='swal2-html-container']




*** Test Cases ***
Negatif fill out this field password
    Input emailorusername           ${emailorusername}
    Click Login
    sleep                           ${timer}



Negatif fill out this field username
    Input password                  ${password}
    Click Login
    sleep                           ${timer}

Negatif wrong email or password
    Input emailorusername         ${emailorusername}
    Input password                ${password}
    Click Login
    sleep                         ${timer}
    Element Text Should Be        ${error}  Wrong email or password

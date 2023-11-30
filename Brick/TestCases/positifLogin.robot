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
${password}         123456
${timer}            10s
${verify}           //h2[@class='swal2-title']



*** Test Cases ***
Positif Login
    Input emailorusername         ${emailorusername}
    Input password          ${password}
    Click Login
    sleep                   ${timer}
    Element Text Should Be   ${verify}  Success

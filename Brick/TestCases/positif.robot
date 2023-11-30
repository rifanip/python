*** Settings ***
Library  SeleniumLibrary

Resource  ../Page/PageObject/browser.robot
Resource  ../Page/PageObject/register.robot


Test Setup  browser.Start
Test Teardown   browser.Finish


*** Variables ***
${browser}          chrome
${url}              https://qademo.onebrick.io/
${firstname}        umaha
${lastname}         riyahin
${email}            duriyah@gmail.com
${phonenumber}      5712897100
${addres}           Jl.raya besar no 200
${password}         123456A
${confirmpassword}  123456A
${timer}            10s
${verify}           //h2[@class='swal2-title']



*** Test Cases ***
Positif
    Input firstname         ${firstname}
    Input lastname          ${lastname}
    Input email             ${email}
    Input phonenumber       ${phonenumber}
    Input address           ${addres}
    Input password          ${password}
    Input confirmpassword   ${confirmpassword}
    Click Register
    sleep                   ${timer}
    Element Text Should Be   ${verify}  Success

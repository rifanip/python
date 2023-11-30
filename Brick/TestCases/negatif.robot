*** Settings ***
Library  SeleniumLibrary

Resource  ../Page/PageObject/browser.robot
Resource  ../Page/PageObject/register.robot
Variables  ../Page/PageElement/register.py

Test Setup  browser.Start
Test Teardown   browser.Finish


*** Variables ***
${browser}          chrome
${url}              https://qademo.onebrick.io/
${timer}            5s
${firstname}        umah
${lastname}         riyah
${email}            riyah@gmail.com
${phonenumber}      5712897100
${addres}           Jl.besar no 4
${password}         123
${password6}        123456
${confirmpassword}  123456Ab



*** Test Cases ***
Negatif All Mandatory
    Click Register
    sleep                   ${timer}
    Element Text Should Be  ${erorfname}    Please enter a firstname
    Element Text Should Be  ${erorlname}    Please enter a lastname
    Element Text Should Be  ${erormail}    Please provide an email
    Element Text Should Be  ${erorpaswd}    Please enter a password
    Element Text Should Be  ${erorconfpaswd}    Please enter a password

#Negatif Phonenumber(BUGS)
#    Input firstname         ${firstname}
#    Input lastname          ${lastname}
#    Input email             ${email}
##    Input phonenumber       ${phonenumber}
##    Input address           ${addres}
##    Input password          ${password}
##    Input confirmpassword   ${confirmpassword}
#    Click Register
#    sleep                   ${timer}

Negatif password < 6 character
    Input firstname         ${firstname}
    Input lastname          ${lastname}
    Input email             ${email}
    Input phonenumber       ${phonenumber}
    Input address           ${addres}
    Input password          ${password}
    Click Register
    Element Text Should Be  ${erorpaswd}    Please enter at least 6 characters.

Negatif confirm passwd not match
    Input firstname         ${firstname}
    Input lastname          ${lastname}
    Input email             ${email}
    Input phonenumber       ${phonenumber}
    Input address           ${addres}
    Input password          ${password6}
    Input confirmpassword   ${confirmpassword}
    Click Register
    Element Text Should Be  ${erorconfpaswd}    Password need to match

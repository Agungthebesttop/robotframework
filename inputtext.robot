*** Settings ***
Library                               SeleniumLibrary
Test Setup                            Open Browser    ${urladdress}    ${browsertype}
Test Teardown                         Close Browser

*** Variables ***
${urladdress}                         http://uitestingplayground.com/textinput
${browsertype}                        Chrome
${name}                               Jenar K

*** Test Cases ***
Iam filled TextBox using Jenar K
    Maximize Browser Window
    Input Text                         //input[@id="newButtonName"]     ${name} 
    Click Element                      //button[@id="updatingButton"]
    Element Should Contain             //button[@id="updatingButton"]    ${name}
    Sleep                               3

    # Assert = Assertion = validator sama yaitu cara untuk memvalidasi bahwa step yang kita lakukan sudah benar

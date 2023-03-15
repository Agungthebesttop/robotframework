*** Settings ***
Library    SeleniumLibrary
Test Setup                            Open Browser    ${urladdress}    ${browsertype}
Test Teardown

*** Variables ***
${urladdress}         https://demoqa.com/radio-button
${browsertype}        Chrome

*** Test Cases ***
I clicked Impressive in Radio button
    Click Element                    //label[@for="yesRadio"]
    # Click Element                  //input[@id="impressiveRadio"]
    Element Should Be Visible        //p[@class="mt-3"]
    Element Text Should Be           //span[@class="text-success"]    Yes
    Sleep                            3
    

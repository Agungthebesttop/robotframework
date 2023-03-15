*** Settings ***
Library                               SeleniumLibrary
Test Setup                            Open Browser    ${urladdress}    ${browsertype}
Test Teardown                         Close Browser

*** Variables ***
${urladdress}                         https://demoqa.com/checkbox
${browsertype}                        Chrome

*** Test Cases ***
I want to check in notes     
    Maximize Browser Window
    # Click Expand All
    Click Element                    //button[@title="Expand all"]
    # Click Checkbox Notes
    Click Element                    (//span[@class="rct-checkbox"]) [3]
    # Validasi Data
    Element Should Be Visible        //div[@id="result"]
    Element Should Contain           //div[@id="result"]                 You have selected :
    Element Should Contain           //span[@class="text-success"]       notes
    Element Text Should Be            //span[@class="text-success"]       notes
    Sleep                            3

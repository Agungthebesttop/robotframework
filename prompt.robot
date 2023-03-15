*** Settings ***
Library                               SeleniumLibrary
Test Setup                            Open Browser    ${urladdress}    ${browsertype}
Test Teardown                         Close Browser

*** Variables ***
${urladdress}                         https://demoqa.com/alerts
${browsertype}                        Chrome

*** Test Cases ***
I need confirm Prompt Box is appear WAIT EXPLICIT
    Maximize Browser Window
    Wait Until Element Is Visible    //button[@id="alertButton"]
    Click Element            //button[@id="alertButton"]
    # Sleep                 3
    Alert Should Be Present    You clicked a button
    Handle Alert            action=ACCEPT

I need confirm Prompt Box is appear WAIT IMPLICIT
    Maximize Browser Window
    Sleep            2
    # Wait Until Element Is Visible    //button[@id="alertButton"]
    Click Element            //button[@id="alertButton"]
    # Sleep                 3
    
    Alert Should Be Present    You clicked a button
     Handle Alert            action=ACCEPT



I clicked the ok button in prompt box
     Maximize Browser Window
    Wait Until Element Is Visible    //button[@id="alertButton"]
    Click Element            //button[@id="alertButton"]
    Handle Alert        action=ACCEPT
    Sleep            3
    
                      

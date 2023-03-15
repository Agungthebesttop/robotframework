*** Settings ***
Library        SeleniumLibrary

*** Test Cases ***
Iam access Google page in Chrome    
    Open Browser                     url=https://www.google.com/        browser=gc
    Maximize Browser Window
    Sleep                            3s
    Close Browser
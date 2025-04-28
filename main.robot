*** Settings ***
Library     RPA.Browser.Selenium
Library    Screenshot
# Resource    ../commonlibraries/Templatekeywords.robot

Library             Collections

*** Variables ***
${config_excel_file}    ../data/config.xlsx
@{config_excel_sheets}    Settings    Constants    Assets

*** Tasks ***
Initilize
    # Read Config File
    # Templatekeywords.Check and Create Log file    test
    Get Transaction
    Open Edge Browser



*** Keywords ***
Open Edge Browser
    [Arguments]
        ${Handle_WebOM}=    Open Available Browser
    ...    https://www.1und1.net/
    ...    browser_selection=edge
    ...    maximized=${True}
    ...    headless=${True}
    Read Config File
    Capture Page Screenshot    filename=test.png

    Close Browser

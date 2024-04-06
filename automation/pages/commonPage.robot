*** Settings ***
Documentation    Page uri: N/A is commonPage
...
...
...

Library           SeleniumLibrary
Library           ../resources/chrome_options.py

Resource          ../enviroment/enviroment.robot

*** Variables ***

*** Keywords ***

# Open browser with url
#     [Documentation]    Abre Navegador
#     [Arguments]    ${URL}
#     ${options}=  CHROME OPTIONS 
#     Open Browser    ${URL}    options=${options} 
#     Maximize Browser Window
#     Set Browser Implicit Wait    15s

# Open browser with url and browserType
#     [Documentation]    Abre Navegador
#     [Arguments]    ${URL}    ${BROWSER}
#     ${options}=  CHROME OPTIONS 
#     Open Browser    ${URL}    ${BROWSER}    options=${options} 
#     Maximize Browser Window
#     Set Browser Implicit Wait    15s

Open browser with url
    [Documentation]    Abre Navegador
    [Arguments]    ${URL}
    Open Browser    ${URL} 
    Maximize Browser Window
    Set Browser Implicit Wait    15s

Open browser with url and browserType
    [Documentation]    Abre Navegador
    [Arguments]    ${URL}    ${BROWSER}
    Open Browser    ${URL}    ${BROWSER} 
    Maximize Browser Window
    Set Browser Implicit Wait    15s

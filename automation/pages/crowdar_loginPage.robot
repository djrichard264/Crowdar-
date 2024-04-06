*** Settings ***
Documentation    Page url: 
...
...
...

Library           SeleniumLibrary

Resource          ../enviroment/enviroment.robot

*** Variables ***

#USUARIO
${USER_HOME} =  xpath:.//*[@id="user-name"]
${PASSWORD_HOME} =  xpath:.//*[@id="password"]

#BOTON INICIAR SESION
${LOGIN_BUTTON} =  xpath:.//*[@id="login-button"]

*** Keywords ***

Go to landingpage
    [Documentation]    Landing
    Set Selenium Implicit Wait    15s
    Go to  ${URL}

###########################################################################################
#ACCIONES
Complete username and password
    [Documentation]    Usuario y Clave
    [Arguments]   ${pUsername}   ${pPassword}
    Set Selenium Implicit Wait    15s
    Input Text    ${USER_HOME}    ${pUsername}
    Input Text    ${PASSWORD_HOME}    ${pPassword}

Click button login
    [Documentation]    Boton Ingresar
    Set Selenium Implicit Wait    15s
    Click Button    ${LOGIN_BUTTON}

###########################################################################################
#VERIFICACIONES
Verify Page Loaded
    [Documentation]    Validación
    Set Selenium Implicit Wait    15s
    Title Should Be    Swag Labs
    Page Should Contain    Swag Labs
    Wait Until Element Is Visible    ${LOGIN_BUTTON}    15s

###########################################################################################

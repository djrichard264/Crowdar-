*** Settings ***
Documentation     crowdar_loginKeywords
...               Steps of a group of testCases
...               Validations in each keywords
...               Call to pago object from here

Resource          ../enviroment/enviroment.robot
Resource          ../pages/commonPage.robot
Resource          ../pages/crowdar_loginPage.robot

*** Keywords ***

###########################################################################################

Homepage
    [Documentation]    Funcionalidad: Homepage
    commonPage.Open browser with url and browserType    ${URL}    ${BROWSER}

Validation Go to landingpage
    [Documentation]    Validacion de pagina de destino
    crowdar_loginPage.Verify Page Loaded

###########################################################################################

Given Tenga acceso a la "URL" When Ingresa el "Username" y la "Password"  
    [Documentation]    Usuario existente y acceso a la URL
    [Arguments]    ${usuarioCOM}    ${passCOM}
    commonPage.Open browser with url and browserType  ${URL}    ${BROWSER}
    crowdar_loginPage.Verify Page Loaded
    crowdar_loginPage.Complete username and password  ${usuarioCOM}    ${passCOM}

And Haga clic en el botón de inicio de sesión
    [Documentation]    Presionar el boton login
    crowdar_loginPage.Click button login

###########################################################################################

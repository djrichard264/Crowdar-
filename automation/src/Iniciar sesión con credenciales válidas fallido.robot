*** Settings ***
Documentation     Login and home of pages.
...
...               
...

Resource          ../enviroment/enviroment.robot
Resource          ../keywords/crowdar_loginKeywords.robot
Resource          ../keywords/crowdar_HomeKeywords.robot

Test Teardown    Close All Browsers

*** Test Cases ***

Scenario: Iniciar sesión con credenciales válidas
    [Documentation]    prueba    
    [Tags]    qa
    crowdar_loginKeywords.Given Tenga acceso a la "URL" When Ingresa el "Username" y la "Password"    ${VALID USER ADMIN S1}    ${VALID PASS ADMIN S1}
    crowdar_loginKeywords.And Haga clic en el botón de inicio de sesión
    crowdar_HomeKeywords.Then El sistema debería redirigirlo a la página principal I
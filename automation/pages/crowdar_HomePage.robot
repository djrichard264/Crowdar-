*** Settings ***
Documentation    Page url: /home
...
...
...

Library           SeleniumLibrary
Library           OperatingSystem

Resource          ../enviroment/enviroment.robot

*** Variables ***

${BUTTON_ADD_TO_CART} =  xpath:(.//button[contains(., 'Add to cart')])[1]
${SELECT_THE_CART} =  xpath:.//*[@id="shopping_cart_container"]

*** Keywords ***

Click button "Add to cart" 
    [Documentation]    Boton Add to cart
    Set Selenium Implicit Wait    15s
    Click Button    ${BUTTON_ADD_TO_CART}

Select the cart
    [Documentation]    Selecciona el carrito 
    Set Selenium Implicit Wait    15s
    Click Element    ${SELECT_THE_CART}

Then El sistema debería redirigirlo a la página principal
    [Documentation]    Validación
    Set Selenium Implicit Wait    15s
    Title Should Be    Swag Labs
    Page Should Contain    Swag Labs
    Page Should Contain    Products

Then El sistema le mostrara el producto agregado
    [Documentation]    Validación
    Set Selenium Implicit Wait    15s
    Page Should Contain    QTY 
    Page Should Contain    Description
    Page Should Contain    Sauce Labs Backpack

Then El sistema debería redirigirlo a la página principal I
    [Documentation]    Validación
    Set Selenium Implicit Wait    15s
    Title Should Be    FALLIDO
    Page Should Contain    NO EXISTE
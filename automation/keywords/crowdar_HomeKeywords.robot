*** Settings ***
Documentation     crowdar_HomeAdminKeywords
...               Steps of a group of testCases
...               Validations in each keywords
...               Call to pago object from here

Resource          ../enviroment/enviroment.robot
Resource          ../pages/commonPage.robot
Resource          ../pages/crowdar_HomePage.robot

*** Keywords ***

And presiona el boton "Add to cart"  
    [Documentation]    Presionar el boton "Add to cart"  
    crowdar_HomePage.Click button "Add to cart"  

And selecciona el carrito 
    [Documentation]    Selecciona el carrito  
    crowdar_HomePage.Select the cart
 
Then El sistema debería redirigirlo a la página principal
    [Documentation]    El sistema debería redirigirlo a la página principal
    crowdar_HomePage.Then El sistema debería redirigirlo a la página principal

Then El sistema le mostrara el producto agregado
    [Documentation]    El sistema le mostrara el producto agregado
    crowdar_HomePage.Then El sistema le mostrara el producto agregado

Then El sistema debería redirigirlo a la página principal I
    [Documentation]    El sistema debería redirigirlo a la página principal
    crowdar_HomePage.Then El sistema debería redirigirlo a la página principal I
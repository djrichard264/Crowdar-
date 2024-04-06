*** Settings ***
Documentation      Setup And Initialize System.
...                A set of URLs for differents Enviroments
...                Load Variables
...                Has usefull functions

Library           SeleniumLibrary
Library           String
Library           DateTime
Library           Process

###########################################################################################################
#################################### COMO AGREGAR UN NUEVO ENVIROMEMT #####################################
################## Se tiene que declarar la variable segun el ambiente (keywords) #########################
############# y validar que no exista otra igual ya que esto sobrepisaria alguna ##########################
###########################################################################################################

*** Variables ***

*** Keywords ***

urls testing
    [Documentation]    Funcionalidad: Ninguna
    ...                Tipo: Seteo de Variables
    ...                Caracteristicas: Ambiente testing
    Set Global Variable    ${BROWSER}
    
    #URLs del sitio
    Set Global Variable    ${URL}    https://www.saucedemo.com/

    #User Admin
    Set Global Variable    ${VALID USER ADMIN S1}    standard_user
    Set Global Variable    ${VALID PASS ADMIN S1}    secret_sauce

###########################################################################################################

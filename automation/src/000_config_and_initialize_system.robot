*** Settings ***
Documentation      Config Enviroments
...                Initialize System
...                This Test Must Execute with all Enviroments
...                The Enviroment is: ${ENV}

Resource          ../enviroment/enviroment.robot
Resource          ../keywords/crowdar_loginKeywords.robot
Resource          ../keywords/crowdar_HomeKeywords.robot

Test Teardown    Close All Browsers

######################################## FOR DEVELOPMENT ########################################

# EJECUCION PARA TEST
# BROWSER: Seleccionar el navegador deseado
# robot -v ENV:qa -v BROWSER:chrome -d results --include qa .
# robot -v ENV:qa -v BROWSER:chrome -d results --include development . 

###################################### FOR DEVELOPMENT ##########################################

*** Test Cases ***

Setting Variables of Enviroment
    [Documentation]    Setting Enviroment Variables
    [Tags]    config    development    qa    
    enviroment.urls testing
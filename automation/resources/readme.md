

Automation

Robot Framework

Requerimientos:

    Python # version 3.X o superior
    
Se tiene que configurar el path para poder ejecutar el programa desde cualquier ruta del directorio.


Instalación ROBOT FRAMEWORK
Desde un terminal o línea de comando insertar y ejecutar la siguiente línea: 

pip install robotframework


Instalación Selenium
Al instalar selenium se tiene que tiene que tomar en cuenta que existen 2 versiones de la biblioteca, se debe seleccionar seleniumLibrary: 

pip install robotframework-seleniumlibrary

Otras librerias que se pueden usar
pip install robotframework-seleniumlibrary

Descargar los drivers de Chrome
Ingresar a Google Chrome, a configuración o Settings, y luego a “A cerca de Chrome” o “About Chrome”. Visualizar la versión de Chrome.

Ingresar a chrome,  también ver los de IE, Edge y Firefox desde aqui en caso de necesitarlos.

Nota: se debe configurar el PATH de donde se guarden los drivers para cada navegador del mismo modo que se hizo para Python, se tiene que agregar la ruta donde se guarden los ejecutables.

Ejemplo: “C:\drivers\”, ruta donde se descomprime el archivo descargado “chromedriver.exe”.


Verificacion de instalacion
Creamos un nuevo archivo con extensión “.robot”


*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${GOOGLE}    https://www.google.com.ar/
${BROWSER}   Chrome

*** Test Cases ***

TEST FLASH QA
    Open browser    ${GOOGLE}   ${BROWSER}
    Maximize Browser Window
    Sleep  5s    
    Title Should Be    Google
    Page Should Contain    Buscar con Google
    Close browser
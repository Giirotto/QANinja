***Settings***
Library     SeleniumLibrary

***Variables***
${url}              http://training-wheels-protocol.herokuapp.com/ 

***Keywords***
Inicia sessão
    Open Browser        ${url}          chrome

Finaliza sessão
    Capture Page Screenshot
    Close Browser
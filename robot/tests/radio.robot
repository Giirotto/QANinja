***Settings***
Resource        base.robot

Test Setup          Inicia sessão
Test Teardown       Finaliza sessão

***Test Cases***
Selecionando por ID
    [Tags]      id
    Go To                           ${url}/radios
    Select Radio Button             movies      cap
    Radio Button Should Be Set To   movies      cap
    Sleep                           5

Selecionando por Value
    [Tags]      value
    Go To                           ${url}/radios
    Select Radio Button             movies      guardians
    Radio Button Should Be Set To   movies      guardians
    Sleep                           5
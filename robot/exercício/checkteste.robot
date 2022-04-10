***Settings***
Library     SeleniumLibrary

Test Setup          Inicia sessão
Test Teardown       Finaliza sessão

***Variables***
${url}          http://training-wheels-protocol.herokuapp.com/
${capt}         css:input[value='cap']
${iron}         css:input[value='iron-man']
${thor}         id:thor
${vingad}       css:input[value='the-avengers']
${guard}        css:input[value='guardians']
${form}         name:antman
${panter}       css:input[value='black-panther']


***Test Cases***
Testando Capitão América
    [Tags]      capt
    Go To                               ${url}/checkboxes
    Select Checkbox                     ${capt}
    Checkbox Should Be Selected         ${capt}
    Sleep                               5

Testando Home de Ferro
    [Tags]      ironman
    Go To                               ${url}/checkboxes
    Select Checkbox                     ${iron}
    Checkbox Should Be Selected         ${iron}
    Sleep                               5

Testando Thor
    [Tags]      thor
    Go To                               ${url}/checkboxes
    Select Checkbox                     ${thor}
    Checkbox Should Be Selected         ${thor}
    Sleep                               5

Testando Os Vingadores
    [Tags]      vingad
    Go To                               ${url}/checkboxes
    Select Checkbox                     ${vingad}
    Checkbox Should Be Selected         ${vingad}
    Sleep                               5

Testando Guardiões das Galáxias
    [Tags]      guard
    Go To                               ${url}/checkboxes
    Select Checkbox                     ${guard}
    Checkbox Should Be Selected         ${guard}
    Sleep                               5

Testando Homem-Formiga
    [Tags]      form
    Go To                               ${url}/checkboxes
    Select Checkbox                     ${form}
    Checkbox Should Be Selected         ${form}
    Sleep                               5

Testando Pantera Negra
    [Tags]      panter
    Go To                               ${url}/checkboxes
    Select Checkbox                     ${panter}
    Checkbox Should Be Selected         ${panter}
    Sleep                               5

***Keywords***
Inicia sessão
    Open Browser                        ${url}              chrome

Finaliza sessão
    Capture Page Screenshot
    Close Browser
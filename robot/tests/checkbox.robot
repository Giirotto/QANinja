***Settings***
Resource            base.robot

Test Setup          Inicia sessão
Test Teardown       Finaliza sessão

***Variables***
${check_thor}       id:thor
${check_iron}       css:input[value='iron-man']
${check_panter}     xpath://*[@id='checkboxes']/input[7]


***Test Cases***
Marcando opção com ID
    [Tags]      thor
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_thor}
    Checkbox Should Be Selected     ${check_thor}
    Sleep                           5

Marcando opção com CSS Selector
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_iron}
    Checkbox Should Be Selected     ${check_iron}
    Sleep                           5

Marcando opção com Xpath
    [tags]      ironman
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_panter}
    Checkbox Should Be Selected     ${check_panter}
    Sleep                           5
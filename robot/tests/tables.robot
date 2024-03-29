***Settings***
Resource        base.robot

Test Setup          Inicia sessão
Test Teardown       Finaliza sessão

***Test Cases***
Verificar o valor ao informar o número da linha
    Go To                           ${url}/tables
    Table Row Should Contain        id:actors   1   @robertdowneyjr

Descobre a linha pelo texto chave e valida os demais valores
    Go To               ${url}/tables
    ${target}=          Get WebElement      xpath:.//tr[contains(., '@chadwickboseman')]
    Log                 ${target.text}
    Log To Console      ${target.text}
    Should Contain      ${target.text}      $ 700.000
    Should Contain      ${target.text}      Pantera Negra
***Settings***
Resource        base.robot

Test Setup          Inicia sessão
Test Teardown       Finaliza sessão

***Test Cases***
Login com sucesso
    [Tags]              sucesso
    Go To               ${url}/login
    Login With          stark       jarvis!
    
    Should See Logged User          Tony Stark

Senha inválida
    [Tags]              invalida
    Go To               ${url}/login
    Login With          stark       abc123

    Should Contain Login Alert      Senha é invalida!

Usuário não esxiste
    [Tags]              user
    Go To               ${url}/login
    Login With          Raffael     abc123

    Should Contain Login Alert      O usuário informado não está cadastrado!

***Keywords***
Login With
    [Arguments]         ${user}    ${pass}

    Input Text          css:input[name=username]        ${user}
    Input Text          css:input[name=password]        ${pass}
    Click Element       class:btn-login

Should Contain Login Alert
    [Arguments]         ${alert}

    ${message}=         Get WebElement          id:flash
    Should Contain      ${message.text}         ${alert}

Should See Logged User
    [Arguments]         ${name}

    Page Should Contain     Olá, ${name}. Você acessou a área logada!
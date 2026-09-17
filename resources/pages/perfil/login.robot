*** Settings ***
Resource         ../../../resources/main.robot

*** Keywords ***
Dado que eu naveguei o site até a página de Login
    Clicar em          ${INP_EMAIL}

Quando preencho os campos de login com credenciais válidas
    Preencher campo    ${INP_EMAIL}    ${EMAIL_VALIDO}
    Preencher campo    ${INP_SENHA}    ${SENHA_GERAL}

Quando preencho os campos de login com email inválido
    Preencher campo    ${INP_EMAIL}    ${EMAIL_INVALIDO}
    Preencher campo    ${INP_SENHA}    ${SENHA_GERAL}

Quando preencho os campos de login com senha inválida
    Preencher campo    ${INP_EMAIL}    ${EMAIL_VALIDO}
    Preencher campo    ${INP_SENHA}    ${SENHA_INVALIDA_NUMEROS}

E clico em Entrar
    Clicar em    ${BTN_ENTRAR}

Então devo ver a mensagem Bem-vindo
    Verificar elemento possui mensagem    ${BEM_VINDO}    Bem-vindo ao TutoriaWeb!

Então devo ver a mensagem de erro ao realizar login genérica
    Verificar elemento possui mensagem    ${ERRO_LOGIN}    Credenciais inválidas

*** Variables ***
${BTN_LOGIN}                     id:btn-login
${BTN_ENTRAR}                    id:btn-submitLogin
${BEM_VINDO}                     //h1//span//span//..//..
${ERRO_LOGIN}                    id:lbl-errorMsg
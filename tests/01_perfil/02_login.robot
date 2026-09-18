*** Settings ***
Resource         ../../resources/main.robot
Test Setup       Dado que eu acesso o Webtutoria
Test Teardown    Fecho o navegador

*** Test Cases ***

Cenário: Login com credenciais válidas
    Dado que eu naveguei o site até a página de Login
    Quando preencho os campos de login com credenciais válidas
    E clico em Entrar
    Então devo ver a mensagem Bem-vindo

Cenário: login com email inválido
    Dado que eu naveguei o site até a página de Login
    Quando preencho os campos de login com email inválido
    E clico em Entrar
    Então devo ver a mensagem de erro ao realizar login genérica

Cenário: login com senha inválida
    Dado que eu naveguei o site até a página de Login
    Quando preencho os campos de login com senha inválida
    E clico em Entrar
    Então devo ver a mensagem de erro ao realizar login genérica
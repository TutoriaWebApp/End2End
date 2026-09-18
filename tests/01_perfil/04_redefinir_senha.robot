*** Settings ***
Resource         ../../resources/main.robot
Test Setup       Dado que eu acesso o Webtutoria
Test Teardown    Fecho o navegador

*** Test Cases ***
Cenário: Esqueci minha senha
    Quando eu clico em "Esqueci minha senha"
    E preencho o campo email com email válido
    E clico em "Continuar"
    Então devo visualizar a mensagem de sucesso de restauração de senha

Cenário: Redefinir senha por link válido
    Dado que eu acesse a url enviada no e-mail
    Quando preencho os campos senha e confirmação de senha
    E clico em "Redefinir Senha"
    Então devo visualizar a mensagem de sucesso de redefinição de senha

Cenário: Redefinir senha por link já utilizado
    Dado que eu acesse a url enviada no e-mail
    Quando preencho os campos senha e confirmação de senha
    E clico em "Redefinir Senha"
    Então devo visualizar a mensagem de falha de redefinição de senha

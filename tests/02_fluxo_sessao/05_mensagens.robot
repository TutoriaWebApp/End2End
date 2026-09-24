*** Settings ***
Resource         ../../resources/main.robot
Test Setup       Dado que eu acesso o Webtutoria
Test Teardown    Fecho o navegador

*** Test Cases ***
Cenário: Sem contatos de mensagens
    Dado que eu naveguei o site até a página de Mensagens    ${EMAIL_VALIDO_CHAT_VAZIO}
    Quando visualizo lista de contatos
    Então devo ser informado que não possuo contatos na lista de contatos

Cenário: Enviar mensagem para um contato no chat
    Dado que eu naveguei o site até a página de Mensagens
    Quando seleciono um contato no chat
    E digito e envio uma mensagem
    Então devo ver a mensagem enviada no histórico

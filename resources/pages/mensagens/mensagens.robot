*** Settings ***
Resource         ../../../resources/main.robot

*** Keywords ***
Dado que eu naveguei o site até a página de Mensagens
    [Arguments]                 ${email}= ${EMAIL_VALIDO}
    Dado que eu estou logado    ${email}
	Clicar em    ${NAV_BAR_MENSAGENS}

Quando visualizo lista de contatos
	Focar no elemento    ${ASIDE_HISTORICO_MENSAGEM}

Então devo ser informado que não possuo contatos na lista de contatos
    Verificar elemento possui mensagem    ${DIV_LISTA_CONTATOS}    Nenhuma conversa encontrada.

Quando seleciono um contato no chat
    Clicar em    ${CARD_CONTATO}

E digito e envio uma mensagem
    Preencher campo    ${INP_MENSAGEM}    ${MENSAGEM_TESTE}
    Clicar em          ${BTN_ENVIAR}

Então devo ver a mensagem enviada no histórico
    Sleep    5s
    Verificar elemento possui mensagem    ${BALAO_MENSAGEM}    ${MENSAGEM_TESTE}

*** Variables ***
${NAV_BAR_MENSAGENS}             //a[@href='/mensagens']
${ASIDE_HISTORICO_MENSAGEM}      id:aside-messageHistory
${DIV_LISTA_CONTATOS}            id:div-contactList
${CARD_CONTATO}                  //button[contains(@class, 'btn-contact')][2]
${INP_MENSAGEM}                  id:inp-message
${BTN_ENVIAR}                    id:btn-submitMessage
${BALAO_MENSAGEM}                xpath:(//p[@class='leading-relaxed break-words'])[last()]
# Pegar o ultimo elemento com esta classe

${MENSAGEM_TESTE}                Olá, gostaria de agendar uma tutoria!

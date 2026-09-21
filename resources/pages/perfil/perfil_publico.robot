*** Settings ***
Resource         ../../../resources/main.robot

*** Keywords ***
Dado que eu acessei o link do perfil do tutor
    Dado que eu estou logado
	Ir para página    ${URL}/perfil/${ID_TUTOR_TESTE}

E clico em Ver Perfil de um Tutor
    Clicar em    ${CARD_1}//button

Quando clico em Avaliações (Tutor)
    Clicar em    ${BTN_AVALIACOES_TUTOR}

Então devo ver as avaliações do tutor
    Focar no elemento    ${LBL_AVALIACOES}

Quando clico em Enviar Mensagem
    Clicar em    ${BTN_ENVIAR_MENSAGEM}

E escrevo mensagem
    ${MSG_RANDOM}=     FakerLibrary.Text
    Preencher campo    ${TXT_MENSAGEM}    ${MSG_RANDOM}

E clico em Enviar Primeira Mensagem
    Clicar em    ${BTN_ENVIAR_PRIMEIRA_MSG}

Então devo ver notificação informando sucesso
    Verificar mensagem de notificação    Chat criado com sucesso!

Então devo ver as informações do perfil
    Focar no elemento    ${LBL_NOME_TUTOR}
    Focar no elemento    ${LBL_NOME_TUTOR}
    Focar no elemento    ${LBL_LOCALIZACAO}
    Focar no elemento    ${LBL_NIVEL}

Quando clico em Solicitar Sessão
    Clicar em    ${BTN_SOLICITAR_SESSAO}

E preencho o modal de solicitação de tutoria
	Clicar em          ${BTN_DIA_DISPONIVEL}
	Selecionar item    ${SEL_AREA}             Matemática
	Selecionar item    ${SEL_ESPECIALIDADE}    Cálculo Diferencial
	Clicar em          ${BTN_HORARIO_DISPONIVEL}

E clico em Confirmar Solicitação
	Clicar em          ${BTN_CONFIRMAR_SOLICITACAO}

Então o modal de solicitação deve ser aberto
    Verificar mensagem de notificação    Solicitação enviada com sucesso!

*** Variables ***
${ID_TUTOR_TESTE}               1
${ID_APRENDIZ_TESTE}            31
${LBL_NOME_TUTOR}               id:h1-profileName
${LBL_LOCALIZACAO}              id:p-profileLocation
${LBL_NIVEL}                    id:p-profileLevel
${BTN_SOLICITAR_SESSAO}         id:btn-requestSession
${BTN_DIA_DISPONIVEL}           xpath:(//div[@id='div-calendar']//button[not(@disabled)])[2]
${BTN_HORARIO_DISPONIVEL}       xpath:(//div[@id='div-availableTimes']//button[not(@disabled)])[1]
${BTN_CONFIRMAR_SOLICITACAO}    id:btn-submitSession
${BTN_AVALIACOES_TUTOR}         id:btn-avaliacaoTutor
${LBL_AVALIACOES}               id:div-review
${BTN_ENVIAR_MENSAGEM}          id:btn-sendMessage
${TXT_MENSAGEM}                 id:txt-firstMessage
${BTN_ENVIAR_PRIMEIRA_MSG}      id:btn-submitFirstMessage

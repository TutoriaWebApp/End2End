*** Settings ***
Resource         ../../../resources/main.robot

*** Keywords ***
Dado que eu naveguei o site até a página de Solicitações
    Dado que eu estou logado
	Clicar em    ${NAV_BAR_SOLICITACOES}

Quando eu clico em Sessões Aceitas como Tutor
    Clicar em    ${BTN_SESSOES_ACEITAS_TUTOR}

Quando eu clico em Minhas Solicitações
    Clicar em    ${BTN_MINHAS_SOLICITACOES}

Quando eu clico em Sessões Aceitas como Aprendiz
    Clicar em    ${BTN_SESSOES_ACEITAS_APRENDIZ}

Então devo visualizar cards das Sessões
    Focar no elemento    ${DIV_CARD_SESSOES}

E vejo um balão que indique a quantidade de solicitações pendentes
    Focar no elemento    ${BADGE_SOLICITACAO_PENDENTE}

Quando clico em Solicitações Pendentes
	Clicar em    ${BTN_SOLICITACOES_PENDENTES}

E visualizo os Cards das Solicitações
    Focar no elemento    ${DIV_CARD_SESSOES}
	Rolar até    ${DIV_CARD_SESSOES}

E clico em Aceitar Solicitação
    Clicar em    ${BTN_ACEITAR_SOLICITACAO}

E confirmo modal de Aceitar Solicitação
    Clicar em    ${BTN_CONFIRMAR_ACEITAR_SOLICITACAO}

Então vejo a mensagem de Aceita com Sucesso
    Verificar mensagem de notificação    ${ACEITAR_SOLICITACAO_SUCESSO}

E clico em Recusar Solicitação
    Clicar em    ${BTN_RECUSAR_SOLICITACAO}

E confirmo modal de Recusar Solicitação
    Clicar em    ${BTN_CONFIRMAR_RECUSA_SOLICITACAO}

Então vejo a mensagem de Recusada com Sucesso
    Verificar mensagem de notificação    ${RECUSAR_SOLICITACAO_SUCESSO}

*** Variables ***
${NAV_BAR_SOLICITACOES}                 //a[@href='/solicitacoes']
${BADGE_SOLICITACAO_PENDENTE}           id:span-pendingRequestBadge
${BTN_SESSOES_ACEITAS_TUTOR}            id:btn-acceptedTutor
${BTN_SESSOES_ACEITAS_APRENDIZ}         id:btn-acceptedLearner
${BTN_SOLICITACOES_PENDENTES}           id:btn-pendingRequests
${BTN_MINHAS_SOLICITACOES}              id:btn-myRequests
${DIV_CARD_SESSOES}                     //div[contains(@class, "div-sessionCard")][1]
${BTN_ACEITAR_SOLICITACAO}              //button[contains(@class, "btn-acceptSolicitation")][1]
${BTN_RECUSAR_SOLICITACAO}              //button[contains(@class, "btn-rejectSolicitation")][1]
${BTN_CONFIRMAR_ACEITAR_SOLICITACAO}    id:btn-confirmAcceptSolicitation
${BTN_CONFIRMAR_RECUSA_SOLICITACAO}     id:btn-confirmRejectSolicitation
${ACEITAR_SOLICITACAO_SUCESSO}          Solicitação aceita com sucesso!
${RECUSAR_SOLICITACAO_SUCESSO}          Solicitação recusada com sucesso!

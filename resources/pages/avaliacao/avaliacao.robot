*** Settings ***
Resource         ../../../resources/main.robot

*** Keywords ***
Dado que eu visualizei modal de Avaliação
	Dado que eu estou logado    ${EMAIL_VALIDO_AVALIACAO}

Quando avalio a sessão
	${stars}=    FakerLibrary.Random Int    1    5
	${texto}=    FakerLibrary.Text
	Clicar em    id:btn-${stars}Stars
	Preencher campo    ${TEXTAREA_AVALIACAO}    ${texto}
	Clicar em    ${BTN_SALVAR_AVALIACAO}

Então devo ver a mensagem de Avaliação enviada com sucesso
    Verificar mensagem de notificação    ${AVALIACAO_MENSAGEM_SUCESSO}
	Sleep    2s

*** Variables ***
${TEXTAREA_AVALIACAO}            id:txt-reviewSession
${BTN_SALVAR_AVALIACAO}          id:btn-submitReview
${AVALIACAO_MENSAGEM_SUCESSO}    Avaliação enviada com sucesso!

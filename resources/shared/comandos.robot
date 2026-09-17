*** Settings ***
Resource    ../main.robot

*** Keywords ***
Focar no elemento
	[Arguments]    ${elemento}
	Wait Until Page Contains Element    ${elemento}    ${Tempo de Espera}
	Set Focus To Element    ${elemento}

Clicar em
    [Arguments]    ${elemento}
	Focar no elemento    ${elemento}
	Click Element    ${elemento}
	Sleep    ${Tempo de Evento}

Preencher campo
    [Arguments]    ${elemento}    ${texto}
	Focar no elemento    ${elemento}    
	Input Text    ${elemento}    ${texto}

Selecionar item
	[Arguments]    ${elemento}    ${item}
	Focar no elemento    ${elemento}
	Select From List By Label    ${elemento}    ${item}

Subir arquivo
	[Arguments]    ${elemento}    ${caminho_arquivo}
	Focar no elemento    ${elemento}
	${caminho_normalizado}=    Normalize Path    ${caminho_arquivo}
	Choose File    ${elemento}    ${caminho_normalizado}

Verificar elemento possui mensagem
	[Arguments]    ${elemento}    ${mensagem}
	Wait Until Page Contains Element    ${elemento}    ${Tempo de Espera}
	Element Text Should Be              ${elemento}    ${mensagem}

Verificar mensagem de notificação
    [Arguments]    ${mensagem}
    Wait Until Page Contains Element    ${NOTIFICACAO}    ${Tempo de Espera}
    Element Text Should Be              ${NOTIFICACAO}    ${mensagem}

Ir para página
	[Arguments]    ${url}
	Go To    ${url}

*** Variables ***
${Tempo de Espera}    15s
${Tempo de Evento}    1s
${NOTIFICACAO}        id:snk-notification
*** Settings ***
Resource    ../main.robot

*** Keywords ***
Focar no elemento
	[Arguments]                         ${elemento}
	Wait Until Page Contains Element    ${elemento}    ${Tempo de Espera}
	Set Focus To Element                ${elemento}

Rolar até
    [Arguments]    ${elemento}
    ${elem}=    Get WebElement    ${elemento}
    Execute Javascript            arguments[0].scrollIntoView({block: "center", inline: "center"});    ARGUMENTS    ${elem}
    Sleep                         ${Tempo de Evento}

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
	Focar no elemento         ${elemento}
	Element Should Contain    ${elemento}    ${mensagem}

Verificar mensagem de notificação
    [Arguments]    ${mensagem}
	Focar no elemento         ${NOTIFICACAO}
    Element Text Should Be    ${NOTIFICACAO}    ${mensagem}

Comparar valores maiores
	[Arguments]    ${valor1}    ${valor2}
	${v1}=    Get Text    ${valor1}
	${v2}=    Get Text    ${valor2}
	${v1}=    Remove String    ${v1}    avaliações
	${v2}=    Remove String    ${v2}    avaliações
	Should Be True    ${v1} >= ${v2}

Ir para página
	[Arguments]    ${url}
	Go To    ${url}
	Sleep    ${Tempo de Evento}

*** Variables ***
${Tempo de Espera}    15s
${Tempo de Evento}    3s
${NOTIFICACAO}        id:snk-notification

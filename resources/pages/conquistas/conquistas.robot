*** Settings ***
Resource         ../../../resources/main.robot

*** Keywords ***
Dado que eu naveguei o site até a página de Conquistas
    Dado que eu estou logado
	Clicar em    ${NAV_BAR_CONQUISTAS}

Quando vejo a lista de conquistas
    Focar no elemento    ${LISTA_CONQUISTAS}

E vejo todas as informações da conquista
    Rolar até            ${CARD_CONQUISTA}
    Focar no elemento    ${LBL_TITULO_CONQUISTA}
	Focar no elemento    ${LBL_DESCRICAO}
	Focar no elemento    ${LBL_PONTOS}
	Focar no elemento    ${LBL_EMBLEMA}
	Focar no elemento    ${LBL_SELO}

Então devo conseguir diferenciar conquistas bloqueadas de desbloqueadas
    Focar no elemento    ${LBL_SELO_BLOQUEADA}
    Rolar até            ${LBL_SELO_BLOQUEADA}
	Focar no elemento    ${LBL_SELO_SECRETA}
    Rolar até            ${LBL_SELO_SECRETA}
	Focar no elemento    ${LBL_SELO_BRONZE}
    Rolar até            ${LBL_SELO_BRONZE}
	Focar no elemento    ${LBL_SELO_PRATA}
    Rolar até            ${LBL_SELO_PRATA}
	Focar no elemento    ${LBL_SELO_OURO}
    Rolar até            ${LBL_SELO_OURO}
	Focar no elemento    ${LBL_SELO_DIAMANTE}
    Rolar até            ${LBL_SELO_DIAMANTE}

*** Variables ***
${NAV_BAR_CONQUISTAS}            //a[@href='/conquistas']
${LISTA_CONQUISTAS}              id:div-achievementList
${CARD_CONQUISTA}                //div[contains(@class,"div-achievementCard")][1]

${LBL_TITULO_CONQUISTA}          ${CARD_CONQUISTA}//h3[contains(@class,"h3-title")]
${LBL_DESCRICAO}                 ${CARD_CONQUISTA}//p[contains(@class,"p-description")]
${LBL_PONTOS}                    ${CARD_CONQUISTA}//div[contains(@class,"div-points")]
${LBL_EMBLEMA}                   ${CARD_CONQUISTA}//div[contains(@class,"div-medal")]

# LBL_SELO também é onde indica se a conquista esta bloqueada, se é secreta e qual tier ela é
${LBL_SELO}                      //div[contains(@class,"div-badge")]
${LBL_SELO_BLOQUEADA}            ${LBL_SELO}//span[contains(text(), "Bloqueada")]
${LBL_SELO_SECRETA}              ${LBL_SELO}//span[contains(text(), "Secreta")]
${LBL_SELO_BRONZE}               ${LBL_SELO}//span[contains(text(), "Bronze")]
${LBL_SELO_PRATA}                ${LBL_SELO}//span[contains(text(), "Prata")]
${LBL_SELO_OURO}                 ${LBL_SELO}//span[contains(text(), "Ouro")]
${LBL_SELO_DIAMANTE}             ${LBL_SELO}//span[contains(text(), "Diamante")]

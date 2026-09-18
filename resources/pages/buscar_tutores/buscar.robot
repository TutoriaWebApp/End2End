*** Settings ***
Resource         ../../../resources/main.robot

*** Keywords ***
Dado que eu naveguei o site até a página de Buscar Tutores
    Dado que eu estou logado
	Clicar em    ${NAV_BAR_BUSCAR_TUTORES}

Quando clico em Buscar
    E clico em Buscar

E clico em Buscar
    Clicar em    ${BTN_BUSCAR}

Então devo ver a lista de resultados
    Focar no elemento    ${LISTA_TUTORES}

Quando seleciono um filtro de Área de Conhecimento
    Selecionar item    ${SEL_AREA}    Programação

Então devo ver tutores daquela Área de Conhecimento na lista
    Verificar elemento possui mensagem    ${AREA_BALAO}    Programação

E seleciono um filtro de Especialidade
	Selecionar item    ${SEL_ESPECIALIDADE}    Sistemas Embarcados

Então devo ver a mensagem de tutor não encontrado
    Verificar elemento possui mensagem    ${NUM_TUTORES_ENCONTRADOS}    Não foram encontrados tutores de acordo com os critérios selecionados.

Quando seleciono um filtro de raio de distância
    [Arguments]    ${raio}
    Selecionar item    ${INP_RAIO}    ${raio}

Quando seleciono o método de ordenação Decrescente para Nota Avaliação
    Selecionar item    ${SEL_ORDENAR_NOTA}    Decrescente

Então a nota do primeiro card deve ser maior que a do segundo card
    Comparar valores maiores    ${CARD_1_NOTA}    ${CARD_2_NOTA}

Quando seleciono o método de ordenação Crescente para Nota Avaliação
    Selecionar item    ${SEL_ORDENAR_NOTA}    Crescente

Então a nota do primeiro card deve ser menor que a do segundo card
    Comparar valores maiores    ${CARD_2_NOTA}    ${CARD_1_NOTA}

Quando seleciono o método de ordenação Decrescente para o número de Sessões
    Selecionar item    ${SEL_ORDENAR_SESSOES}    Decrescente

Então o número de sessões do primeiro card deve ser maior que o do segundo card
    Comparar valores maiores    ${CARD_1_AVALIACOES}    ${CARD_2_AVALIACOES}

Quando seleciono o método de ordenação Crescente para o número de Sessões
    Selecionar item    ${SEL_ORDENAR_SESSOES}    Crescente

Então o número de sessões do primeiro card deve ser menor que o do segundo card
    Comparar valores maiores    ${CARD_2_AVALIACOES}    ${CARD_1_AVALIACOES}

*** Variables ***
${NAV_BAR_BUSCAR_TUTORES}     //a[@href="/buscar-tutores"]
${BTN_BUSCAR}                 id:btn-searchTutors
${NUM_TUTORES_ENCONTRADOS}    id:div-howManyTutors
${AREA_BALAO}                 class:area-baloon

${SEL_ORDENAR_NOTA}           id:sel-filterGradeOrder
${SEL_ORDENAR_SESSOES}        id:sel-filterSessionsOrder
${INP_RAIO}                   id:inp-filterRadius

${LISTA_TUTORES}              //div[@id="div-listTutors"]
${CARD_1}                     ${LISTA_TUTORES}//div[1]
${CARD_2}                     ${LISTA_TUTORES}//div[2]
${CARD_1_NOTA}                ${CARD_1}//span[contains(@class, "div-grade")]
${CARD_1_AVALIACOES}          ${CARD_1}//span[contains(@class, "div-totalRatings")]
${CARD_2_NOTA}                ${CARD_2}//span[contains(@class, "div-grade")]
${CARD_2_AVALIACOES}          ${CARD_2}//span[contains(@class, "div-totalRatings")]

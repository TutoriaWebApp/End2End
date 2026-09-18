*** Settings ***
Resource         ../../../resources/main.robot

*** Keywords ***
Dado que eu naveguei o site até a página de Recomendações
    Dado que eu naveguei o site até a página de Buscar Tutores
	Clicar em    ${BTN_RECOMENDAR}

E clico em Pesquisar
    Clicar em    ${BTN_PESQUISAR}

*** Variables ***
${BTN_RECOMENDAR}    id:btn-viewRecommendations
${BTN_PESQUISAR}     id:btn-searchRecommendations

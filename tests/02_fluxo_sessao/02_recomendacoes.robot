*** Settings ***
Resource         ../../resources/main.robot
Test Setup       Dado que eu acesso o Webtutoria
Test Teardown    Fecho o navegador

*** Test Cases ***
Cenário: Visualizar tutores recomendados por Área de Conhecimento
    Dado que eu naveguei o site até a página de Recomendações
	Quando seleciono um filtro de Área de Conhecimento
	E clico em Pesquisar
	Então devo ver a lista de resultados


Cenário: Visualizar tutores recomendados por Especialidade
    Dado que eu naveguei o site até a página de Recomendações
	Quando seleciono um filtro de Área de Conhecimento
	E seleciono um filtro de Especialidade
	E clico em Pesquisar


Cenário: Visualizar tutores recomendados por Distância
    Dado que eu naveguei o site até a página de Recomendações
	Quando seleciono um filtro de Área de Conhecimento
	Quando seleciono um filtro de raio de distância    2000
	E clico em Pesquisar
	Então devo ver a lista de resultados

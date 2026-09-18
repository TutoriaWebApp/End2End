*** Settings ***
Resource         ../../resources/main.robot
Resource         ../../resources/pages/buscar_tutores/buscar.robot
Test Setup       Dado que eu acesso o Webtutoria
Test Teardown    Fecho o navegador

*** Test Cases ***
Cenário: Buscar todos os tutores e verificar resultado
    Dado que eu naveguei o site até a página de Buscar Tutores
    Quando clico em Buscar
    Então devo ver a lista de resultados
Cenário: Filtrar tutores por Área de Conhecimento
    Dado que eu naveguei o site até a página de Buscar Tutores
    Quando seleciono um filtro de Área de Conhecimento
    E clico em Buscar
    Então devo ver tutores daquela Área de Conhecimento na lista

Cenário: Filtrar tutores por Área de Conhecimento e Especialidade
    Dado que eu naveguei o site até a página de Buscar Tutores
    Quando seleciono um filtro de Área de Conhecimento
 	E seleciono um filtro de Especialidade
 	E clico em Buscar
    Então devo ver a mensagem de tutor não encontrado

Cenário: Filtrar tutores por raio de distância 1km
    Dado que eu naveguei o site até a página de Buscar Tutores
    Quando seleciono um filtro de raio de distância    1
 	E clico em Buscar
    Então devo ver a mensagem de tutor não encontrado

Cenário: Filtrar tutores por raio de distância 1km
    Dado que eu naveguei o site até a página de Buscar Tutores
    Quando seleciono um filtro de raio de distância    1
 	E clico em Buscar
    Então devo ver a lista de resultados

Cenário: Ordenar tutores por Nota de Avaliação de forma Decrescente
    Dado que eu naveguei o site até a página de Buscar Tutores
    Quando seleciono o método de ordenação Decrescente para Nota Avaliação
	E clico em Buscar
	Então a nota do primeiro card deve ser maior que a do segundo card

Cenário: Ordenar tutores por Nota de Avaliação de forma Crescente
    Dado que eu naveguei o site até a página de Buscar Tutores
    Quando seleciono o método de ordenação Crescente para Nota Avaliação
	E clico em Buscar
	Então a nota do primeiro card deve ser menor que a do segundo card

Cenário: Ordenar tutores por Número de Sessões de forma Decrescente
    Dado que eu naveguei o site até a página de Buscar Tutores
    Quando seleciono o método de ordenação Decrescente para o número de Sessões
	E clico em Buscar
	Então o número de sessões do primeiro card deve ser maior que o do segundo card

Cenário: Ordenar tutores por Número de Sessões de forma Crescente
    Dado que eu naveguei o site até a página de Buscar Tutores
    Quando seleciono o método de ordenação Crescente para o número de Sessões
	E clico em Buscar
	Então o número de sessões do primeiro card deve ser menor que o do segundo card

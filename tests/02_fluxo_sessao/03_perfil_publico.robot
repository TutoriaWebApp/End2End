*** Settings ***
Resource         ../../resources/main.robot
Test Setup       Dado que eu acesso o Webtutoria
Test Teardown    Fecho o navegador

*** Test Cases ***
Cenário: Vizualizar informações de um tutor via Buscar Tutores
	Dado que eu naveguei o site até a página de Buscar Tutores
	E clico em Buscar
	E clico em Ver Perfil de um Tutor
	Então devo ver as informações do perfil

Cenário: Vizualizar informações de um tutor via Recomendação
    Dado que eu naveguei o site até a página de Recomendações
	Quando seleciono um filtro de Área de Conhecimento
	E clico em Pesquisar
	E clico em Ver Perfil de um Tutor
	Então devo ver as informações do perfil

Cenário: Ver Avaliações do Tutor
    Dado que eu acessei o link do perfil do tutor
    Quando clico em Avaliações (Tutor)
	Então devo ver as avaliações do tutor

Cenário: Enviar mensagem
    Dado que eu acessei o link do perfil do tutor
	Quando clico em Enviar Mensagem
	E escrevo mensagem
    E clico em Enviar Primeira Mensagem
	Então devo ver notificação informando sucesso

Cenário: Visualizar informações de um tutor via link
    Dado que eu acessei o link do perfil do tutor
    Então devo ver as informações do perfil

Cenário: Solicitar tutoria a partir do perfil
    Dado que eu acessei o link do perfil do tutor
    Quando clico em Solicitar Sessão
	  E preencho o modal de solicitação de tutoria
    Então o modal de solicitação deve ser aberto

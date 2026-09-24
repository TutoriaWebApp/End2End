*** Settings ***
Resource         ../../resources/main.robot
Resource         ../../resources/pages/solicitacoes/solicitacoes.robot
Test Setup       Dado que eu acesso o Webtutoria
Test Teardown    Fecho o navegador

*** Test Cases ***
Cenário: Vizualizar solicitações aceitas como Tutor
    Dado que eu naveguei o site até a página de Solicitações
	Quando eu clico em Sessões Aceitas como Tutor
    Então devo visualizar Cards das Sessões

Cenário: Visualizar solicitações aceitas como Aprendiz
    Dado que eu naveguei o site até a página de Solicitações
    Quando eu clico em Sessões Aceitas como Aprendiz
    Então devo visualizar Cards das Sessões

Cenário: Visualizar minhas solicitações
	Dado que eu naveguei o site até a página de Solicitações
    Quando eu clico em Minhas Solicitações
    Então devo visualizar Cards das Sessões

Cenário: Aceitar uma solicitação pendente
    Dado que eu naveguei o site até a página de Solicitações
    E vejo um balão que indique a quantidade de Solicitações Pendentes
    Quando clico em Solicitações Pendentes
    E visualizo os Cards das Solicitações
	E clico em Aceitar Solicitação
	E confirmo modal de Aceitar Solicitação
    Então vejo a mensagem de Aceita com Sucesso

Cenário: Recusar uma solicitação pendente
    Dado que eu naveguei o site até a página de Solicitações
    E vejo um balão que indique a quantidade de Solicitações Pendentes
    Quando clico em Solicitações Pendentes
    E visualizo os Cards das Solicitações
	E clico em Recusar Solicitação
	E confirmo modal de Recusar Solicitação
    Então vejo a mensagem de Recusada com Sucesso

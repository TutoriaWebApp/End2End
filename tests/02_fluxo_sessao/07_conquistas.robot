*** Settings ***
Resource         ../../resources/main.robot
Resource         ../../resources/pages/conquistas/conquistas.robot
Test Setup       Dado que eu acesso o Webtutoria
Test Teardown    Fecho o navegador

*** Test Cases ***
Cenário: Visualizar lista de conquistas e seus detalhes
    Dado que eu naveguei o site até a página de Conquistas
    Quando vejo a lista de conquistas
    E vejo todas as informações da conquista
    Então devo conseguir diferenciar conquistas bloqueadas de desbloqueadas

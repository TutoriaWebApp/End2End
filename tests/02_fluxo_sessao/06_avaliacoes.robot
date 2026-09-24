*** Settings ***
Resource         ../../resources/main.robot
Test Setup       Dado que eu acesso o Webtutoria
Test Teardown    Fecho o navegador

*** Test Cases ***
Cenário: Avaliar sessão como Tutor e como Aprendiz
	Dado que eu visualizei modal de Avaliação
    Quando avalio a sessão    # Avalio o Tutor
    Então devo ver a mensagem de Avaliação enviada com sucesso
	Quando avalio a sessão    # Avalio o Aprendiz
    Então devo ver a mensagem de Avaliação enviada com sucesso

*** Settings ***
Resource         ../../resources/main.robot
Test Setup       Dado que eu acesso o Webtutoria
Test Teardown    Fecho o navegador

*** Test Cases ***

Cenário: Cadastrar um novo perfil Aprendiz
	Dado que eu naveguei o site até a página de Criar nova conta
    Quando preencho os campos de cadastro com dados válidos
    E Clico Avançar
	E Clico Criar Conta
	Então devo ver a mensagem de sucesso de cadastro

Cenário: Cadastrar um novo perfil Tutor
	Dado que eu naveguei o site até a página de Criar nova conta
    Quando preencho os campos de cadastro com dados válidos
    E Clico Avançar
	E Preencho Área, Especialidade e Disponibilidade
	E Clico Criar Conta
	Então devo ver a mensagem de sucesso de cadastro

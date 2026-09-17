*** Settings ***
Resource	../main.robot

*** Variables ***
${URL}	http://localhost:3000/
${BROWSER}	Firefox

*** Keywords ***
Dado que eu acesso o Webtutoria
	Open Browser    url=${URL}    browser=${BROWSER}
	Estou ciente Privacidade e Cookies

Fecho o navegador
	Close Browser

Estou ciente Privacidade e Cookies
	Clicar em    //button[contains(text(), 'Estou Ciente')]

Dado que eu estou logado
    # Dado que eu acesso o Webtutoria
	Preencher campo    ${EMAIL}    ${EMAIL_VALIDO}
	Preencher campo    ${SENHA}    ${SENHA_GERAL}
	Clicar em    ${ENTRAR}

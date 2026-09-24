*** Settings ***
Resource    ../main.robot

*** Variables ***
${EMAIL_VALIDO}                  webapp.tutoria+teste02@gmail.com
${EMAIL_VALIDO_AVALIACAO}        webapp.tutoria+teste01@gmail.com
${EMAIL_VALIDO_CHAT_VAZIO}       webapp.tutoria+teste30@gmail.com
${EMAIL_REDEFINIR_SENHA}         webapp.tutoria+teste03@gmail.com
${EMAIL_INVALIDO}                testexyz@gmail.com
${EMAIL_INVALIDO_SEM_ARROBA}     webapp.tutoriagmail.com
${EMAIL_INVALIDO_SEM_DOMINIO}    webapp.tutoria@
${EMAIL_INVALIDO_SEM_USUARIO}    @gmail.com

${SENHA_GERAL}                  Senha@123456
${SENHA_INVALIDA_CARACTERES}    Senhaa123456
${SENHA_INVALIDA_NUMEROS}       Senha@abcdef
${SENHA_INVALIDA_MAIUSCULAS}    senha@123456
${SENHA_INVALIDA_MINUSCULAS}    SENHA@123456
${SENHA_INVALIDA_QUANTIDADE}    Senha@123

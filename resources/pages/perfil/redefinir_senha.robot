*** Settings ***
Resource    ../../main.robot

*** Keywords ***
Quando eu clico em "Esqueci minha senha"
    Clicar em    ${BTN_ESQUECI_SENHA}

E preencho o campo email com email válido
    Preencher campo    ${INP_EMAIL}    ${EMAIL_REDEFINIR_SENHA}

E clico em "Continuar"
    Clicar em    ${BTN_ENVIAR_LINK}

Então devo visualizar a mensagem de sucesso de restauração de senha
    Verificar mensagem de notificação    ${REDEFINIR_SENHA_MENSAGEM_SUCESSO}

Dado que eu acesse a url enviada no e-mail
    Ir para página    ${URL_REDEFINIR_SENHA}

Quando preencho os campos senha e confirmação de senha
    Preencher campo    ${INP_SENHA}    ${SENHA_GERAL}
    Preencher campo    ${INP_SENHA_CNFRM}    ${SENHA_GERAL}

E clico em "Redefinir Senha"
    Clicar em    ${BTN_REDEFINIR_SENHA}

Então devo visualizar a mensagem de sucesso de redefinição de senha
	Verificar mensagem de notificação    ${SENHA_ALTERADA_MENSAGEM_SUCESSO}

Então devo visualizar a mensagem de falha de redefinição de senha
    Verificar mensagem de notificação    ${SENHA_ALTERADA_MENSAGEM_FALHA}
*** Variables ***
${BTN_ESQUECI_SENHA}     id:lnk-forgotPassword
${BTN_ENVIAR_LINK}       id:btn-submitReset

${URL_REDEFINIR_SENHA}    ${URL}/redefinir-senha/${USER_ID}/${TOKEN}
${USER_ID}                NA
${TOKEN}                  df0w51-9a2b82dd84a966d1cc8262fe95090da1
${BTN_REDEFINIR_SENHA}    id:btn-submitResetPassword

${REDEFINIR_SENHA_MENSAGEM_SUCESSO}    Se este e-mail estiver cadastrado, um link será enviado para a recuperação de sua senha.
${SENHA_ALTERADA_MENSAGEM_SUCESSO}     Senha alterada com sucesso!
${SENHA_ALTERADA_MENSAGEM_FALHA}       Link inválido ou expirado

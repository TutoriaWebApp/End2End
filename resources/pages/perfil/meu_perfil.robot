*** Settings ***
Resource    ../../main.robot

*** Keywords ***

Dado que estou na página de Perfil
    Dado que eu estou logado
    Quando eu clico em Perfil na Navbar

Quando eu clico em Perfil na Navbar
    Clicar em    ${NAV_BAR}

Quando eu clico em Editar Perfil
    Clicar em    ${EDITAR_PERFIL}

E altero minha foto
    Subir arquivo    ${INP_FOTO}    ${CAMINHO_FOTO}

E altero meu nome
    ${nome_fake}       FakerLibrary.Name
    Preencher campo    ${INP_NOME}    ${nome_fake}

E altero meu estado e cidade
    ${estado_fake}      FakerLibrary.State
    ${cidade_fake}      FakerLibrary.City
    Selecionar item    ${SEL_ESTADO}    ${estado_fake}
    Selecionar item    ${SEL_CIDADE}    ${cidade_fake}

E altero sobre mim
    ${sobremim_fake}    FakerLibrary.Text
    Preencher campo    ${TXT_SOBREMIM}    ${sobremim_fake}

E adiciono uma área e especialidade
    Clicar em          ${BTN_AREA_ESPECIALIDADE}
    Selecionar item    ${SEL_AREA}                   Arquitetura
    Selecionar item    ${SEL_ESPECIALIDADE}          Urbanismo Sustentável
    Clicar em          ${BTN_ADD_ESPECIALIDADE}

E adiciono uma disponibilidade
    Clicar em          ${BTN_DISPONIBILIDADE}
    Selecionar item    ${SEL_DIA_SEMANA_DISPONIBEL}    Quarta
    Selecionar item    ${SEL_HORARIO}                  09:00 - 10:00
    Clicar em          ${BTN_ADD_DISPONIBILIDADE}

E clico em Salvar
    Clicar em    ${BTN_SALVAR_EDIT}

E clico em alterar senha
    Clicar em    ${BTN_ALTERAR_SENHA}

E preencho modal de Alterar Senha
    Preencher campo    ${INP_SENHA_ATUAL}    ${SENHA_GERAL}
    Preencher campo    ${INP_SENHA}          ${SENHA_GERAL}
    Preencher campo    ${INP_SENHA_CNFRM}    ${SENHA_GERAL}

E clico em Salvar modal de Alterar Senha
    Clicar em    ${BTN_SALVAR_ALTERAR_SENHA}

Então eu vejo meu perfil
    Verificar elemento possui mensagem    ${EDITAR_PERFIL}    Editar Perfil

Então eu vejo a mensagem de perfil alterado com sucesso
    Verificar mensagem de notificação    ${ALTERAR_PERFIL_MENSAGEM_SUCESSO}

Então eu vejo a mensagem de senha alterada com sucesso
    Verificar mensagem de notificação    ${ALTERAR_SENHA_MENSAGEM_SUCESSO}

*** Variables ***
${NAV_BAR}                            //a[@href="/meu-perfil"]
${EDITAR_PERFIL}                      id:btn-profileEdit
${BTN_SALVAR_EDIT}                    id:btn-saveProfile
${BTN_ALTERAR_SENHA}                  id:btn-openChangePasswordModal
${INP_SENHA_ATUAL}                    id:inp-currentPassword
${BTN_SALVAR_ALTERAR_SENHA}           id:btn-saveChangePasswordModal

${ALTERAR_PERFIL_MENSAGEM_SUCESSO}    Perfil alterado com sucesso!
${ALTERAR_SENHA_MENSAGEM_SUCESSO}     A senha foi alterada com sucesso!

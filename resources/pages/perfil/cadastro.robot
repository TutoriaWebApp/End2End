*** Settings ***
Resource    ../../main.robot

*** Keywords ***
Dado que eu naveguei o site até a página de Criar nova conta
	Clicar em    ${BTN_CADASTRAR}

Quando preencho os campos de cadastro com dados válidos
	${nome_fake}          FakerLibrary.Name
	${email_fake}         FakerLibrary.Email
	${nascimento_fake}    FakerLibrary.DateOfBirth
	${sobremim_fake}      FakerLibrary.Text

	Subir arquivo      ${INP_FOTO}           ${CAMINHO_FOTO}
	Preencher campo    ${INP_NOME}           ${nome_fake}
	Preencher campo    ${INP_EMAIL}          ${email_fake}
	Preencher campo    ${INP_SENHA}          ${SENHA_GERAL}
	Preencher campo    ${INP_SENHA_CNFRM}    ${SENHA_GERAL}
	Selecionar item    ${SEL_ESTADO}         Distrito Federal
	Selecionar item    ${SEL_CIDADE}         Brasília
	Preencher campo    ${INP_ANIVERSARIO}    ${nascimento_fake}
	Preencher campo    ${TXT_SOBREMIM}       ${sobremim_fake}

E Clico Avançar
	Clicar em    ${BTN_AVANÇAR}

E Preencho Área, Especialidade e Disponibilidade
    Clicar em          ${BTN_AREA_ESPECIALIDADE}
	Selecionar item    ${SEL_AREA}    Matemática
	Selecionar item    ${SEL_ESPECIALIDADE}    Cálculo Diferencial
	Clicar em          ${BTN_ADD_ESPECIALIDADE}

	Clicar em          ${BTN_DISPONIBILIDADE}
	${dia_fake}        FakerLibrary.DayOfWeek
	Log To Console     ${dia_fake}
	Selecionar item    ${SEL_DIA_SEMANA_DISPONIBEL}    Sexta
	Selecionar item    ${SEL_HORARIO}                  09:00 - 10:00
	Clicar em          ${BTN_ADD_DISPONIBILIDADE}

E Clico Criar Conta
	Clicar em    ${BTN_CRIAR_CONTA}

Então devo ver a mensagem de sucesso de cadastro
    Verificar mensagem de notificação    ${CADASTRO_MENSAGEM_SUCESSO}

*** Variables ***
${BTN_CADASTRAR}	  id:btn-createNewAccount

${INP_FOTO}           id:foto
${INP_NOME}           id:inp-profileName
${INP_EMAIL}          id:inp-email
${INP_SENHA}          id:inp-password
${INP_SENHA_CNFRM}    id:inp-passwordConfirm
${SEL_ESTADO}         id:sel-uf
${SEL_CIDADE}         id:sel-city
${INP_ANIVERSARIO}    id:inp-birthdate
${TXT_SOBREMIM}       id:txt-about
${BTN_VOLTAR}         id:lnk-backLogin
${BTN_AVANÇAR}        id:btn-nextStep

${BTN_AREA_ESPECIALIDADE}    id:btn-addSpecialty
${SEL_AREA}                        id:sel-area
${SEL_ESPECIALIDADE}               id:sel-specialty
${BTN_ADD_ESPECIALIDADE}           id:btn-submitAddSpecialty

${BTN_DISPONIBILIDADE}       id:btn-addAvailability
${SEL_DIA_SEMANA_DISPONIBEL}       id:sel-dayAvailable
${SEL_HORARIO}                     id:sel-timeSlot
${BTN_ADD_DISPONIBILIDADE}         id:btn-submitAddSchedule

${BTN_CRIAR_CONTA}                 id:btn-submitRegister

${CADASTRO_MENSAGEM_SUCESSO}   Usuário criado com sucesso!

${CAMINHO_FOTO}      ${EXECDIR}${/}resources${/}fixtures${/}avatar.png


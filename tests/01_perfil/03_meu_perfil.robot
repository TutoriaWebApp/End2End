*** Settings ***
Resource         ../../resources/main.robot
Test Setup       Dado que eu acesso o Webtutoria
Test Teardown    Fecho o navegador

*** Test Cases ***

Cenário: Visualizar Meu Perfil
    Dado que eu estou logado
    Quando eu clico em Perfil na Navbar
    Então eu vejo meu perfil

Cenário: Alterar Senha
    Dado que estou na página de Perfil
    Quando eu clico em Editar Perfil
    E clico em Alterar Senha
    E preencho modal de Alterar Senha
    E clico em Salvar modal de Alterar Senha
    Então eu vejo a mensagem de senha alterada com sucesso

Cenário: Editar todo Perfil
    Dado que estou na página de Perfil
    Quando eu clico em Editar Perfil
    E altero minha foto
    E altero meu nome
    E altero sobre mim
    E adiciono uma área e especialidade
    E adiciono uma disponibilidade
    E clico em Salvar
    Então eu vejo a mensagem de perfil alterado com sucesso
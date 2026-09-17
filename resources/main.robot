*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary    locale=pt_BR
Library    OperatingSystem

Resource    shared/setup.robot
Resource	shared/comandos.robot
Resource    shared/credenciais.robot

Resource    pages/perfil/cadastro.robot
Resource    pages/perfil/login.robot
Resource    pages/perfil/meu_perfil.robot
Resource    pages/perfil/redefinir_senha.robot

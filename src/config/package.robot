*** Settings ***
Documentation    Arquivo de mapeamento de arquivos e bibliotecas

Library    SeleniumLibrary
Library     DebugLibrary
Library     FakerLibrary

Resource    hooks.robot
Variables    hooks.yaml

Resource    ../auto/keywords/kws_webautomation.robot
Resource    ../auto/elements/busca.robot
Resource    ../auto/elements/home.robot
Resource    ../auto/elements/singin.robot
Resource    ../auto/elements/create_account.robot
Resource    ../auto/elements/account_done.robot

Variables   ../auto/data/busca.yaml
Variables   ../auto/data/cadastro.yaml
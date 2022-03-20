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

Variables   ../auto/data/busca.yaml
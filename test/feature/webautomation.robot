*** Settings ***
Documentation    Aqui estarão todos os cenários de automação WEB.

Resource    ../../src/config/package.robot

Test Setup  Abrir sessão
Test Teardown   Fechar sessão

*** Test Cases ***
#Cenario: Pesquisando um produto com sucesso
 #   Dado que o cliente esteja na tela home do site
 #   Quando realizar a pesquisa de um produto
  #  Então o produto deve ser apresentado com sucesso

#Cenario: Pesquisando um produto inexistente
#    Dado que o cliente esteja na tela home do site
#    Quando realizar a pesquisa de um produto    produto_inexistente
#    Então é apresentado a mensagem      No results were found for your search "produto_inexistente"

Cenario 03: Listar produtos
    Dado que o cliente esteja na tela home do site
    Quando clicar na sub-categoria      Summer Dresses
    Então será mostrado todos os produtos da sub-categoria    
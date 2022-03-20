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

# Cenario 03: Listar Produtos
#     Dado que o cliente esteja na tela home do site
#     Quando clicar na sub-categoria      Summer Dresses
#     Então será mostrado todos os produtos da sub-categoria    

Cenario 04: Adicionar Cliente
   # Debug
    Dado que o cliente esteja na tela home do site
    Quando o cliente clicar no link de sing in, inserir um email válido e clicar no link     
    Então ele irá preencher os dados obrigatórios, submeter cadastro e será levado para página com a mensagem      Welcome to your account. Here you can manage all of your personal information and orders.

Cenario 05: Fazer compra no site
    Dado que o cliente está logado no site
    Quando o cliente clicar no link t-shirt no menu do site ele será direcionado para págia de produtos   T-SHIRTS
    E o cliente colocar o mouse em cima do produto e clicar em Add to cart verá a menssagem  Product successfully added to your shopping cart
    E clicar em Proceed to checkout será redirecionado para págia de  SHOPPING-CART SUMMARY
    E clicar Proceed to checkout será reredirecionado para págia de   ADDRESSES
    E clicar em Proceed to checkout novamente será reredirecionado para págia de  SHIPPING
    E marcar o checkbox de Terms of service e clicar em Proceed to checkout será redirecionado para págia   PLEASE CHOOSE YOUR PAYMENT METHOD
    E clicar no link de titulo Pay by bank wire será redirecionado para página  ORDER SUMMARY
    E clicar em I confirm my order
    Então será redirecionado para página ORDER CONFIRMATION e verá a mensagem   Your order on My Store is complete.

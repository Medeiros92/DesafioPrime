*** Settings ***
Documentation   Mapeamento dos elementos da tela de busca

*** Variables ***
&{BUSCA}
...     PRODUTO=//*[@class='price product-price']/ancestor::*[@class='product-image-container']
...     IMAGEM_PRODUTO=//img[@src='http://automationpractice.com/img/p/7/7-home_default.jpg']
...     TITULO_CATEGORIA=//*[@class="cat-name"]
...     IMAGEM_SD_1=//img[@src="http://automationpractice.com/img/p/1/2/12-home_default.jpg"]
...     IMAGEM_SD_2=//img[@src="http://automationpractice.com/img/p/1/6/16-home_default.jpg"]
...     IMAGEM_SD_3=//img[@src="http://automationpractice.com/img/p/2/0/20-home_default.jpg"]

${MENSAGEM}=    //p[@class="alert alert-warning"]
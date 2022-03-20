*** Settings ***
Documentation   keywords referente aos testes da home

*** Keywords ***
# Dado que o cliente esteja na tela home do site
#     Title Should Be                     ${HOME.TITULO}
#     Wait Until Element Is Visible       ${HOME.MENU}

#Quando realizar a pesquisa de um produto
#    Input Text      ${HOME.SEARCH}    ${BUSCA_BLOUSE}
 #   Click Element   ${HOME.BTN_PESQUISAR}

#Então o produto deve ser apresentado com sucesso
 #   Wait Until Element Is Visible       ${BUSCA.PRODUTO}
 #   Page Should Contain image           ${BUSCA.IMAGEM_PRODUTO}

#Quando realizar a pesquisa de um produto
 #   [Arguments]     ${produto}

  #  Input Text      ${HOME.SEARCH}      ${produto}
 #   Click Element   ${HOME.BTN_PESQUISAR}

#Então é apresentado a mensagem
 #   [Arguments]     ${mensagem_erro}

 #   Wait Until Element Is Visible       ${MENSAGEM}

 #   ${texto}    Get Text    ${MENSAGEM}

 #   Should Be Equal As Strings      ${texto}    ${mensagem_erro}

# Quando clicar na sub-categoria
    
#     [Arguments]     ${subtitulo}

#     Mouse Over                          ${HOME.CATEGORIA}
#     Wait Until Element Is Visible       ${HOME.SUBCATEGORIA}

#     ${texto}    Get Text    ${HOME.SUBCATEGORIA}

#     Should Be Equal As Strings      ${texto}    ${subtitulo}

#     Click Element                       ${HOME.SUBCATEGORIA} 

# Então será mostrado todos os produtos da sub-categoria
#     Title Should Be                     ${HOME.TITULO_SUB_CATEGORIA}

#     Page Should Contain image           ${BUSCA.IMAGEM_SD_1}
#     Page Should Contain image           ${BUSCA.IMAGEM_SD_2}
#     Page Should Contain image           ${BUSCA.IMAGEM_SD_3}

Dado que o cliente esteja na tela home do site
    Title Should Be                     ${HOME.TITULO}
    Wait Until Element Is Visible       ${HOME.MENU}
    
    Click Element                       ${HOME.TITULO_SINGIN}

Quando o cliente clicar no link de sing in, inserir um email válido e clicar no link

    Wait Until Element Is Visible      ${email}
    Input Text      ${email}      thalesbehringer@gmail.com









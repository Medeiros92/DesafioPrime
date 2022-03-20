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

#Caso de Teste 03
# Dado que o cliente esteja na tela home do site
#     Title Should Be                     ${HOME.TITULO}
#     Wait Until Element Is Visible       ${HOME.MENU}

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

#Caso de Teste 04
Dado que o cliente esteja na tela home do site
    Title Should Be                     ${HOME.TITULO}
    Wait Until Element Is Visible       ${HOME.MENU}
    
    Click Element                       ${HOME.TITULO_SINGIN}

Quando o cliente clicar no link de sing in, inserir um email válido e clicar no link
    ${email}  FakerLibrary.Email

    Wait Until Element Is Visible      ${CREATE_ACCOUNT.EMAIL}
    Input Text                          ${CREATE_ACCOUNT.EMAIL}      ${email}

    Click Element                       ${CREATE_ACCOUNT.SUBMIT_CREATE}


Então ele irá preencher os dados obrigatórios, submeter cadastro e será levado para página com a mensagem

    [Arguments]                         ${mensagem_sucesso}

    Wait Until Element Is Visible       ${ACCOUNT.TITLE}

    ${texto}    Get Text                ${ACCOUNT.TITLE}
    Should Be Equal As Strings          ${texto}    CREATE AN ACCOUNT

    ${first}  FakerLibrary.FirstName
    ${last}  FakerLibrary.LastName
    ${city}  FakerLibrary.City
    ${state}  FakerLibrary.State

    Input Text                          ${ACCOUNT.FIRST_NAME}      ${first}
    Input Text                          ${ACCOUNT.LAST_NAME}      ${last}
    Input Text                          ${ACCOUNT.PASSWORD}      ${PASSWORD}
    Input Text                          ${ACCOUNT.ADRESS}      ${ADDRESS}
    Input Text                          ${ACCOUNT.CITY}      ${city}
    Select From List By Label           ${ACCOUNT.STATE}    ${state}
    Input Text                          ${ACCOUNT.ZIP}      ${ZIP}
    Input Text                          ${ACCOUNT.M_PHONE}      ${M_PHONE}

    Click Element                       ${ACCOUNT.SUBMIT}

    Wait Until Element Is Visible       ${m_sucesso}

    ${t_mensagem}   Get Text            ${m_sucesso}
    Should Be Equal As Strings          ${t_mensagem}    ${mensagem_sucesso}



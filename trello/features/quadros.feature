#language: pt

Funcionalidade: Funções
    Sendo um usuário do site trello
    Após realizar login
    Quero utilizar as funcionalidades do site

Cenário: Criar quadro

    Dado que eu clico no botão: 'Criar novo quadro'
    Quando digito o titulo com:
        |titulo |  meu quadro |
    Então deve ser criado um novo quadro
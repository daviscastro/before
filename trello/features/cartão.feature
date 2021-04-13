#language: pt

Funcionalidade: Clicar no cartão
    Estando logado no site trello
    Quero clicar em um Cartão
    Para que eu possa acessar as listas

@smoke
Cenário: Clicar Cartão
    Dado que acesso a página de Login
    Quando clico no Cartão "Meu Quadro"
    Então devo ser redirecionado para as listas do cartão
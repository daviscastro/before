#language: pt

Funcionalidade: Login de Usuário
    Sendo um usuário do site trello
    Quero realizar o meu login
    Para que eu possa acessar minhas atividades
@happy   
Cenário: Login
    Dado que acesso a página inicial
    Quando submeto o meu login com:
        | email | dcamostra@gmail.com|
        | senha | qwert12345         |

    Então devo ser redirecionado para área logada
    

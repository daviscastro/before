Dado('Login com {string} e {string}') do |email, senha|
    visit "https://trello.com/"
    click_on "Fazer Login"

    user = table.rows_hash
    find("input[placeholder*='Insira o e-mail']").set user[:email]

    click_on "Fazer login com a Atlassian"

    find("input[placeholder*='Digitar senha']").set user [:senha]

    click_on "Entrar"
  end
                                                                      
  Dado('que eu clico no botão: {string}') do |string|
    wait until
    click_on "Criar novo quadro"
  end
  
  Quando('digito o titulo com:') do |table|
    titulo = table.rows_hash
    find("[placeholder*='Adicionar título do quadro']").set titulo [:titulo]
    click_on "Criar Quadro"
  end

  Então('deve ser criado um novo quadro') do
     expect(page).to have_css '[class*="board-main-content"]'
  end
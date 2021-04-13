Dado('Login com {string} e {string}') do |email, senha|
    visit "https://trello.com/"
    click_on "Fazer Login"

    user = table.rows_hash
    find("input[placeholder*='Insira o e-mail']").set user[:email]

    click_on "Fazer login com a Atlassian"

    find("input[placeholder*='Digitar senha']").set user [:senha]

    click_on "Entrar"
  end
  
  Dado('que acesso a página de Login') do 
    expect(page).to have_css'[class*="home-container"]'
  end                                                                        
                                                                                
  Quando('clico no Cartão {string}') do |string|                                
    find("[title*='Meu Quadro']").click
  end                                                                           

  Então('devo ser redirecionado para as listas do cartão') do
    find("[title*='Agenda']").click
  end
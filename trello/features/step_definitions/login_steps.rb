Dado('que acesso a página inicial') do
    visit "https://trello.com/"
    click_on "Fazer Login"
  end
  
  Quando('submeto o meu login com:') do |table|
    user = table.rows_hash
    find("input[placeholder*='Insira o e-mail']").set user[:email]

    click_on "Fazer login com a Atlassian"

    find("input[placeholder*='Digitar senha']").set user [:senha]

    click_on "Entrar"
    sleep 30
  end
  
  Então('devo ser redirecionado para área logada') do |string|
    expect(page).to have_css'[class*="home-container"]'
  end   
                
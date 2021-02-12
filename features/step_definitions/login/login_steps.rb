Dado('que eu acesse a pagina de login') do
    @loginPage.acessarLogin
end

Dado('que estou na página inicial do e-commerce') do
    @loginPage.go
end

Quando('eu inserir meus dados de {string} e {string}') do |login, senha|
    @loginPage.inserirDadosLogin(login, senha)
end

Então('realizo o login') do
    @loginPage.efetuarLogin
end
  
Então('verifico o {string} no cabecalho do site') do |nome|
    expect(@loginPage.nomeCabecalho).to eq(nome)
end

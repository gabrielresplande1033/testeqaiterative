Quando('eu inserir meus dados de {string} e {string}') do |login, senha|
    @loginPage.inserirDadosLogin(login, senha)
end
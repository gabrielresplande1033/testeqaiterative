Então('realizo o login') do
    @loginPage.efetuarLogin
end
  
Então('verifico o {string} no cabecalho do site') do |nome|
    expect(@loginPage.nomeCabecalho).to eq(nome)
end

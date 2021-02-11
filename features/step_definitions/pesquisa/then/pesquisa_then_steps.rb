Então('devo clicar no primeiro produto da lista') do
    @pesquisaPage.detalhesPrimeiroProduto
end

Então('verificar que o titulo desse produto é {string}') do |string|
    expect(@pesquisaPage.tituloProduto).to eq(string)
end
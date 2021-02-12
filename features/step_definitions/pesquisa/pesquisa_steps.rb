Quando('eu inserir o conteúdo {string} na barra de pesquisa e realizar a busca') do |string|
    @pesquisaPage.inserirDadoNaPesquisa(string)
end

Então('devo clicar no primeiro produto da lista') do
    @pesquisaPage.detalhesPrimeiroProduto
end

Então('verificar que o titulo desse produto é {string}') do |string|
    expect(@pesquisaPage.tituloProduto).to eq(string)
end
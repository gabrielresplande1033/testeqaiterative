Quando('eu inserir o conteúdo {string} na barra de pesquisa e realizar a busca') do |string|
    @pesquisaPage.inserirDadoNaPesquisa(string)
end
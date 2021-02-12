Dado('que eu já esteja logado no e-commerce com as credenciais {string} e {string}') do |login, senha|
    step "que estou na página inicial do e-commerce"
    step 'que eu acesse a pagina de login'
    step "eu inserir meus dados de '#{login}' e '#{senha}'"
    step 'realizo o login'
end

Quando('eu pesquisar e escolher um produto') do
    step "eu inserir o conteúdo '#{"Printed Summer Dress"}' na barra de pesquisa e realizar a busca"
    step "devo clicar no primeiro produto da lista"
end

Então('eu adiciono-o ao carrinho') do
    @compraPage.adicionarAoCarrinho
end
  
Então('completo o fluxo de compra até o pagamento') do
    @compraPage.seguirFluxoDeCompra
end
  
Então('escolho a forma de pagamento') do
    @compraPage.escolherPagamento
end
  
Então('finalizo a compra') do
    @compraPage.finalizarCompra
end
  
Então('valido que a compra foi finalizada com sucesso') do
    expect(@compraPage.validarCompraConcluida).to eq('Your order on My Store is complete.')
end
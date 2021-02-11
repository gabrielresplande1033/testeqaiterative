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
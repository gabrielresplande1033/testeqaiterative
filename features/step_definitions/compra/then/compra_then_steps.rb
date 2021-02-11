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
  
Então('valido as informações do produto que comprei na tela de confirmação do pedido') do
    pending # Write code here that turns the phrase above into concrete actions
end
class CompraPage
    include Capybara::DSL

 
   def inserirDadosLogin(login, senha)
    find('input[id=email]').set login
    find('input[id=passwd]').set senha

   end

   def adicionarAoCarrinho
    sleep 2
    find('#add_to_cart > button').click
    
   end

   def seguirFluxoDeCompra
    sleep 2
    find('#layer_cart > div.clearfix > div.layer_cart_cart.col-xs-12.col-md-6 > div.button-container > a').click
    sleep 1
    find('#center_column > p.cart_navigation.clearfix > a.button.btn.btn-default.standard-checkout.button-medium').click
    sleep 1
    click_button 'Proceed to checkout'
    sleep 2
    find('#form > div > p.checkbox > label').click
    sleep 2
    click_button 'Proceed to checkout'
    sleep 2   
   end

   def escolherPagamento
     find('.bankwire').click
   end

   def finalizarCompra
     click_button 'I confirm my order'
   end

   def validarCompraConcluida
     find('#center_column > div > p > strong').text
   end

    
end
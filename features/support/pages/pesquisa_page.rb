class PesquisaPage
    include Capybara::DSL

   def inserirDadoNaPesquisa(string)
    find('input[id=search_query_top]').set string
    find('#searchbox > button').click
    sleep 2
   end

   def detalhesPrimeiroProduto
      find('#center_column > ul > li.ajax_block_product.col-xs-12.col-sm-6.col-md-4.first-in-line.last-line.first-item-of-tablet-line.first-item-of-mobile-line.last-mobile-line > div > div.left-block > div > a.product_img_link > img').click
   end

   def tituloProduto
      find('#center_column > div > div > div.pb-center-column.col-xs-12.col-sm-4 > h1').text
   end

    
end
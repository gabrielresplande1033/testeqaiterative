class PesquisaPage
    include Capybara::DSL

   def inserirDadoNaPesquisa(string)
    find('input[id=search_query_top]').set string
    find('#searchbox > button').click
    sleep 2
   end

   def detalhesPrimeiroProduto
      find('#center_column > ul > li > div > div.left-block > div > a.product_img_link > img').click
   end

   def tituloProduto
      find('#center_column > div > div > div.pb-center-column.col-xs-12.col-sm-4 > h1').text
   end

    
end
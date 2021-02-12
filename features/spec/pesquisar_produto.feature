#language: pt

@teste_pesquisa
Funcionalidade: Efetuar pesquisa de produto no e-commerce

    COMO cliente do e-commerce 
    EU QUERO realizar pesquisas no site
    A FIM DE encontrar um produto


    @pesquisar_produto
    Cenario: Realizar pesquisa 
        Dado que estou na página inicial do e-commerce
        Quando eu inserir o conteúdo "Faded Short Sleeve" na barra de pesquisa e realizar a busca
        Então devo clicar no primeiro produto da lista
        E verificar que o titulo desse produto é "Printed Chiffon Dress"

    
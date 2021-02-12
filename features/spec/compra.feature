#language: pt

@teste_compra
Funcionalidade: Finalizar uma compra

    COMO cliente do e-commerce 
    EU QUERO escolher um produto,
    A FIM DE finalizar uma compra

    @compra_completa
    Cenario: Compra completa caminho feliz
        Dado que eu já esteja logado no e-commerce com as credenciais "gbl_marcelino@hotmail.com" e "teste652"
        Quando eu pesquisar e escolher um produto
        Então eu adiciono-o ao carrinho
        E completo o fluxo de compra até o pagamento
        E escolho a forma de pagamento
        E finalizo a compra
        E valido que a compra foi finalizada com sucesso





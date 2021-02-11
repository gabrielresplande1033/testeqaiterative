#language: pt

@testeLogin
Funcionalidade: Efetuar login no e-commerce

    COMO cliente do e-commerce 
    EU QUERO efetuar login no sistema
    A FIM DE finalizar uma compra

    Contexto: Estar na página inicial do e-commerce
    Dado que estou na página inicial do e-commerce

    @efetuarLogin
    Esquema do Cenario: Realizar login
        Dado que eu acesse a pagina de login
        Quando eu inserir meus dados de '<login>' e '<senha>'
        Então realizo o login
        E verifico o <nome> no cabecalho do site

        Exemplos:
            | login                     | senha     |  nome           |
            | gbl_marcelino@hotmail.com | teste652  | "Gabriel Souza" |
     
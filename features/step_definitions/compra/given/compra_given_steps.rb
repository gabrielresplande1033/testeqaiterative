Dado('que eu já esteja logado no e-commerce com as credenciais {string} e {string}') do |login, senha|
    step "que estou na página inicial do e-commerce"
    step 'que eu acesse a pagina de login'
    step "eu inserir meus dados de '#{login}' e '#{senha}'"
    step 'realizo o login'
end
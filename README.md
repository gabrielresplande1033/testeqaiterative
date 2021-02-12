# Objetivo
Esse projeto tem como principal objetivo a avaliação do processo seletivo da Iterative para a vaga de Analista de Testes / Qualidade de software.

# Tecnologias utilizadas
- [Ruby](https://www.ruby-lang.org/pt/)
- [Cucumber](https://cucumber.io/)
- [Capybara](https://www.rubydoc.info/github/jnicklas/capybara)
- [Chromedriver](https://chromedriver.chromium.org/downloads)


# Funcionalidades
- Automação de testes de Login
- Automação de testes de pesquisa de produto
- Automação de testes de compra

# ChromeDriver
- Para rodar os testes de interface, é necessário possuir o ChromeDriver.
- Verifique a versão do chrome [aqui](https://chromedriver.storage.googleapis.com/LATEST_RELEASE)
- Baixe a versão do ChromeDriver compatível com o seu navegador [aqui](https://chromedriver.storage.googleapis.com/index.html)
- Por fim, mova o ChromeDriver para o diretório correto:
- *sudo mv chromedriver /usr/local/bin* 

# Como executar os testes de Interface

Para executar os testes de Interface deve-se possuir instalado o **Ruby**, **Bundle**, **ChromeDriver**, clonar o projeto e executar os seguintes comandos na raiz do projeto
- *bundle install*
- *cucumber* (Para executar todos os testes)
- *cucumber -t @efetuar_login* (para executar o teste referente ao login)
- *cucumber -t @pesquisar_produto* (para executar o teste referente a pesquisa de produto)
- *cucumber -t @compra_completa* (para executar todo fluxo de compra, incluindo o login e a pesquisa de produto)

*Observações: Alguns empecilhos quanto ao teste de interface, por conta da inconsistencia do sistema. Por vezes o site trava, e acaba afetando o funcionamento dos testes*


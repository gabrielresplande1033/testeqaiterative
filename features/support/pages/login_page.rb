class LoginPage
    include Capybara::DSL

   def go
      visit 'http://automationpractice.com'
   end

   def acessarLogin
     find('.login').click
     sleep 5
   end

   def inserirDadosLogin(login, senha)
    find('input[id=email]').set login
    find('input[id=passwd]').set senha

   end

   def efetuarLogin
    click_button 'Sign in'
    sleep 3
   end

   def nomeCabecalho
    find('#header > div.nav > div > div > nav > div:nth-child(1) > a > span').text
   end

    
end
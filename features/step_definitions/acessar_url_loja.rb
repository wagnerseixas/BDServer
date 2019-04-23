Quando("acesso a url") do
    visit '/'
end 

Entao("eu verifico se estou na pagina da loja") do
   expect(page).to have_current_path('http://automationpractice.com/index.php', url:true)
    sleep(2)
end
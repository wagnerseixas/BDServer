Quando("eu preencho todos os campos obrigatorios e prossigo") do
    # acessar a tela de cadastro
    visit '/'
    find('a[data-id-product="2"]').hover
    find('a[data-id-product="2"]').hover.click
    click_link_or_button 'Proceed to checkout'
    click_link_or_button 'Proceed to checkout'
    sleep(3)
    # Necessario trocar email a cada cadastro
    # Precisaria ter acesso a base de dados,ou api para excluir, para restaurar ao estado inicial 
    fill_in(id: 'email_create', with: 'wagner.s@gmail.com.br')
    find(:css,'#SubmitCreate').hover.click

    # preencher os campos obrigatórios
    fill_in(id: 'customer_firstname', with: 'PrimeiroNome')
    fill_in(id: 'customer_lastname', with: 'ultimonome')
    fill_in(id: 'passwd', with: 'wagner12345')
    fill_in(id: 'firstname', with: 'Wagner')
    fill_in(id: 'address1', with: 'Valerio Botelhho')
    fill_in(id: 'address2', with: 'Bairro: SUL de Manaus')
    fill_in(id: 'city', with: 'Manaus')
    #select 'New York', from: 'id_state' 
    find('option[value="32"]').select_option
    fill_in(id: 'postcode', with: '32830')
    fill_in(id: 'phone', with: '55+9299998888')
    fill_in(id: 'phone_mobile', with: '55+9299998888')
    fill_in(id: 'alias', with: 'meuprimeiroalias')
    
    # Confirma na tela sigin e vai para tela address
    click_link_or_button 'Register'  

    # Confirmar endereço e vai para a tela Shipping
    click_link_or_button 'Proceed to checkout'

    # Confirmar termos e vai para proxima tela payment  
    find('laber[for="cgv"]').click 
    click_link_or_button 'Proceed to checkout'
    # Verifica o valor total da compra
    find('#total_price', text: '$29.00')
    # Confirmar forma de pagamento 
    click_link_or_button 'Pay by check'
    # Finaliza o pedido
    click_link_or_button 'I confirm my order'
    sleep(3)

end
  
Entao("verifico se o cadastro foi realizado com sucesso") do
    # verifica se o cadastro foi realizado com sucesso
    expect(page).to have_css('h1', text: 'Order confirmation')
end
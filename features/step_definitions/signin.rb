Quando("Preencher email e prosseguir") do
    visit '/'
    find('a[data-id-product="2"]').hover
    find('a[data-id-product="2"]').hover.click
    click_link_or_button 'Proceed to checkout'
    click_link_or_button 'Proceed to checkout'
    sleep(3)
    fill_in(id: 'email_create', with: 'wagnerseixas2011@gmail.com')
    find(:css,'#SubmitCreate').hover.click
    

end
  
Entao("cliente devera passar para proxima tela") do
    expect(page).to have_css('h3', text: 'YOUR PERSONAL INFORMATION')
    
end
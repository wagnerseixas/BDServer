Quando("eu clico no botao checkout") do
    visit '/'
    find('a[data-id-product="2"]').hover
    find('a[data-id-product="2"]').hover.click
    sleep(2)
    page.has_text?('Proceed to checkout')
    click_link_or_button 'Proceed to checkout'
  end
  
  Entao("acesso a tela de checkout_order") do
    # verifica a pagina order
    expect(page).to have_current_path('http://automationpractice.com/index.php?controller=order', url:true)
    # verifica o link do produto = 2 ---Blouse
    page.has_link?("Blouse")
    sleep(2)
  end
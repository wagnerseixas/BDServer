Quando("passar o mouse sobre o produto e clicar") do
    visit '/'
    find('a[data-id-product="2"]').hover
    find('a[data-id-product="2"]').hover.click
    sleep(2) 
end 

Entao("o produto é exibido numa janela popup") do
    page.has_text?('Proceed to checkout')
    sleep(2)
end
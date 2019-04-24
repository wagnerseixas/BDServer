Instalaçäo no Windows 

Ruby
	https://rubyinstaller.org/downloads/

Bundle
	GEM INSTALL BUNDLER

Cucumber
	GEM INSTALL CUCUMBER

Rspec
	GEM INSTALL RSPEC

Capybara
	GEM INSTALL CAPYBARA

Instalando o VSCode
	https://code.visualstudio.com/download


Instalando o que foi definido no arquivo no CMD

	source 'https://rubygems.org/'
	gem "cucumber"
	gem "rspec"
	gem "capybara"
	gem "selenium-webdriver"
	
	Bundle Install
	


Instalar os Plugins no VSCode
• Instalar o Ruby
• Instalar o vscode Icons
• Instalar o Gherkin Indent
• Instalar o Snippets and Syntax Highlight for Gherkin (Cucumber)


Procedimento para criaçäo de projeto no VSCode

1. Criar uma pasta chamada DBServerTeste
2. Executar o comando via CMD na pasta criada acima : cucumber --init
3. Criar uma pasta SPECS dentro da pasta FEATURES
4. No VSCode Menu File - "Add folder to workspace.." >> DBServerTeste
5. Criar o arquivo gemfile na  pasta raiz DBServerTeste
6. Executar bundle install no CMD

Observação : As pastas e arquivos do projeto DBServerTeste já estäo estruturadas no Gitrub
-> https://github.com/wagnerseixas/BDServer

Ordem de execuçäo dos arquivos(tags) na pasta : [SPECS] com CMD
1. Entrar na pasta DBServer via CMD
2. Executar: Cucumber -t@url_loja # acessar a url da loja
3. Executar: Cucumber -t@escolherproduto # seleciona um produto e será aberto um popup 
4. Executar: Cucumber -t@checkout # clicar na opçäo para prosseguir 
5. Executar: Cucumber -t@cadastraremail # Cadastrar um email válido
	#deve ser trocado o email a cada execuçäo no arquivo signin.rb
6. Executar: Cucumber -t@cadastro # Preencher o formulário(campos obrigatórios) e seguirá para as telas: Address -> Shipping -> payment (confirmando o pedido)
	#deve ser trocado o email a cada execuçäo no arquivo cadastrar_campos_obrigatorios.rb(mesmo do item 5)







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



# The Movie DB

Por questão de restrição de máquina, para esse projeto, foi utilizado o Xcode 10.1 e swift 4.2.

Para este projeto foi utilizado o Cocoapods, para gerenciar as bibliotecas utilizadas. No projeto foi utilizada a seguinte biblioteca:

AlamofireImage - Biblioteca para realizar o download das imagens do webservice

## Instrução

Para executar a aplicação é necessário instalar o cocoapods com o seguinte comando :

sudo gem install cocoapods

Após a instalação, acessar a pasta do projeto através do terminal e executar o seguinte comando

pod install

Com isso as bibliotecas serão instaladas.

Após a instalação abra o xcode -> File -> Open -> Selecione a pasta onde o projeto foi salvo -> Abra o arquivo TheMovieDb.xcworkspace

Talvez seja necessário alterar a versão do swift no pod Alamofire. Para isso siga os seguintes passos:

  1 - Selecione o Projet Pods;
  2 - Selecione a Target Alamofire;
  3 - Em Swift Language Version, mude para a versão 4.2 (pelo menos é a versão que utilizei para este projeto).

Após o projeto aberto é só executar.

## Breve descrição

Ao abrir o app será apresentada uma tela inicial que inicia o carregamento dos filmes, ao finalizar será apresentada a lista dos primeiros 20 filmes, rolando a lista para cima ao chegar no final será carregado mais filmes. Em cima da lista tem um campo para que o usuário possa digitar o nome de um filme que deseja, enquanto o usuário vai digitando o nome do filme será feito a busca do filme. Ao selecionar um filme será apresentado os detalhes dos filmes.

## Melhorias

- Implementar testes;
- Carregamento de imagens;
- Melhorias na listagem de filmes.

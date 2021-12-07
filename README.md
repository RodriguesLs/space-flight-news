# Space Flight News API

O Challenge space flight news API tem o objetivo de testar os conhecimentos e traquejo com Ruby on Rails do desenvolvedor.
O escopo da API é ter um CRUD de artigos retirados de uma API de terceiro. Com CRUD quero significar que será possível incluir, pesquisar, listar todos, atualizar e apagar um artigo.  

## Descrição técnica

  * Ruby version: 3.0.0
  * Rails version: 6.1.4.1
  * Node 10.24
  * Yarn 1.22

## Configurações

  - Run>
    1. ```docker-compose up -d``` - create and configure initial environment;
    2. ```docker-compose exec app bash``` - access docker bash console;
    3. ```bundle install``` - install rails dependencies;
    4. ```bin/rails db:environment:set RAILS_ENV=development``` - set an environment;
    5. ```rails db:setup``` - setup and configure database;
    6. ```rails server ``` - run application (default port: 3000);

## Como ativar a CRON

  Após rodar o ```bundle install``` e conferir se a biblioteca cron está instalada (no Sistema Operacional):

  - Run>
    1. ```bundle exec whenever --update-crontab```;
    2. Depois, para verificar, basta usar o comando: ```crontab -l```;

## Como rodar a suíte de tests

No projeto usamos o Mini-test e o RSpec:

- Para rodar o Mini-test, basta usar o comando ```rails test```;

- Para rodar o RSpec, basta usar o comando ```rspec spec/```, para rodar todos os testes ou ```rspec spec/path_to_file``` para rodar um arquivo específico.

## Para rodar a CRON

Ao instalar o projeto com o docker, apṍs o ```bundle install```, para o funcionamento da CRON, é necessário usar o comando ```whenever --update-cron```. Isso escreverá no arquivo cron do docker para que a tarefa seja executada.


## Link da apresentação

(Apresentação no loom)[https://www.loom.com/share/b948ec1dcc9f4a45bf01cc609c3b92ed]

> This is a challenge by (Coodesh)[https://coodesh.com/]


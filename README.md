# Space Flight News API

O Challenge space flight news API tem o objetivo de testar os conhecimentos e traquejo com Ruby on Rails do desenvolvedor.
O escopo da API é ter um CRUD de artigos retirados de uma API de terceiro. Com CRUD quero significar que será possível incluir, pesquisar, listar todos, atualizar e apagar um artigo.  

## Descrição técnica

  * Ruby version: 3.0.0
  * Rails version: 6.1.4.1
  * Node 10.24
  * Yarn 1.22

## Configurações e uso da aplicação

  - Run>
    1. ```docker-compose up -d``` - create and configure initial environment;
    2. ```docker-compose exec app bash``` - access docker bash console;
    3. ```bundle install``` - install rails dependencies;
    4. ```bin/rails db:environment:set RAILS_ENV=development``` - set an environment;
    5. ```rails db:setup``` - setup and configure database;
    6. ```rails server ``` - run application (default port: 3000);

## 

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

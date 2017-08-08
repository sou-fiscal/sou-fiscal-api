# O Projeto

Diante das angustias vividas pelos cidadãos ao se deparar com serviços públicos ineficientes surge a indignação pela impotência de não saber como reclamar e dar sua contribuição para que aquela situação melhore.

Nesse contexto surge o “Sou Fiscal” que é um software colaborativo, onde o cidadão será o principal agente para sinalizar aos órgãos fiscalizadores sobre irregularidades em obras públicas e posteriormente nos demais serviços oferecidos aos cidadãos. Além disso, poderá acompanhar o desenrolar da sua reclamação e a efetividade e eficiência com a qual sua questão será resolvida.

A aplicação promove um encurtamento das distâncias entre os órgãos fiscalizadores e o cidadão, redução da burocracia para se fazer uma reclamação junto aos órgãos competentes, dá maior praticidade e permite a continuidade do acompanhamento da fiscalização através dos registos disponíveis no aplicativo e promove uma participação social inclusiva onde o cidadão poderá ser mais ativo no cumprimento do seu papel social.

# Como utilizar ?

Para instalação local, você irá precisar clonar o sou-fiscal-api do nosso repositório e executar os seguintes comandos:

```bash
$ cd ~/sou-fiscal-api
$ bundle install
$ rails db:migrate
$ rails s
```

Nós utilizamos o [JSON Web Tokens (JWT)](https://jwt.io/) como meio de autenticação, logo, para poder testar a nossa API, será necessário realizar os seguintes passos:

1. No root da aplicação, utilizar o comando para acessar o console do Rails e criar um usuário

```bash
$ rails c
$ irb(main):001:0> User.create!(email: 'email@example.com' , password: '123456' , password_confirmation: '123456')
$ irb(main):002:0> exit
```

2. Agora inicie o servidor com o comando 'rails s' e envie uma requisição via [cURL](https://en.wikipedia.org/wiki/CURL)

```bash
$ curl -H "Content-Type: application/json" -X POST -d '{"email":"email@example.com","password":"123456"}' http://localhost:3000/authenticate
```
Essa ação irá retornar um token parecido com este abaixo

```bash
{"auth_token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE0NjA2NTgxODZ9.xsSwcPC22IR71OBv6bU_OGCSyfE89DvEzWfDU0iybMA"}
```

3. Já que temos o token para acessar nossa aplicação, podemos ter algum retorno de nossas requisições do servidor

```bash
curl -H "Authorization: eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE0NjA2NTgxODZ9.xsSwcPC22IR71OBv6bU_OGCSyfE89DvEzWfDU0iybMA" http://localhost:3000/complaints
```

## Colaboradores
* Antônio Jeremias
* Carlos Henrique
* Djones Santos
* Francisco Porfírio

## Licença
Esta aplicação está disponível como um projeto de código aberto de acordo com os termos da [GNU GENERAL PUBLIC LICENSE](https://github.com/ajeremias/soufiscal/blob/master/LICENSE)

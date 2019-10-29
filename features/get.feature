#language: pt

Funcionalidade: Verbo GET

@get
Cenario: Realizar uma requisição GET com sucesso
  Dado que tenho um endpoint filmes
  Quando realizar uma requisição GET para o endpoint 'movies'
  E retorna a lista com as informacoes dos clientes
  Então o status code deve ser '200'

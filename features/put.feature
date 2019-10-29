#language: pt

Funcionalidade: Verbo PUT

@post
Cenario: Realizar uma requisição PUT com sucesso
  Dado que editei o nome de um filme
  Quando realizar a requisição PUT para o endpoint 'movies'
  Então deve retornar o status code '200' após realizar a alteração
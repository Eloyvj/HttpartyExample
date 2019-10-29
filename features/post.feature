#language: pt

Funcionalidade: Verbo POST

@post
Cenario: Realizar uma requisição POST com sucesso
  Dado que possuo um novo filme para cadastrar
  Quando realizar uma requisição POST para o endpoint 'movies'
  Então deve retornar o status code '201' apos a inserção
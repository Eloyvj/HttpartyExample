#language: pt

Funcionalidade: Verbo DELETE

@delete
Cenario: Realizar uma requisição DELETE com sucesso
  Dado que envie as informações para deletar 
  Quando realizar uma requisição DELETE para o endpoint 'movies'
  Então devo receber o status code '200'
Dado("que tenho um endpoint filmes") do
      # Endpoint mockado
  end
  
  Quando("realizar uma requisição GET para o endpoint {string}") do |endpoint|
    @response = HTTParty.get 'http://localhost:3000/' + endpoint
  end
  
  Quando("retorna a lista com as informacoes dos clientes") do
    @helper=Helper.new
    @helper.checkGetResponse(@response)
  end
  
  Então("o status code deve ser {string}") do |status_code|
    status_code = status_code.to_i
    expect(@response.code).to eq status_code
  end
Dado("que editei o nome de um filme") do
    @movie = {
        "id": 2,
        "titulo": "Fast & Furious",
        "genero": "Action",
        "ano": 2019
    }.to_json
  end
  
  Quando("realizar a requisição PUT para o endpoint {string}") do |endpoint|
    @response = HTTParty.put 'http://localhost:3000/' + endpoint + '/2',
    :body => @movie,
    :headers => {
      "Content-Type" => 'application/json'
    }
  end
  
  Então("deve retornar o status code {string} após realizar a alteração") do |status_code|
    status_code = status_code.to_i
    expect(@response.code).to eq status_code
  end
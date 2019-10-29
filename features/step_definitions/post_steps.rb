Dado("que possuo um novo filme para cadastrar") do
    @movie = {
      "id": 4,
      "titulo": "Terminator",
      "genero": "Action, Science Fiction",
      "ano": 2019
      }.to_json
  end
  
  Quando("realizar uma requisição POST para o endpoint {string}") do |endpoint|
    @response = HTTParty.post 'http://localhost:3000/' + endpoint,
    :body => @movie,
    :headers => {
      "Content-Type" => 'application/json'
    }
  end
  
  Então("deve retornar o status code {string} apos a inserção") do |status_code|
    status_code = status_code.to_i
    expect(@response.code).to eq status_code
  end
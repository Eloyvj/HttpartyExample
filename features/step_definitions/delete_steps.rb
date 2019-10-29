Dado("que envie as informações para deletar") do
    @movie_delete = {
        "id": 1
      }.to_json
  end
  
  Quando("realizar uma requisição DELETE para o endpoint {string}") do |endpoint|
    @response = HTTParty.delete 'http://localhost:3000/' + endpoint + '/1',
    :body => @movies_delete,
    :headers => {
      "Content-Type" => 'application/json'
    }
    
  end

  Então("devo receber o status code {string}") do |status_code|
    status_code = status_code.to_i
    expect(@response.code).to eq status_code
  end
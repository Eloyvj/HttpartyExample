
class Helper
   
    @@schemaGet = {
        "type" => "object",
        "required" => ["id", "titulo", "genero", "ano"],
        "properties" => {
            "id" => {"type" => "integer"},
            "titulo" => {"type" => "string"},
            "genero" => {"type" => "string"},
            "ano" => {"type" => "integer"}
        }
    }

    def checkGetResponse(movie) 
        result = JSON::Validator.validate(@@schemaGet, movie)
    end
end 
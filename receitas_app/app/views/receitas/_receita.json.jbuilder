json.extract! receita, :id, :nome, :categoria, :ingredientes, :modo_de_preparo, :created_at, :updated_at
json.url receita_url(receita, format: :json)

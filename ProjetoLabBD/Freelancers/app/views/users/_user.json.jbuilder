json.extract! user, :id, :login, :email, :name, :cpf, :age, :profession, :created_at, :updated_at
json.url user_url(user, format: :json)
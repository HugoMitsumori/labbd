json.extract! user, :id, :login, :email, :password, :name, :cpf, :age, :profession, :created_at, :updated_at
json.url user_url(user, format: :json)
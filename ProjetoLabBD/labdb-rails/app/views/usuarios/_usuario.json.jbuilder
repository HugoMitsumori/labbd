json.extract! usuario, :id, :login, :email, :nome, :cpf, :idade, :profissao, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
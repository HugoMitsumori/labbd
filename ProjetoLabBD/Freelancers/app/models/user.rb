class User 
	include Neo4j::ActiveNode
	property :login, type: String
	property :email, type: String
	property :name, type: String
	property :cpf, type: String
	property :age, type: Integer
	property :profession, type: String
end

class Individual
  include Neo4j::ActiveNode
  property :login, type: String
  property :name, type: String
  validates :login, :presence => true
  validates :name, :presence => true
  has_many :in, :followers, model_class: :Individual, type: 'follow'
  has_many :out, :followeds, type: 'follow', model_class: :Individual
end
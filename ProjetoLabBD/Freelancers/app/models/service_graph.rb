class ServiceGraph
  include Neo4j::ActiveNode
  property :id, type: Integer
  property :name, type: String
  validates :id, :presence => true
  validates :name, :presence => true
  has_one :in, :creator, model_class: :Individual, type: 'created'
  has_many :in, :workers, model_class: :Individual, type: 'worked_in'
end
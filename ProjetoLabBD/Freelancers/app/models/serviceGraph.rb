class ServiceGraph
  include Neo4j::ActiveNode
  property :service_id, type: integer
  property :service_name, type: String
  validates :service_id, :presence => true
  validates :service_name, :presence => true
  has_many :in, :worked_in, model_class: :Individual, type: 'follow'
end
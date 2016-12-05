class SolutionGraph
  include Neo4j::ActiveNode
  property :code, type: Integer
  property :desc, type: String  
  validates :code, :presence => true
  validates :desc, :presence => true
  has_one :out, :service, model_class: :ServiceGraph, type: 'submited'
  has_one :in, :creator, model_class: :Individual, type: 'worked_in'
end
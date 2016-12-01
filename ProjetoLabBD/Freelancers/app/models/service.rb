class Service < ApplicationRecord
	has_many :required_knowledges
	has_many :proposals
	has_many :solutions
	has_one :solution
	belongs_to :contractor
end

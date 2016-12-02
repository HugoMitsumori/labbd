class Service < ApplicationRecord
	has_many :required_knowledges
	has_many :proposals
	has_one :solution
	belongs_to :contractor, :foreign_key => :contractor_id
	def self.recent
    	order('created_at desc')
  	end
end

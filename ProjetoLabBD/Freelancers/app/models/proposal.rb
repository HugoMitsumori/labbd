class Proposal < ApplicationRecord
	belongs_to :service
	belongs_to :freelancer
end

class Freelancer < ApplicationRecord
	has_many :freelancer_knowledges
	has_many :proposals
	has_many :solutions
	has_many :certificates
end

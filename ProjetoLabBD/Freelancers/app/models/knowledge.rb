class Knowledge < ApplicationRecord
	has_many :freelancer_knowledges
	has_many :required_knowledges
	has_many :certificates
end

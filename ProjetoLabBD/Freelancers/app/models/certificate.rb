class Certificate < ApplicationRecord
	belongs_to :knowledge
	belongs_to :freelancer
end

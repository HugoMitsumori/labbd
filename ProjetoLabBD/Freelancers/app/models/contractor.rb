class Contractor < ApplicationRecord
	belongs_to :company
	has_many :services
end

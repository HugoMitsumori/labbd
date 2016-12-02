class Contractor < ApplicationRecord
	belongs_to :company, optional: true
	has_many :services
end

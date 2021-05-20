class Course < ApplicationRecord
	belongs_to :user
	has_many :records
	has_many :people, through: :records
end

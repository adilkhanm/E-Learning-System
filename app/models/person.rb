class Person < ApplicationRecord
	belongs_to :user
	has_many :records
	has_many :courses, through: :records
end

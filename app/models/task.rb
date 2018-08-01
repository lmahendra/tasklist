class Task < ApplicationRecord
	belongs_to :project
	has_many :comments
	validates_presence_of :name
	default_scope { order("priority asc, tat asc") } 
end

class Project < ApplicationRecord
	has_many :tasks
	validates_presence_of :name
	accepts_nested_attributes_for :tasks, reject_if: :all_blank, allow_destroy: true
end

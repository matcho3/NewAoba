class Question < ActiveRecord::Base
	belongs_to :operation
	has_many :answers
end

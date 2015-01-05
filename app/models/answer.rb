class Answer < ActiveRecord::Base
	belongs_to :user
	belongs_to :question, :autosave => true
	# attr_accessible :question_id, :content, :type, :type2
	validates :content, :presence => true
	# validates :value, :presence => true
	accepts_nested_attributes_for :question
end


# create_table "questions", force: true do |t|
#     t.integer  "operation_id"
#     t.datetime "created_at"#     t.text     "content"

#     t.datetime "updated_at"
#     t.integer  "type"
#     t.integer  "type2"
#   end




 # class Book < ActiveRecord::Base
 #   attr_accessible :author_id, :title, :author_attributes
 #   belongs_to :author
 #   accepts_nested_attributes_for :author
 # end
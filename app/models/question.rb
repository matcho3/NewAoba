class Question < ActiveRecord::Base
	belongs_to :operation
	has_many :answers





	# validates :to_name, :presence => true
 #    validates :address, :presence => true
end


#




# # shipping.rb
# class Shipping < ActiveRecord::Base
 
#   has_many :goods
#   accepts_nested_attributes_for :goods
 
#   attr_accessible :to_name, :address
 
#   # 子モデルの要素にもアクセスできるようにする
#   attr_accessible :goods_attributes
 
#   validates :to_name, :presence => true
#   validates :address, :presence => true
# end
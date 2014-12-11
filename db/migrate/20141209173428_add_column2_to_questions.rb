class AddColumn2ToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :type2, :integer
  end
end

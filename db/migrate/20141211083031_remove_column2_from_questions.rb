class RemoveColumn2FromQuestions < ActiveRecord::Migration
  def change
    remove_column :questions, :type2, :integer
  end
end

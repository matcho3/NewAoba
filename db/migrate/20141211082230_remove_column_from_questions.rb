class RemoveColumnFromQuestions < ActiveRecord::Migration
  def change
    remove_column :questions, :type, :integer
  end
end

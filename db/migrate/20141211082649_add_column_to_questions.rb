class AddColumnToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :questiontype, :integer
  end
end

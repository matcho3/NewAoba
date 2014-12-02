class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :birthday, :date
    add_column :users, :reserved_at, :datetime
    add_column :users, :operation_id, :integer
    add_column :users, :body_part, :integer
    add_column :users, :first_time, :integer
    add_column :users, :reservation_id, :integer
    add_column :users, :URL, :string
  end
end

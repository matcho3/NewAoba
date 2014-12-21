class ChangeColumnToUser < ActiveRecord::Migration
	#変更内容
  def up
    change_column :users, :reserved_at, :date
  end

  # 変更前の状態
  def down
    change_column :users, :reserved_at, :datetime
  end
end



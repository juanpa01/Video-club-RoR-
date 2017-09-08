class ChangeIntegerLimitInUsers < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :num_phone, :integer, limit: 8
  end
end

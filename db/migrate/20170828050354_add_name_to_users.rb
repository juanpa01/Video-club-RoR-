class AddNameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :num_membership, :integer
    add_column :users, :address, :string
    add_column :users, :num_phone, :integer
  end
end

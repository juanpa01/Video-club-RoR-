class RemoveInitialValuesFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :num_membership, :integer
  end
end

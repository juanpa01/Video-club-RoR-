class CreateLends < ActiveRecord::Migration[5.1]
  def change
    create_table :lends do |t|
      t.integer :value
      t.date :loan_date
      t.date :deliver_date
      t.references :movie, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

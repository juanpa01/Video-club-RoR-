class CreateHasActors < ActiveRecord::Migration[5.1]
  def change
    create_table :has_actors do |t|
      t.references :movie, foreign_key: true
      t.references :actor, foreign_key: true

      t.timestamps
    end
  end
end

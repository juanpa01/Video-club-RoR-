class AddDescriptionToMovies < ActiveRecord::Migration[5.1]
  def change
    add_column :movies, :description, :text
  end
end

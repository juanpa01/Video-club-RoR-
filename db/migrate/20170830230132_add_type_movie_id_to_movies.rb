class AddTypeMovieIdToMovies < ActiveRecord::Migration[5.1]
  def change
    add_reference :movies, :type_movie, foreign_key: true
  end
end

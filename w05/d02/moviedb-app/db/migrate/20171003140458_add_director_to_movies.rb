class AddDirectorToMovies < ActiveRecord::Migration[5.1]
  def change
  	add_reference :movies, :director, index: true
  end
end

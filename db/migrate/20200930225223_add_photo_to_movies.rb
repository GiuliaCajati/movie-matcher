class AddPhotoToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :photo, :string
  end
end

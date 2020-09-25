class AddQuotesColumnToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :quote, :string
  end
end

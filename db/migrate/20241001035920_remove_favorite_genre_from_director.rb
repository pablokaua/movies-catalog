class RemoveFavoriteGenreFromDirector < ActiveRecord::Migration[7.2]
  def change
    remove_column :directors, :favorite_genre, :string
  end
end

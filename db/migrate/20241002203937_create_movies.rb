class CreateMovies < ActiveRecord::Migration[7.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :release_year
      t.string :synopsis
      t.string :country
      t.string :duration
      t.references :director, null: false, foreign_key: true
      t.references :movie_genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end

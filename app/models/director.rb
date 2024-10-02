class Director < ApplicationRecord
  belongs_to :movie_genre, foreign_key: "favorite_genre_id", optional: true
  has_many :movies
end

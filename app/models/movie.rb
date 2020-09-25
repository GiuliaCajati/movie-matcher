class Movie < ApplicationRecord
    has_many :user_movie_matches
    has_many :movies, through: :user_movie_matches
end

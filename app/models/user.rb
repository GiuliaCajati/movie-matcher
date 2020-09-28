class User < ApplicationRecord
    belongs_to :city 
    has_many :user_movie_matches
    has_many :movies, through: :user_movie_matches

    def create_user_movie_match(movies)
        movies.each do |movie_id|
           if movie_id.length == 0 
                next 
           else
               movie_selection = Movie.find(movie_id.to_i)
               UserMovieMatch.create(user_id: self, movie_id: movie_selection)
           end 
        end 
    end

end

class UserMovieMatchesController < ApplicationController

    def new 
        @usermoviematch = UserMovieMatch.new 
    end 
    
    def create 
        usermoviematch = UserMovieMatch.create(matches_params)
        redirect_to user_path(@user)
    end 

    private 

    def matches_params 
        params.require(:usermoviematch).permit(:user_id, :movie_id)
    end 
end

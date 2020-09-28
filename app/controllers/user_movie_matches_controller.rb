class UserMovieMatchesController < ApplicationController

    def new 
        @usermoviematch = UserMovieMatch.new 
    end 
    
    def create 
        User.find(params[:user_id.to_i]).create_user_movie_match(params[:movie_id])
        redirect_to user_path(@user)
    end 

    private 

    # def matches_params(*args)
    #     params.require(:usermoviematch).permit(*args)
    # end 
end


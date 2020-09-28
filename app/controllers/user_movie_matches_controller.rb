class UserMovieMatchesController < ApplicationController

    def new_matches
        @usermoviematch = UserMovieMatch.new
        @user = User.find(params[:id])
    end 

    
    def create_new_matches
        @user = User.find(params[:id])
        params[:user_movie_match][:movie_id].each do |movie_id|
        if movie_id.length == 0 
            next 
            buybug
        else
        UserMovieMatch.create(movie_id: movie_id, user_id: params[:id])
        redirect_to user_path(@user)
            end
        end
    end 

    private 

    # def matches_params(*args)
    #     params.require(:usermoviematch).permit(*args)
    # end 

end


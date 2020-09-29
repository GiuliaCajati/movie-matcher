class UserMovieMatchesController < ApplicationController

    def new_matches
        @usermoviematch = UserMovieMatch.new
        @user = User.find(params[:id])
    end 

    
    def create_new_matches
        @user = User.find(params[:id])
        @error_var = false
        if params[:user_movie_match][:movie_id].count > 2
            @error_var = true  
            redirect_to user_path(@user) 
        else 
        params[:user_movie_match][:movie_id].each do |movie_id|
        if movie_id.length == 0 
            next 
        else
        UserMovieMatch.create(movie_id: movie_id, user_id: params[:id])
            end
        end
        redirect_to user_path(@user)
    end 
    end 

    private 

    # def matches_params(*args)
    #     params.require(:usermoviematch).permit(*args)
    # end 

end


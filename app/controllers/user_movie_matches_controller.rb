class UserMovieMatchesController < ApplicationController

    before_action :authorized

    def new_matches
        @usermoviematch = UserMovieMatch.new
        @user = User.find(params[:id])
    end 

    
    def create_new_matches
        @user = User.find(params[:id])
        @error_var = false
        if params[:user_movie_match][:movie_id].count > 11
            @error_var = true  
            @user = User.find(params[:id])
            @usermoviematch = UserMovieMatch.new
            render :new_matches
        else 
         @user.user_movie_matches.destroy_all
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

    def edit
        @usermoviematch = UserMovieMatch.new
        @user = User.find(params[:id])
    end

    def update 
        @user = User.find(params[:id])     
        @user.create_new_matches
    end 

    

    private 

    # def matches_params(*args)
    #     params.require(:usermoviematch).permit(*args)
    # end 

end


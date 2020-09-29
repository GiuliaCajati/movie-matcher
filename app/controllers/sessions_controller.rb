class SessionsController < ApplicationController

    
    def welcome 
    end 

    def process_login
        user = User.find_by(name:params[:name])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            flash.now[:no_user] = "No user found with that name/password combination"
            render :welcome
        end
    end

    def logout
        session.clear
        flash[:message] = "You have been logged out"
        redirect_to welcome_path
    end




end 
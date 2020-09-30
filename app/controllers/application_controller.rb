class ApplicationController < ActionController::Base

    helper_method :logged_in?, :current_user


    def logged_in?
      !!session[:user_id]
    end

    def current_user
      if logged_in?
        return user.find(session[:user_id])
      else
        return nil
      end
    end

    def authorized
      if !logged_in?
          flash[:message] = "You must be logged in to do that"
          redirect_to welcome_path
      end
  end

end

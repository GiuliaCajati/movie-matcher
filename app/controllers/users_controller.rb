class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new 
    @user = User.new 
  end 

  def create 
    @user = User.create(user_params)
    if @user.save 
      redirect_to new_matches_path(@user.id)
    else 
      render :new
    end 
  end 

  def edit 
    @user = User.find(params[:id])
  end

  def update 
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end 

  def matches 
    @user = User.find(params[:id])
    @friends = @user.friends
  end

  private 

  def user_params 
    params.require(:user).permit(:name, :age, :phone_number, :bio, :photo, :city_id, :password)
  end 
  
end

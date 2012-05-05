class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def show
    @user = User.find_by_id(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Welcome!"
      redirect_to users_url
    else
      render 'new'
      flash[:error] = "Please try again."
    end
  end

  def edit 
    @user = User.find_by_id(params[:id])
  end

  def update
    @user = User.find_by_id(params[:id])
    if @user.update_attributes(params[:user])
      flash[:success] = "Profile updated"
      redirect_to user_url
    else
      render 'edit'
      flash[:error] = "Please try again."
    end
  end

  def destroy 
   User.find_by_id(params[:id]).destroy
   flash[:success] = "User has been deleted"
   redirect_to users_url 
  end


end

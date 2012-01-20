class Admin::UsersController < ApplicationController
  layout "admin" # :admin_user_layout
  before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to new_admin_user_url, notice: 'User was successfully created.'
    else
      render action: "new" 
    end
  end

  def update
    if params[:user][:password].blank?
      params[:user].delete(:password)
      params[:user].delete(:password_confirmation)
    end
    @user = User.find(params[:id])  
    if @user.update_attributes(params[:user])
      redirect_to admin_users_url, notice: 'User was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to admin_users_url, notice: "User successfully deleted."
  end
  
  # private
    # def admin_user_layout
      # case action_name
      # #when "edit"
      # #  "popup"
      # else 
        # "admin"
      # end
    # end
end

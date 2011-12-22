class Admin::MenusController < ApplicationController
  layout "admin"
  before_filter :authenticate_user!

  def index
    @menus = Menu.all
  end

  def new
    @menu = Menu.new
  end

  def edit
    @menu = Menu.find(params[:id])
  end

  def create
    @menu = Menu.new(params[:menu])
    if @menu.save
      redirect_to admin_menus_url, notice: 'Menu was successfully created.'
    else
      render action: "new" 
    end
  end

  def update
    @menu = Menu.find(params[:id])
    if @menu.update_attributes(params[:menu])
      redirect_to admin_menus_url, notice: 'Menu was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @menu = Menu.find(params[:id])
    @menu.destroy
    redirect_to admin_menus_url
  end
  
  def sort
    
  end
end

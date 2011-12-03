class MenusController < ApplicationController

  def index
    @menus = Menu.all
  end

  def show
    @menu = Menu.find(params[:id])
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
      redirect_to @menu, notice: 'Menu was successfully created.'
    else
      render action: "new" 
    end
  end

  def update
    @menu = Menu.find(params[:id])
    if @menu.update_attributes(params[:menu])
      redirect_to @menu, notice: 'Menu was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @menu = Menu.find(params[:id])
    @menu.destroy
    redirect_to menus_url
  end
end

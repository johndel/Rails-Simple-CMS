class Admin::MenusController < ApplicationController
  layout "admin" #:admin_menu_layout
  before_filter :authenticate_user!

  def index
    @menus = Menu.all
  end

  def new
    @menu = Menu.new
    @pages = []
    @other_pages = Page.all
  end

  def edit
    @menu = Menu.find(params[:id])
    @pages = Page.position_order(@menu.id)
    @other_pages = Page.all - @pages 
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
      redirect_to admin_pages_url, notice: 'Menu was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @menu = Menu.find(params[:id])
    @menu.destroy
    redirect_to admin_menus_url
  end
  
  def page_sort # FIX: This method needs HEAVY refactoring
    @pm_mapping = PageMenuMapping.where("menu_id = ?", params[:menu])
    if @pm_mapping
      
      @pm_mapping.each do |pm_mapping| # For removing from the list...
         # Rails.logger.info("#{params[:page]} doesn\'t have the page_menu_mapping: #{pm_mapping.page_id} - #{params[:page].include?(pm_mapping.page_id.to_s)}")
         PageMenuMapping.delete(pm_mapping) unless params[:page].include?(pm_mapping.page_id.to_s)
      end

      params[:page].each do |page| # For adding new elements to the list...
        # Rails.logger.info("#{page} #{page.class} doesn\'t have the page_menu_mapping: #{@ids} - #{@ids.include?(page.to_i)} --- #{@ids.first.class}")
        PageMenuMapping.create(page_id: page, menu_id: params[:menu]) unless @pm_mapping.map(&:page_id).include?(page.to_i) 
      end
      
      params[:page].each_with_index do |id, index|
        @pm_mapping.update_all({page_position: index + 1}, {page_id: id}) # Finally sorting
      end
          
      Page.cache_expiration
    end

    render :text => "" #params.inspect #params['page'].index(page.id.to_s) + 1
  end

  private
    # def admin_menu_layout
      # case action_name
      # when "edit"
        # "popup"
      # else 
        # "admin"
      # end
    # end
end

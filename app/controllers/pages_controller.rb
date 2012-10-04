class PagesController < ApplicationController
  caches_page :index, :show
  layout "pages"

  before_filter :homepage
  before_filter :default_menu_pages

  def index
    @page = Page.first_page
    check_404
  end

  def show
    @page = Page.find(:first, :conditions => ["permalink = ?", params[:permalink]])
    check_404
  end
  
  private
  def default_menu_pages
    @pages = Page.position_order(Menu.find(:first, :conditions => {:name => "default"}).id)
  end

  def check_404
    render_404 if @page.nil? # render_404 on application controller
  end
  
  def homepage
    @homepage = Page.first_page 
  end
  
end

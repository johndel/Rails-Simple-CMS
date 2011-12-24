class Admin::PagesController < ApplicationController
  layout :admin_page_layout
  before_filter :authenticate_user!

  def index
    @pages = Page.all
  end

  def new
    @page = Page.new
  end

  def edit
    @page = Page.find(params[:id])
  end

  def show
    @page = Page.find(params[:id])
  end

  def create
    @page = Page.new(params[:page])  
    if @page.save
      redirect_to new_admin_page_url, notice: 'Page was successfully created.'
    else
      render action: "new" 
    end
  end
  
  def update
    @page = Page.find(params[:id])
    if @page.update_attributes(params[:page])
      redirect_to admin_pages_url, notice: 'Page was successfully updated.'
    else
      render action: "edit"
    end
  end
  
  def mercury_update
    page = Page.find(params[:id])
    page.content = params[:content][:page_content][:value]
    page.save!
    render text: ""
  end
  
  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    redirect_to admin_pages_url
  end
  
  
  def sitemap
    
  end
    
  private
    def admin_page_layout
      action_name == "show" ? "pages" : "admin"
    end
  
end

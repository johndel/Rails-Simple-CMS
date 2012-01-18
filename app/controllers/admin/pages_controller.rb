class Admin::PagesController < ApplicationController
  layout :admin_page_layout
  before_filter :authenticate_user!

  def index
    @pages = Page.all #.joins(:page_menu_mappings).where("page_menu_mappings.menu_id =?", 8).reorder("page_position")
  end

  def new
    @page = Page.new
  end
  
  def create
    @page = Page.new(params[:page])
    if @page.save
      redirect_to new_admin_page_url, notice: 'Page was successfully created.'
    else
      render action: "new" 
    end
  end

  def edit
    @page = Page.find(params[:id])
  end
    
  def ajax_edit
    @page = Page.find(params[:id])
  end
  
  def update
    @page = Page.find(params[:id])
    respond_to do |format|  
      if @page.update_attributes(params[:page])
        format.html { redirect_to admin_pages_url, notice: 'Page was successfully updated.' }
        format.js   { render "success_update" }
      else
        format.html { render action: "edit" }
        format.js   { render "failed_update" }
      end
    end
  end

  def show
    @pages = Page.position_order
    @page = Page.find(params[:id])
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
      case action_name
      when "show"
        "pages"
      when "ajax_edit"
        "popup"
      else 
        "admin"
      end
    end
  
end

class PagesController < ApplicationController
  layout "pages"
  def index
    @pages = Page.position_order
    @page = Page.first_page
  end

  def show
    @pages = Page.position_order
    @page = Page.find(:first, :conditions => ["permalink = ?", params[:permalink]])
    if @page.nil?
      render_404
    end
  end
  
end

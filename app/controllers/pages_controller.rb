class PagesController < ApplicationController
  layout "pages"
  def index
    @setting = Setting.where(:meta_key => "sidebar").first
    @pages = Page.position_order
    @page = Page.first_page
  end

  def show
    @opages = Page.find(11,12,13)
    @setting = Setting.where(:meta_key => "sidebar").first
    @pages = Page.position_order
    @page = Page.find(:first, :conditions => ["permalink = ?", params[:permalink]])
    if @page.nil?
      render_404
    end
  end
  
end

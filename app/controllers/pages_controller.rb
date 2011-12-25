class PagesController < ApplicationController
  layout "pages"
  def index
  end

  def show
    @page = Page.find(:first, :conditions => ["permalink = ?", params[:permalink]])
    if @page.nil?
      render_404
    end
  end
  
end

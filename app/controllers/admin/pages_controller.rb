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
    
  def quick_edit
    @page = Page.find(params[:id])
  end
  
  def quick_update
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
  
  def update
    @page = Page.find(params[:id])
    respond_to do |format|  
      if @page.update_attributes(params[:page])
        #format.html { redirect_to admin_page_url(@page), notice: 'Page was successfully updated.' }
        format.js   { render "success_content_update" }
      else
        #format.html { render action: "show" }
        format.js   { render "failed_content_update" }
      end
    end
  end
  
  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    redirect_to admin_pages_url, notice: "Page was successfully deleted."
  end
  
  
  def sitemap
    @pages = Page.where("active")
    File.delete("#{Rails.root}/public/sitemap.xml") if File.exists?("#{Rails.root}/public/sitemap.xml")
    
    sitemap = File.new("#{Rails.root}/public/sitemap.xml", "w")
    sitemap.puts('<?xml version="1.0" encoding="utf-8"?>')
    sitemap.puts('<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">')
    @pages.each do |page|
      sitemap.puts('<url>')
      sitemap.puts("<loc>http://#{request.host_with_port}/#{page.permalink}/</loc>")
      sitemap.puts("<lastmod>#{page.updated_at.strftime("%Y-%m-%d")}</lastmod>")
      sitemap.puts('</url>')
    end
    sitemap.puts('</urlset>')    
    redirect_to admin_pages_url, notice: 'Sitemap was successfully created.'
  end
    
  def clear_cache
    Page.cache_expiration
    redirect_to admin_pages_url, notice: 'Cache was successfully sweeped.'
  end
  
  private
    def admin_page_layout
      case action_name
      when "show"
        "pages"
      when "quick_edit"
        "popup"
      else 
        "admin"
      end
    end
  
end

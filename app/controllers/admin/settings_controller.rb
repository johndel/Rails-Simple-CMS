class Admin::SettingsController < ApplicationController
  layout "admin"
  before_filter :authenticate_user!
  
  def homepage
    @pages = Page.where(:active => true)
    @homepage = Setting.where(:meta_key => :homepage).first
  end
  
  def homepage_save
    @homepage = Setting.where(:meta_key => :homepage).first
    @homepage.meta_value = params[:setting_homepage]
    @homepage.save 
    #render :text => params.inspect
    redirect_to admin_pages_path, :notice => "Homepage has successfully saved."
  end
end
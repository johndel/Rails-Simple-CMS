class Admin::SettingsController < Admin::BackendController
  layout "admin"

  def homepage
    @pages = Page.where(:active => true)
    @homepage = Setting.where(:meta_key => :homepage).first
  end

  def homepage_save
    @homepage = Setting.where(:meta_key => :homepage).first
    @homepage.meta_value = params[:setting_homepage]
    @homepage.save
    Page.cache_expiration
    #render :text => params.inspect
    redirect_to admin_pages_path, :notice => "Homepage was successfully saved."
  end
end
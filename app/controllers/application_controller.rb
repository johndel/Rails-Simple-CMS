class ApplicationController < ActionController::Base
  protect_from_forgery
  
  # Devise redirects
  def after_sign_in_path_for(resource)
    if resource.is_a?(User)
      admin_pages_path
    else
      super
    end
  end

  def render_404
    respond_to do |format|
      format.html { render :file => "#{Rails.root}/public/404", :layout => false, :status => :not_found }
      format.xml  { head :not_found }
      format.any  { head :not_found }
    end
  end
 
end

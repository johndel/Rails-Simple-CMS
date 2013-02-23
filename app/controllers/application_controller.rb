class ApplicationController < ActionController::Base
  protect_from_forgery
  layout :layout_by_resource

  def layout_by_resource
    if devise_controller?
      "sign_in"
    else
      super
    end
  end

  # Devise redirects
  def after_sign_in_path_for(resource)
    if resource.is_a?(Admin)
      admin_pages_path
    else
      super
    end
  end

  def render_404
    respond_to do |format|
      format.html { render file: "#{Rails.root}/public/404", layout: false, status: :not_found }
      format.xml  { head :not_found }
      format.any  { head :not_found }
    end
  end

end

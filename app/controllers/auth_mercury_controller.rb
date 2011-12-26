class AuthMercuryController < MercuryController
  before_filter :authenticate_user!, :only => [:edit]
  
  def edit
    render :text => '', :layout => 'mercury'
  end
end
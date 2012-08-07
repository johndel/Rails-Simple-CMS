class UploadsController < ApplicationController

  # def index
    # @uploads = Upload.all
# 
    # respond_to do |format|
      # format.html # index.html.erb
      # format.json { render json: @uploads }
    # end
  # end
# 
  # def show
    # @upload = Upload.find(params[:id])
# 
    # respond_to do |format|
      # format.html # show.html.erb
      # format.json { render json: @upload }
    # end
  # end
#   
#   
#   
  
  # caches_page :show
  # layout "pages"


  def show
    @upload = Upload.find(:first, :conditions => ["permalink = ?", params[:permalink]])
    render_404 if @upload.nil? # render_404 on application controller
  end
  
  
end

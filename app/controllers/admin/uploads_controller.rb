class Admin::UploadsController < ApplicationController
  layout "admin"
  before_filter :authenticate_user!
  def index
    @uploads = Upload.all
  end

  def new
    @upload = Upload.new
  end

  def create
    @upload = Upload.new(params[:upload])
    if @upload.save
      redirect_to new_admin_upload_url, notice: 'Upload was successfully created.'
    else
      render action: "new"
    end
  end

  def edit
    @upload = Upload.find(params[:id])
  end

  # def ajax_edit
    # @upload = Upload.find(params[:id])
  # end

  def update
    @upload = Upload.find(params[:id])
    if @upload.update_attributes(params[:upload])
      redirect_to admin_uploads_url, notice: 'Upload was successfully updated.'
    else
      ender action: "edit"
    end
  end

  def destroy
    @upload = Upload.find(params[:id])
    @upload.destroy
    redirect_to admin_uploads_url, notice: "Upload successfully deleted."
  end
  
end

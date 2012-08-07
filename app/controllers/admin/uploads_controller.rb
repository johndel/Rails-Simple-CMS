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
     # render :text => @upload.permalink
  end

  def edit
    @upload = Upload.find(params[:id])
  end

  def ajax_edit
    @upload = Upload.find(params[:id])
  end

  def update
    @upload = Upload.find(params[:id])
    respond_to do |format|
      if @upload.update_attributes(params[:upload])
        format.html { redirect_to admin_uploads_url, notice: 'Upload was successfully updated.' }
        format.js { render "success_update" }
      else
        format.html { render action: "edit" }
        format.js   { render "failed_update" }
      end
    end
  end

  def destroy
    @upload = Upload.find(params[:id])
    @upload.destroy
    redirect_to admin_uploads_url, notice: "Upload successfully deleted."
  end

end

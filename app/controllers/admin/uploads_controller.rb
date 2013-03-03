class Admin::UploadsController < Admin::BackendController
  layout "admin"

  def index
    @uploads = Upload.all
  end

  def new
    @upload = Upload.new
  end

  def create
    @upload = Upload.new(params[:upload])
    respond_to do |format|
      if @upload.save
        format.html { redirect_to new_admin_upload_path, notice: 'Upload was successfully created.' }
        format.js
      else
        format.html { render action: "new" }
        format.js
      end
    end
  end

  def destroy
    @upload = Upload.find(params[:id])
    respond_to do |format|
      @upload.destroy
      format.html { redirect_to admin_uploads_path, notice: "Upload was successfully deleted." }
      format.js
    end
  end

end

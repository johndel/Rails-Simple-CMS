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
    if @upload.save
      redirect_to new_admin_upload_url, notice: 'Upload was successfully created.'
    else
      render action: "new"
    end
  end

  def destroy
    @upload = Upload.find(params[:id])
    @upload.destroy
    redirect_to admin_uploads_url, notice: "Upload was successfully deleted."
  end

end

class Admin::AdminsController < Admin::BackendController
  layout "admin" # :admin_user_layout

  def index
    @admins = Admin.all
  end

  def new
   @admin = Admin.new
  end

  def edit
   @admin = Admin.find(params[:id])
  end

  def create
   @admin = Admin.new(params[:admin])
    if@admin.save
      redirect_to new_admin_admin_path, notice: 'Admin was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    if params[:admin][:password].blank?
      params[:admin].delete(:password)
      params[:admin].delete(:password_confirmation)
    end
   @admin = Admin.find(params[:id])
    if @admin.update_attributes(params[:admin])
      redirect_to admin_admins_path, notice: 'Admin was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
   @admin = Admin.find(params[:id])
   @admin.destroy
    redirect_to admin_admins_path, notice: "Admin was successfully deleted."
  end
end

class Admin::<%= backend_scaffold_name.pluralize.titleize %>Controller < Admin::BackendController
  layout "admin"

  def index
    @<%= plural_table_name %> = <%= backend_scaffold_name.titleize %>.all
  end

  def new
    @<%= singular_table_name %> = <%= backend_scaffold_name.titleize %>.new
  end

  def create
    @<%= singular_table_name %> = <%= backend_scaffold_name.titleize %>.new(params[:<%= singular_table_name %>])
    if @<%= singular_table_name %>.save
      redirect_to new_admin_<%= singular_table_name %>_path, notice: <%= "'#{human_name} was successfully created.'" %>
    else
      render action: 'new'
    end
  end

  def edit
    @<%= singular_table_name %> = <%= backend_scaffold_name.titleize %>.find(params[:id])
  end


  def update
    @<%= singular_table_name %> = <%= backend_scaffold_name.titleize %>.find(params[:id])
    if @<%= singular_table_name %>.update_attributes(params[:<%= singular_table_name %>])
      redirect_to admin_<%= plural_table_name %>_path, notice: <%= "'#{human_name} was successfully updated.'" %>
    else
      render action: 'edit'
    end
  end

  def destroy
    @<%= singular_table_name %> = <%= backend_scaffold_name.titleize %>.find(params[:id])
    @<%= singular_table_name %>.destroy
    redirect_to admin_<%= plural_table_name %>_path, notice: <%= "'#{human_name} was successfully deleted.'" %>
  end


end

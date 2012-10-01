class ChangeUploadFieldNames < ActiveRecord::Migration
  def up
    rename_column :uploads, :file_file_name, :upload_file_name
    rename_column :uploads, :file_file_size, :upload_file_size
  end

  def down
    rename_column :uploads, :upload_file_name, :file_file_name
    rename_column :uploads, :upload_file_size,  :file_file_size
  end
end

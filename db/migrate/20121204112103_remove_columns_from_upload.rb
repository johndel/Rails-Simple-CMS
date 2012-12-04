class RemoveColumnsFromUpload < ActiveRecord::Migration
  def up
    remove_column :uploads, :file_content_type
    remove_column :uploads, :upload_file_size
    remove_column :uploads, :file_updated_at
    add_column    :uploads, :upload_content_type, :string
  end

  def down
    add_column :uploads, :file_updated_at, :datetime
    add_column :uploads, :upload_file_size, :integer
    add_column :uploads, :file_content_type, :string
    remove_column :uploads, :upload_content_type
  end
end

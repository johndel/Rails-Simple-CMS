class AddUrlAttributeToUploads < ActiveRecord::Migration
  def up
    add_column :uploads, :url, :string
  end
  
  def down
    remove_column :uploads, :url
  end
end

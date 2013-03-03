class RemovePermalinkFromUploads < ActiveRecord::Migration
  def change
    remove_column :uploads, :permalink
  end
end

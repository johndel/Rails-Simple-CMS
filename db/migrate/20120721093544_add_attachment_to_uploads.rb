class AddAttachmentToUploads < ActiveRecord::Migration
  def change 
    add_attachment :uploads, :file
  end
end

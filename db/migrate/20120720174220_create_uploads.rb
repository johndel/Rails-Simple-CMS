class CreateUploads < ActiveRecord::Migration
  def up
    create_table :uploads do |t|
      t.timestamps
    end
  end
  
  def down
     drop_table :uploads
  end
  
end

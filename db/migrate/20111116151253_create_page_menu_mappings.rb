class CreatePageMenuMappings < ActiveRecord::Migration
  def change
    create_table :page_menu_mappings do |t|
      t.integer :page_id
      t.integer :menu_id
      t.integer :page_position

      t.timestamps
    end

    add_index :page_menu_mappings, :page_id
    add_index :page_menu_mappings, :menu_id
    add_index :page_menu_mappings, [:menu_id, :page_id], unique: true
    add_index :page_menu_mappings, [:menu_id, :page_position], unique: true
  end
end

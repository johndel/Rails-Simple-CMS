class PageMenuMapping < ActiveRecord::Base
  belongs_to :page
  belongs_to :menu
  
  validates :page_id, :presence => true
  validates :menu_id, :presence => true  
  
  validates_uniqueness_of :menu_id, :scope => :page_position
end

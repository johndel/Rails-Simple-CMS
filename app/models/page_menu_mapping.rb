class PageMenuMapping < ActiveRecord::Base
  before_validation :add_page_position
  belongs_to :page
  belongs_to :menu

  validates :page_id, :menu_id, :page_position, presence: true
  validates_uniqueness_of :menu_id, scope: :page_position, message: "Can't have the same page position as another page"
  validates_uniqueness_of :menu_id, scope: :page_id

  def add_page_position # Checks if menu page position exists
  	if page_position.nil?
 	    page_menu_mappings = PageMenuMapping.where(menu_id: menu_id)
  	  if page_menu_mappings.empty?
  	    self.page_position = 1
  	  else
 	      self.page_position = page_menu_mappings.maximum("page_position") + 1
  	  end
    end
  end
end

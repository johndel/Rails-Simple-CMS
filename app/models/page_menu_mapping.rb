class PageMenuMapping < ActiveRecord::Base
  before_create :add_page_position
  belongs_to :page
  belongs_to :menu
  
  validates :page_id, :presence => true
  validates :menu_id, :presence => true  
  
  validates_uniqueness_of :menu_id, :scope => :page_position, :message => "Can't have the save page position as another page"
  
  def add_page_position
    if self.page_position.nil?
      page_menu_mappings = PageMenuMapping.where(:menu_id => self.menu_id)
      if page_menu_mappings.empty?
        self.page_position = 1
      else
        tmp = page_menu_mappings.sort {|a,b| a.page_position <=> b.page_position }.last.page_position + 1 rescue 1
      end
    end
  end
  
end

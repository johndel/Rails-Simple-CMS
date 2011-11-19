require 'spec_helper'  
describe PageMenuMapping do
  before(:each) do
    @page_menu_mapping = create(:page_menu_mapping)
    menu = create(:menu)
    page = create(:page)
    @page_menu_mapping.menu = menu
    @page_menu_mapping.page = page
  end
  
  it "can belongs to a page" do
    @page_menu_mapping.page.should be_valid
  end
  
  it "can belongs to a menu" do
    @page_menu_mapping.menu.should be_valid
  end
  
  it "should have page id" do
    PageMenuMapping.new(:page_id => nil).should have(1).error_on(:page_id)
  end
  
  it "should have menu id" do
    PageMenuMapping.new(:menu_id => nil).should have(1).error_on(:menu_id)
  end
  
  it "can't have same page position number with the same menu" do
    create(:mapping_one)
    build(:mapping_one, :page_id => 2).should have(1).error_on(:menu_id)
  end
   
end

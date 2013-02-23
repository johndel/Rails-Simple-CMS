require 'spec_helper'
describe PageMenuMapping do
  before(:each) do
    @page_menu_mapping = FactoryGirl.create(:page_menu_mapping, :has_page, :has_menu)
    @menu = create(:menu)
    @page = create(:page)
  end

  it "can belong to a page" do
    @page_menu_mapping.page.should be_valid
  end

  it "can belong to a menu" do
    @page_menu_mapping.menu.should be_valid
  end

  it "should have page id" do
    PageMenuMapping.new(page_id: nil).should have(1).error_on(:page_id)
  end

  it "should have menu id" do
    PageMenuMapping.new(menu_id: nil).should have(1).error_on(:menu_id)
  end

  it "can't have same page position number with the same menu" do
    create(:page_menu_mapping, page_id: 3, menu_id: 1, page_position: 1)
    build(:page_menu_mapping, page_id: 2, menu_id: 1, page_position: 1).should have(1).error_on(:menu_id)
  end

  it "should add page position automatically if it hasn't specified" do
    page = create(:page)
    menu = create(:menu)
    menu.pages << page
    menu.page_menu_mappings.first.page_position.should be 1
  end

end
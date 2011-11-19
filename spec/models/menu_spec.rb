require 'spec_helper'

describe Menu do
  it "should have unique name" do
    create(:menu, name: "unique")
    Menu.new(name: "unique").should_not be_valid
  end
  
  it "should have a name" do
    Menu.new(name: nil).should have(1).error_on(:name)  
  end
  
  it "can belongs to many pages" do
    should have_many(:pages)
  end
  
  context "One menu cannot be twice in the same page" do
    before do 
      menu = create(:menu)
      @page = create(:page)
      @page.menus << menu
      @page.menus << menu
    end
         
    it "should be one" do
      @page.menus.size.should eq(1)
    end
  end
end

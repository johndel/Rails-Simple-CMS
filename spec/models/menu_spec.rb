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
  
  it "should not add the same menu twice" do #"should raise an error if a menu pushed in the same page twice" do
      menu = create(:menu)
      page = create(:page)
      page.menus << menu
      expect { page.menus << menu }.to raise_error
  end
end

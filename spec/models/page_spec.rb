require 'spec_helper'

describe Page do
  
  it "should have a unique name" do
    create(:page, name: "unique")
    Page.new(name: "unique").should_not be_valid
  end
  
  it "should have unique permalink" do
    create(:page, permalink: "unique")
    Page.new(permalink: "unique").should_not be_valid 
  end
  
  it "should have a name" do
    Page.new(name: nil).should have(1).error_on(:name)  
  end 
    
  it "should have a permalink" do
    Page.new(permalink: nil).should have(1).error_on(:permalink) 
  end 
  
  it "can belongs to many menus" do
    should have_many(:menus)
  end 
    
  it "should change permalinks so they do not contain symbols, spaces, be downcase and it has approximately 50 characters" do
    page = create(:page, permalink: "A r34lly str4ng3 permal!nk   w!th $ymb0ls &^% th*t c4n't b3 v4l!d as it !s ")
    page.permalink.should eq("a-r34lly-str4ng3-permalnk-wth-ymb0ls-tht-c4nt-b3")
  end
  
  it "should raise an error if a page pushed in the same menu twice" do
    page = create(:page)
    menu = create(:menu)
    menu.pages << page
    lambda { menu.pages << page }.should raise_error
  end

  it "should create sitemap of all of the active pages" do
    pending   
  end
  
  # INTEGRATION TEST
   # it "should be the first page if it has permalink as '/first-page/'" do
    # page.create(:page, title: "I am the first page", permalink: "/first-page/")
  # end
  
end

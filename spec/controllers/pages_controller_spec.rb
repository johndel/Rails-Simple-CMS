require 'spec_helper'

describe PagesController do
  describe "get index" do
    it "should be successful" do
      #controller.should_receive(:homepage)
      #controller.should_receive(:default_menu_pages)
      Page.first_page.permalink.should eq("homepagde")
      # get 'index'
      # response.should be_success
    end
  end

  # describe "get show" do
  # 	let(:page) { FactoryGirl.create(:page) }

  # 	# it "should show a page that exists" do
  # 	#   controller.should_receive(:homepage)
  # 	#   controller.should_receive(:default_menu_pages)
  # 	#   get 'show' #, permalink: page.permalink
  # 	# end

  # 	# it "should show a render_404 if there isn't a page" do
  # 	# end
  # end
end
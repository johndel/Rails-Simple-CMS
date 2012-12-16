require 'spec_helper'


shared_context "setting stuff" do
  before do
    @homepage = create(:homepage_setting)
  end
end

describe Setting do
  include_context "setting stuff"

  it "should have a homepage" do
  	@homepage.should_not be_nil
  end

  it "should be for the homepage the meta_key" do
	@homepage.meta_key.should eq("homepage")
  end

  it "Homepage should exist in 'pages' table" do
  	page = Page.where(id: @homepage.meta_value.to_i).first
  	page.should_not be_nil
  	@homepage.meta_value.to_i.should eq(page.id)
  end
end

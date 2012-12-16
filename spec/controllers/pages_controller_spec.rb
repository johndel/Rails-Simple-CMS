require 'spec_helper'

describe PagesController do
    let!(:homepage) { FactoryGirl.create(:page, content: "Hi I am the demo homepage!") }
    let!(:homepage_setting) { FactoryGirl.create(:homepage_setting, meta_value: homepage.id) }

  describe "get index" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end

  describe "get show" do
    let!(:page) { FactoryGirl.create(:page, content: "A random existing page") }

    it "should show a page that exists" do
      get 'show', permalink: page.permalink
      response.should be_success
    end

    it "should show a render_404 if there isn't a page" do
      get 'show', permalink: "doesn't exists"
      response.should_not be_success
    end
  end
end
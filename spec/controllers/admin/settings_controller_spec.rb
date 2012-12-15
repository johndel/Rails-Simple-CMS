require 'spec_helper'

describe Admin::SettingsController do
  before { controller.stub(:authenticate_user!).and_return true }

  describe 'homepage' do
  	it 'shows the homepage page successfully' do
  	  get 'homepage'
  	  assigns(:pages).length.should > 0
  	  assigns(:homepage).should be_kind_of(Setting)
  	  response.should render_template :homepage
      response.should be_success 
  	end
  end

  describe 'homepage_save' do
  	let(:new_homepage) { FactoryGirl.create(:page) }

  	it 'changes the homepage' do
  	  get 'homepage_save', setting_homepage: new_homepage.id
  	  Setting.where(:meta_key => :homepage).first.meta_value.should eq(new_homepage.id.to_s)
  	  flash[:notice].should_not be_nil
  	  response.should redirect_to admin_pages_path
  	end
  end
end
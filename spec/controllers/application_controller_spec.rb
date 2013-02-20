require 'spec_helper'

describe ApplicationController do

  controller do
    def after_sign_in_path_for(resource)
        super resource
    end
  end

  before (:each) do
    @admin = FactoryGirl.create(:admin)
  end

  describe "After login" do
    it "redirects to the /admin/pages" do
        controller.after_sign_in_path_for(@admin).should == admin_pages_path
    end
  end

end
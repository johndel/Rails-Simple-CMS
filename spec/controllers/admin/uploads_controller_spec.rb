require 'spec_helper'

describe Admin::UploadsController do
  before { controller.stub(:authenticate_user!).and_return true }

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should render_template :index
      response.should be_success 
    end

	  it "should find a list with all menus" do
	    Upload.should_receive(:all)
	    get 'index'
	  end
  end


  describe "GET 'new'" do
    it "returns http success" do
      Upload.should_receive(:new)
      get 'new'
      response.should render_template :new
      response.should be_success
    end
  end



  describe "GET 'create'" do
  	context "success path" do
  	  it "should create a new upload" do
      expect{
        post :create, upload: FactoryGirl.attributes_for(:upload)
      }.to change(Upload, :count).by(1)
  	  end

  	  it "should redirect to new admin upload" do
  	    post :create, upload: FactoryGirl.attributes_for(:upload)
      	response.should redirect_to new_admin_upload_path
  	    flash[:notice].should_not be_nil
  	  end

  	end

  	context "failure path" do
	    it "does not save the new upload" do
	      expect{
	        post :create, upload: FactoryGirl.attributes_for(:upload, upload_file_name: nil)
	      }.to_not change(Menu, :count)
	    end
	    
	    it "re-renders the new method" do
	      post :create, name: FactoryGirl.attributes_for(:upload, upload_file_name: nil)
	      response.should render_template :new
	      flash[:notice].should be_nil
	    end
  	end
  end



describe "GET 'delete'" do
	  before :each do
	    @upload = create(:upload)
	  end
	  
	  it "deletes the upload" do
	    expect{
	      delete :destroy, id: @upload        
	    }.to change(Upload, :count).by(-1)
	  end
	    
	  it "redirects to upload#index" do
	    delete :destroy, id: @upload
	    response.should redirect_to admin_uploads_url
	  end
 end
end
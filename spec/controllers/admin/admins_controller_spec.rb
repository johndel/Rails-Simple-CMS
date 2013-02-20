require 'spec_helper'

describe Admin::AdminsController do
  before { controller.stub(:authenticate_admin!).and_return true }

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should render_template :index
      response.should be_success
    end

	  it "should find a list with all menus" do
	    Admin.should_receive(:all)
	    get 'index'
	  end
  end


  describe "GET 'new'" do
    it "returns http success" do
      Admin.should_receive(:new)
      get 'new'
      response.should render_template :new
      response.should be_success
    end
  end

  describe "GET 'create'" do
  	context "success path" do
  	  it "should create a new admin" do
      expect{
        post :create, admin: FactoryGirl.attributes_for(:admin)
      }.to change(Admin, :count).by(1)
  	  end

  	  it "should redirect to new admin admin" do
  	    post :create, admin: FactoryGirl.attributes_for(:admin)
      	response.should redirect_to new_admin_admin_path
  	    flash[:notice].should_not be_nil
  	  end

  	end

  	context "failure path" do
	    it "does not save the new admin" do
	      expect{
	        post :create, admin: FactoryGirl.attributes_for(:admin, email: nil)
	      }.to_not change(Admin, :count)
	    end

	    it "re-renders the new method" do
	      post :create, name: FactoryGirl.attributes_for(:admin, email: nil)
	      response.should render_template :new
	      flash[:notice].should be_nil
	    end
  	end
  end


  describe "GET 'edit'" do
    let(:admin) { FactoryGirl.create(:admin) }

    it "Assigns to the right variables" do
      get :edit, id: admin
      assigns(:admin).should eq(admin)
    end

    it "renders the #show view" do
      get :edit, id: admin
      response.should render_template :edit
    end
  end


describe 'PUT update' do
  before :each do
    @admin = create(:admin, email: "test1@greeksolution.gr")
    @admin2 = create(:admin, email: "test2@greeksolution.gr")
  end

  context "valid attributes" do
    it "located the admin @admin" do
      put :update, id: @admin, admin: FactoryGirl.attributes_for(:admin)
      assigns(:admin).should eq(@admin)
    end

    it "changes @admin's attributes" do
      put :update, id: @admin, admin: FactoryGirl.attributes_for(:admin, email: "test3@greeksolution.gr")
      @admin.reload
      @admin.email.should eq("test3@greeksolution.gr")
    end
	it "redirects to the updated admin" do
      put :update, id: @admin, admin: FactoryGirl.attributes_for(:admin, email: "test3@greeksolution.gr")
      response.should redirect_to admin_admins_url
    end
  end

  context "invalid attributes" do
    it "locates the requested @admin" do
      put :update, id: @admin, admin: FactoryGirl.attributes_for(:admin, email: "test2@greeksolution.gr")
      assigns(:admin).should eq(@admin)
    end

    it "does not change @admin's attributes" do
      put :update, id: @admin, admin: FactoryGirl.attributes_for(:admin, email: "test2@greeksolution.gr")
      @admin.reload
      @admin.email.should eq("test1@greeksolution.gr")
    end

    it "re-renders the edit method" do
      put :update, id: @admin, admin: FactoryGirl.attributes_for(:admin, email: "test2@greeksolution.gr")
      response.should render_template :edit
    end
  end
end

  describe "GET 'delete'" do
	  before :each do
	    @admin = create(:admin)
	  end

	  it "deletes the admin" do
	    expect{
	      delete :destroy, id: @admin
	    }.to change(Admin, :count).by(-1)
	  end

	  it "redirects to admin#index" do
	    delete :destroy, id: @admin
	    response.should redirect_to admin_admins_url
	  end
  end
end
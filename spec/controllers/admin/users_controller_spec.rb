require 'spec_helper'

describe Admin::UsersController do
  before { controller.stub(:authenticate_user!).and_return true }

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should render_template :index
      response.should be_success 
    end

	  it "should find a list with all menus" do
	    User.should_receive(:all)
	    get 'index'
	  end
  end


  describe "GET 'new'" do
    it "returns http success" do
      User.should_receive(:new)
      get 'new'
      response.should render_template :new
      response.should be_success
    end
  end

  describe "GET 'create'" do
  	context "success path" do
  	  it "should create a new user" do
      expect{
        post :create, user: FactoryGirl.attributes_for(:user)
      }.to change(User, :count).by(1)
  	  end

  	  it "should redirect to new admin user" do
  	    post :create, user: FactoryGirl.attributes_for(:user)
      	response.should redirect_to new_admin_user_path
  	    flash[:notice].should_not be_nil
  	  end

  	end

  	context "failure path" do
	    it "does not save the new user" do
	      expect{
	        post :create, user: FactoryGirl.attributes_for(:user, email: nil)
	      }.to_not change(User, :count)
	    end
	    
	    it "re-renders the new method" do
	      post :create, name: FactoryGirl.attributes_for(:user, email: nil)
	      response.should render_template :new
	      flash[:notice].should be_nil
	    end
  	end
  end


  describe "GET 'edit'" do
    let(:user) { FactoryGirl.create(:user) }

    it "Assigns to the right variables" do
      get :edit, id: user
      assigns(:user).should eq(user)
    end
    
    it "renders the #show view" do
      get :edit, id: user
      response.should render_template :edit
    end
  end


describe 'PUT update' do
  before :each do
    @user = create(:user, email: "test1@greeksolution.gr")
    @user2 = create(:user, email: "test2@greeksolution.gr")
  end
  
  context "valid attributes" do
    it "located the user @user" do
      put :update, id: @user, user: FactoryGirl.attributes_for(:user)
      assigns(:user).should eq(@user)      
    end
  
    it "changes @user's attributes" do
      put :update, id: @user, user: FactoryGirl.attributes_for(:user, email: "test3@greeksolution.gr")
      @user.reload
      @user.email.should eq("test3@greeksolution.gr")
    end
	it "redirects to the updated user" do
      put :update, id: @user, user: FactoryGirl.attributes_for(:user, email: "test3@greeksolution.gr")
      response.should redirect_to admin_users_url
    end
  end
  
  context "invalid attributes" do
    it "locates the requested @user" do
      put :update, id: @user, user: FactoryGirl.attributes_for(:user, email: "test2@greeksolution.gr")
      assigns(:user).should eq(@user)      
    end
    
    it "does not change @user's attributes" do
      put :update, id: @user, user: FactoryGirl.attributes_for(:user, email: "test2@greeksolution.gr")
      @user.reload
      @user.email.should eq("test1@greeksolution.gr")
    end
    
    it "re-renders the edit method" do
      put :update, id: @user, user: FactoryGirl.attributes_for(:user, email: "test2@greeksolution.gr")
      response.should render_template :edit
    end
  end
end

  describe "GET 'delete'" do
	  before :each do
	    @user = create(:user)
	  end
	  
	  it "deletes the user" do
	    expect{
	      delete :destroy, id: @user        
	    }.to change(User, :count).by(-1)
	  end
	    
	  it "redirects to user#index" do
	    delete :destroy, id: @user
	    response.should redirect_to admin_users_url
	  end
  end
end
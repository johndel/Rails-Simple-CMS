require 'spec_helper'

describe Admin::PagesController do
  before { controller.stub(:authenticate_user!).and_return true }

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should render_template :index
      response.should be_success 
    end

	  it "should find a list with all menusexi" do
	    Page.should_receive(:all)
	    get 'index'
	  end
  end

  describe "GET 'edit'" do
    let(:page) { FactoryGirl.create(:page) }

    it "Assigns to the right variables" do
      get :edit, id: page
      assigns(:page).should eq(page)
    end
    
    it "renders the #show view" do
      get :edit, id: page
      response.should render_template :edit
    end
  end

  describe "GET 'new'" do
    it "returns http success" do
      Page.should_receive(:new)
      get 'new'      
      response.should render_template :new
      response.should be_success
    end
  end

  describe "GET 'create'" do
  	context "success path" do
  	  it "should create a new page" do
      expect{
        post :create, page: FactoryGirl.attributes_for(:page)
      }.to change(Page, :count).by(1)
  	  end

  	  it "should redirect to new admin page" do
  	    post :create, page: FactoryGirl.attributes_for(:page)
      	response.should redirect_to new_admin_page_path
  	    flash[:notice].should_not be_nil
  	  end

  	end

  	context "failure path" do
	    it "does not save the new page" do
	      expect{
	        post :create, page: FactoryGirl.attributes_for(:page, name: nil)
	      }.to_not change(Page, :count)
	    end
	    
	    it "re-renders the new method" do
	      post :create, name: FactoryGirl.attributes_for(:page, name: nil)
	      response.should render_template :new
	      flash[:notice].should be_nil
	    end
  	end
  end

describe 'PUT update' do
  before :each do
    @page = create(:page, name: "A nice page name")
    @page2 = create(:page, name: "Second page name")
  end
  
  context "valid attributes" do
    it "located the page @page" do
      put :update, id: @page, page: FactoryGirl.attributes_for(:page)
      assigns(:page).should eq(@page)      
    end
  
    it "changes @page's attributes" do
      put :update, id: @page, 
      page: FactoryGirl.attributes_for(:page, name: "A better page name")
      @page.reload
      @page.name.should eq("A better page name")
    end

	it "redirects to the updated page" do
      put :update, id: @page, page: FactoryGirl.attributes_for(:page, name: "A nice page name")
      response.should redirect_to admin_page_path(@page)
    end
  end
  
  context "invalid attributes" do
    it "locates the requested @page" do
      put :update, id: @page, page: FactoryGirl.attributes_for(:page, name: "Second page name")
      assigns(:page).should eq(@page)      
    end
    
    it "does not change @page's attributes" do
      put :update, id: @page, 
      page: FactoryGirl.attributes_for(:page, name: "Second page name")
      @page.reload
      @page.name.should eq("A nice page name")
    end
    
    it "re-renders the show method" do
      put :update, id: @page, page: FactoryGirl.attributes_for(:page, name: "Second page name")
      response.should render_template :show
    end
  end
end

  describe "GET 'delete'" do
	  before :each do
	    @page = create(:page)
	  end
	  
	  it "deletes the page" do
	    expect{
	      delete :destroy, id: @page       
	    }.to change(Page, :count).by(-1)
	  end
	    
	  it "redirects to page#index" do
	    delete :destroy, id: @page
	    response.should redirect_to admin_pages_url
	  end
  end

  describe "Create sitemap" do
  	it 'successful runs the sitemap action' do
  	  get 'sitemap'
  	  flash[:notice].should_not be_nil
  	  response.should redirect_to admin_pages_url
	end

	it 'creates the xml' do
	  sitemap_path = "#{Rails.root}/public/sitemap.xml"
	  get 'sitemap'
	  File.read(sitemap_path).should match "schemas"
	  (File.exists?(sitemap_path)).should be_true
	end
  end 
end
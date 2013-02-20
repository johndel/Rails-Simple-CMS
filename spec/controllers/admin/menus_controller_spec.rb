require 'spec_helper'

describe Admin::MenusController do
  before { controller.stub(:authenticate_admin!).and_return true }

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should render_template :index
      response.should be_success
    end

	  it "should find a list with all menus" do
	    Menu.should_receive(:all)
	    get 'index'
	  end
  end


  describe "GET 'new'" do
    it "returns http success" do
      Menu.should_receive(:new)
      Page.should_receive(:all)
      get 'new'
      assigns(:pages).should be_kind_of(Array)
      response.should render_template :new
      response.should be_success
    end
  end

  describe "GET 'create'" do
  	context "success path" do
  	  it "should create a new menu" do
      expect{
        post :create, menu: FactoryGirl.attributes_for(:menu)
      }.to change(Menu, :count).by(1)
  	  end

  	  it "should redirect to new admin menu" do
  	    post :create, menu: FactoryGirl.attributes_for(:menu)
      	response.should redirect_to admin_menus_path
  	    flash[:notice].should_not be_nil
  	  end
  	end

  	context "failure path" do
	    it "does not save the new menu" do
	      expect{
	        post :create, menu: FactoryGirl.attributes_for(:menu, name: nil)
	      }.to_not change(Menu, :count)
	    end

	    it "re-renders the new method" do
	      post :create, name: FactoryGirl.attributes_for(:menu, name: nil)
	      response.should render_template :new
	      flash[:notice].should be_nil
	    end
  	end
  end


  describe "GET 'edit'" do
    let(:menu) { FactoryGirl.create(:menu_with_pages) }

    it "Assigns to the right variables" do
      get :edit, id: menu
      assigns(:menu).should eq(menu)
      assigns(:pages).length.should eq(3)
      assigns(:other_pages).should be_kind_of(Array)
    end

    it "renders the #show view" do
      get :edit, id: menu
      response.should render_template :edit
    end
  end


describe 'PUT update' do
  before :each do
    @menu = create(:menu, name: "A nice menu name")
    @menu2 = create(:menu, name: "Second menu name")
  end

  context "valid attributes" do
    it "located the menu @menu" do
      put :update, id: @menu, menu: FactoryGirl.attributes_for(:menu)
      assigns(:menu).should eq(@menu)
    end

    it "changes @menu's attributes" do
      put :update, id: @menu, menu: FactoryGirl.attributes_for(:menu, name: "A better menu name")
      @menu.reload
      @menu.name.should eq("A better menu name")
    end
	it "redirects to the updated menu" do
      put :update, id: @menu, menu: FactoryGirl.attributes_for(:menu, name: "A nice menu name")
      response.should redirect_to admin_pages_url
    end
  end

  context "invalid attributes" do
    it "locates the requested @menu" do
      put :update, id: @menu, menu: FactoryGirl.attributes_for(:menu, name: "Second menu name")
      assigns(:menu).should eq(@menu)
    end

    it "does not change @menu's attributes" do
      put :update, id: @menu, menu: FactoryGirl.attributes_for(:menu, name: "Second menu name")
      @menu.reload
      @menu.name.should eq("A nice menu name")
    end

    it "re-renders the edit method" do
      put :update, id: @menu, menu: FactoryGirl.attributes_for(:menu, name: "Second menu name")
      response.should render_template :edit
    end
  end
end

  describe "GET 'delete'" do
	  before :each do
	    @menu = create(:menu)
	  end

	  it "deletes the menu" do
	    expect{
	      delete :destroy, id: @menu
	    }.to change(Menu, :count).by(-1)
	  end

	  it "redirects to menu#index" do
	    delete :destroy, id: @menu
	    response.should redirect_to admin_menus_url
	  end
  end

  describe "sort functionality" do
    let!(:menu) { FactoryGirl.create(:menu_with_pages) }

    it "should sort successful" do
      page_ids = [menu.pages[2].id, menu.pages[0].id, menu.pages[1].id]
      PageMenuMapping.all.length.should eq(3)
      post :page_sort, :menu => menu.id, :page => page_ids
      PageMenuMapping.where(menu_id: menu.id).order(:page_position).map(&:page_id).should eq(page_ids)
    end

    it "should remove a page successfully" do
      page_ids = [menu.pages[2].id, menu.pages[0].id]
      post :page_sort, :menu => menu.id, :page => page_ids
      PageMenuMapping.where(menu_id: menu.id).order(:page_position).map(&:page_id).should eq(page_ids)
    end

    it "should add a page successfully" do
      page = create(:page)
      page_ids = [menu.pages[2].id, menu.pages[0].id, menu.pages[1].id, page.id]
      post :page_sort, :menu => menu.id, :page => page_ids
      PageMenuMapping.where(menu_id: menu.id).order(:page_position).length.should eq(4)
    end
  end
end
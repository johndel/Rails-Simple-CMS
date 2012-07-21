require "spec_helper"

describe UploadsController do
  describe "routing" do

    it "routes to #index" do
      get("/uploads").should route_to("uploads#index")
    end

    it "routes to #new" do
      get("/uploads/new").should route_to("uploads#new")
    end

    it "routes to #show" do
      get("/uploads/1").should route_to("uploads#show", :id => "1")
    end

    it "routes to #edit" do
      get("/uploads/1/edit").should route_to("uploads#edit", :id => "1")
    end

    it "routes to #create" do
      post("/uploads").should route_to("uploads#create")
    end

    it "routes to #update" do
      put("/uploads/1").should route_to("uploads#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/uploads/1").should route_to("uploads#destroy", :id => "1")
    end

  end
end

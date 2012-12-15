require "spec_helper"

describe Admin::PagesController do
    describe "routing" do
        it "routes to pages sitemap action" do
            get( "/admin/pages/sitemap" ).should route_to( "admin/pages#sitemap" )
        end

        it "routes to pages clear_cache action" do
            get( "/admin/pages/clear_cache" ).should route_to( "admin/pages#clear_cache" )
        end

        it "routes to pages index action" do
            get( "/admin/pages" ).should route_to( "admin/pages#index" )
        end

        it "routes to pages show action" do
            get( "/admin/pages/1" ).should route_to( "admin/pages#show", id: "1" )
        end

        it "routes to pages new action" do
            get( "/admin/pages/new" ).should route_to( "admin/pages#new" )
        end

        it "routes to pages create action" do
            post( "/admin/pages" ).should route_to( "admin/pages#create" )
        end

        it "routes to pages edit action" do
            get( "/admin/pages/1/edit" ).should route_to( "admin/pages#edit", id: "1" ) 
        end

        it "routes to pages update action" do
            put( "/admin/pages/1" ).should route_to( "admin/pages#update", id: "1" )
        end

        it "routes to pages delete action" do
            delete( "/admin/pages/1" ).should route_to( "admin/pages#destroy", id: "1" )
        end
    end
end

describe PagesController do 
    describe "routing" do
        it "routes to pages show action" do
            get( "/dokimi" ).should route_to( "pages#show", permalink: "dokimi" )
        end

        it "routes to pages index action" do
            get( "/" ).should route_to( "pages#index" )
        end
    end
end
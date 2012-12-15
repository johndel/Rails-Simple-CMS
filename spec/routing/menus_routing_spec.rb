require "spec_helper"

describe Admin::MenusController do
    describe "routing" do
        it "routes to menu index" do
            get( "/admin/menus" ).should route_to( "admin/menus#index" )
        end

        it "routes to menus new action" do
            get( "/admin/menus/new" ).should route_to( "admin/menus#new" )
        end

        it "routes to menus create action" do
            post( "/admin/menus" ).should route_to( "admin/menus#create" )
        end

        it "routes to menus edit action" do
            get( "/admin/menus/1/edit" ).should route_to( "admin/menus#edit", id: "1" ) 
        end

        it "routes to menus update action" do
            put( "/admin/menus/1" ).should route_to( "admin/menus#update", id: "1" )
        end

        it "routes to menus delete action" do
            delete( "/admin/menus/1" ).should route_to( "admin/menus#destroy", id: "1" )
        end

        it "routes to menus page_sort action" do
            post( "/admin/menus/page_sort" ).should route_to( "admin/menus#page_sort" )
        end
    end
end
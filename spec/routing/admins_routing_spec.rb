require "spec_helper"

describe Admin::AdminsController do
    describe "routing" do
        it "routes to admin index action" do
            get( "/admin/admins" ).should route_to( "admin/admins#index" )
        end

        it "calls the admins new action" do
            get( "/admin/admins/new" ).should route_to( "admin/admins#new" )
        end

        it "calls the admins create action" do
            post( "/admin/admins" ).should route_to( "admin/admins#create" )
        end

        it "calls the admins edit action" do
            get( "/admin/admins/1/edit" ).should route_to( "admin/admins#edit", id: "1" )
        end

        it "calls the admins update action" do
            put( "/admin/admins/1" ).should route_to( "admin/admins#update", id: "1" )
        end

        it "calls the admins delete action" do
            delete( "/admin/admins/1" ).should route_to( "admin/admins#destroy", id: "1" )
        end
    end
end
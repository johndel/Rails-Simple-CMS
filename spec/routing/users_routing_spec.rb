require "spec_helper"

describe Admin::UsersController do
    describe "routing" do
        it "routes to user index action" do
            get( "/admin/users" ).should route_to( "admin/users#index" )
        end

        it "calls the users new action" do
            get( "/admin/users/new" ).should route_to( "admin/users#new" )
        end

        it "calls the users create action" do
            post( "/admin/users" ).should route_to( "admin/users#create" )
        end

        it "calls the users edit action" do
            get( "/admin/users/1/edit" ).should route_to( "admin/users#edit", id: "1" ) 
        end

        it "calls the users update action" do
            put( "/admin/users/1" ).should route_to( "admin/users#update", id: "1" )
        end

        it "calls the users delete action" do
            delete( "/admin/users/1" ).should route_to( "admin/users#destroy", id: "1" )
        end
    end
end
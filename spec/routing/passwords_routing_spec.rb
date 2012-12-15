require "spec_helper"

describe Devise::PasswordsController do
    describe "routing" do
        it "routes to password new action" do
            get( "/admin/password/new" ).should route_to( "devise/passwords#new" )
        end

        it "routes to password create action" do
            post( "/admin/password" ).should route_to( "devise/passwords#create" )
        end

        it "routes to password edit action" do
            get( "/admin/password/edit" ).should route_to( "devise/passwords#edit" )
        end

        it "routes to password update action" do
            put( "/admin/password" ).should route_to( "devise/passwords#update" )
        end
    end
end
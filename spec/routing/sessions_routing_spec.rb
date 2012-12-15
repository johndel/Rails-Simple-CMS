require "spec_helper"

describe Devise::SessionsController do
    describe "routing" do
        it "routes to session new action" do
            get( "/admin/login" ).should route_to( "devise/sessions#new" )
        end

        it "routes to session create action" do
            post( "/admin/login" ).should route_to( "devise/sessions#create" )
        end

        it "routes to session destroy action" do
            delete( "/admin/logout" ).should route_to( "devise/sessions#destroy" )
        end
    end
end
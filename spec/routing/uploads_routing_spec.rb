require "spec_helper"

describe Admin::UploadsController do
    describe "routing" do
        it "routes to upload index" do
            get( "/admin/uploads" ).should route_to( "admin/uploads#index" )
        end

        it "calls the uploads new action" do
            get( "/admin/uploads/new" ).should route_to( "admin/uploads#new" )
        end

        it "calls the uploads create action" do
            post( "/admin/uploads" ).should route_to( "admin/uploads#create" )
        end

        it "calls the uploads delete action" do
            delete( "/admin/uploads/1" ).should route_to( "admin/uploads#destroy", id: "1" )
        end
    end
end
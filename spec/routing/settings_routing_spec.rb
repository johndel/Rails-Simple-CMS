require "spec_helper"

describe Admin::SettingsController do
    describe "routing" do
        it "routes to settings homepage action" do
            get( "/admin/settings/homepage" ).should route_to( "admin/settings#homepage" )
        end

        it "routes to settings homepage save action" do
            post( "/admin/settings/homepage-save" ).should route_to( "admin/settings#homepage_save" )
        end
    end
end
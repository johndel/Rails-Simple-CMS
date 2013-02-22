require "spec_helper"

describe Admin::<%= backend_scaffold_name.pluralize.titleize %>Controller do
    describe "routing" do
        it "routes to <%= backend_scaffold_name %> index action" do
            get( "/admin/<%= backend_scaffold_name.pluralize %>" ).should route_to( "admin/<%= backend_scaffold_name.pluralize %>#index" )
        end

        it "calls the <%= backend_scaffold_name.pluralize %> new action" do
            get( "/admin/<%= backend_scaffold_name.pluralize %>/new" ).should route_to( "admin/<%= backend_scaffold_name.pluralize %>#new" )
        end

        it "calls the <%= backend_scaffold_name.pluralize %> create action" do
            post( "/admin/<%= backend_scaffold_name.pluralize %>" ).should route_to( "admin/<%= backend_scaffold_name.pluralize %>#create" )
        end

        it "calls the <%= backend_scaffold_name.pluralize %> edit action" do
            get( "/admin/<%= backend_scaffold_name.pluralize %>/1/edit" ).should route_to( "admin/<%= backend_scaffold_name.pluralize %>#edit", id: "1" )
        end

        it "calls the <%= backend_scaffold_name.pluralize %> update action" do
            put( "/admin/<%= backend_scaffold_name.pluralize %>/1" ).should route_to( "admin/<%= backend_scaffold_name.pluralize %>#update", id: "1" )
        end

        it "calls the <%= backend_scaffold_name.pluralize %> delete action" do
            delete( "/admin/<%= backend_scaffold_name.pluralize %>/1" ).should route_to( "admin/<%= backend_scaffold_name.pluralize %>#destroy", id: "1" )
        end
    end
end
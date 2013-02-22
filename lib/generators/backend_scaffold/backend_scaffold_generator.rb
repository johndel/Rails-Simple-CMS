class BackendScaffoldGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)
  argument :attributes, type: :array, default: [], banner: "field[:type][:index] field[:type][:index]"


  def generate_backend_scaffold
    # Views
    template "erb/edit.html.erb", "app/views/admin/#{backend_scaffold_name.pluralize}/edit.html.erb"
    template "erb/new.html.erb", "app/views/admin/#{backend_scaffold_name.pluralize}/new.html.erb"
    template "erb/index.html.erb", "app/views/admin/#{backend_scaffold_name.pluralize}/index.html.erb"
    template "erb/_form.html.erb", "app/views/admin/#{backend_scaffold_name.pluralize}/_form.html.erb"

    # Controller
    template "controller/controller.rb", "app/controllers/admin/#{backend_scaffold_name.pluralize}_controller.rb"

    # Model
    template "model/model.rb", "app/models/#{backend_scaffold_name}.rb"

    # Migration
    template "migration/migration.rb", "db/migrate/#{Time.now.utc.strftime("%Y%m%d%H%M%S")}_create_#{backend_scaffold_name.pluralize}.rb"

    # Route
    insert_into_file "config/routes.rb", "    resources :#{backend_scaffold_name.pluralize}, :except => [:show]\n", :after => "namespace :admin do\n"

    # Assets (datatable and sidebar)
    if File.read("app/assets/javascripts/admin/dataTables.init.js").scan("#datatable_#{attributes.count}_2").empty?
      null_counter = ""
      attributes.count.times { null_counter += "null," }
      insert_into_file "app/assets/javascripts/admin/dataTables.init.js", :after => "$(document).ready(function() {\n" do
        "  $(\"#datatable_#{attributes.count}_2\").dataTable({
    \"sDom\": '<\"H\"lfr>t<\"F\"i>',
    \"aoColumns\": [#{null_counter.chop},{ \"bSortable\": false },{ \"bSortable\": false }
  ]});\n"
      end
    end


    insert_into_file "app/views/admin/partials/_sidebar.html.erb", :before => "<!-- Before this, the generator will add it -->" do
      "<br />
      <h3 class=\"<%= 'current_menu' if controller.controller_name == \"#{backend_scaffold_name.pluralize}\" %>\"><%= link_to \"#{backend_scaffold_name.pluralize.titleize}\", admin_#{backend_scaffold_name.pluralize}_path %></h3>
      <ul class=\"toggle\">
        <li class=\"<%= \"current_action\" if controller.controller_name == \"#{backend_scaffold_name.pluralize}\" && controller.action_name == \"index\" %>\"><%= link_to \"All #{backend_scaffold_name.pluralize.titleize}\", admin_#{backend_scaffold_name.pluralize}_path %></li>
        <li class=\"<%= \"current_action\" if controller.controller_name == \"#{backend_scaffold_name.pluralize}\" && controller.action_name == \"new\" %>\"><%= link_to \"New #{backend_scaffold_name.pluralize.titleize}\", new_admin_#{backend_scaffold_name}_path %></li>
      </ul>\n\n\n"
    end

    # Rspec Model
    template "model/rspec.rb", "spec/models/#{backend_scaffold_name}_spec.rb"

    # Rspec Feature
    # template "feature/feature.rb", "spec/models/#{backend_scaffold_name}_spec.rb"

    # Rspec route
    template "routing/route.rb", "spec/routing/#{backend_scaffold_name.pluralize}_routing_spec.rb"

    # Factory Girl
    template "factory_girl/factory.rb", "spec/factories/#{backend_scaffold_name.pluralize}.rb"


  end

  private
  def backend_scaffold_name
    name.underscore
  end

end


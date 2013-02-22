class Create<%= human_name.pluralize %> < ActiveRecord::Migration
  def change
    create_table :<%= plural_table_name %> do |t|
    <%- attributes.each do |attr| -%>
      t.<%= attr.type %> :<%= attr.name %>
    <%- end -%>
      t.timestamps

    end
  end
end

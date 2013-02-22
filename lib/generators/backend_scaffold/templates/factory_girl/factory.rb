FactoryGirl.define do
  factory :<%= backend_scaffold_name %> do
    <%- attributes.each do |attribute| -%>
      <%= attribute.name %> ""
    <%- end -%>
  end
end
class <%= human_name %> < ActiveRecord::Base
  attr_accessible <%= attributes.map { |attr| ":#{attr.name}" }.join(", ") %>
end
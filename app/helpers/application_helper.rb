module ApplicationHelper

  def title
    if controller.action_name == "index"
      "All #{controller.controller_name.titleize}"
    else
      "#{controller.action_name.titleize} #{controller.controller_name.titleize.singularize}"
    end
  end
  
  def create_or_update_string
    if controller.action_name == "new"
      "Create"
    else
      "Update"
    end
  end
  
  def first_menu
    Menu.first
  end
  
end

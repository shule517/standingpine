module ApplicationHelper

  def root_page?
    controller_name == "home"
  end
end

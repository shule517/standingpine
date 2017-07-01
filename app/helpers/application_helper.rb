module ApplicationHelper

  def root_page?
    controller_name == "home"
  end

  def locale_button(locale)
    if locale == "ja"
      if params[:locale].present?
        link_to_if params[:locale].present?, '',  url_for(controller: controller.controller_name, action: controller.action_name, locale: ''), class: "is-jp"
      else
        content_tag :div, class: "is-jp is-active" do
        end
      end
    else
      if params[:locale] != locale
        link_to  '',  url_for(controller: controller.controller_name, action: controller.action_name, locale: locale), class: "is-#{locale}"
      else
        content_tag :div, class: "is-#{locale} is-active" do
        end
      end
    end
  end
end

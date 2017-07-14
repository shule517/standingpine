module ApplicationHelper

  def root_page?
    controller_name == "home"
  end

  def locale_button(locale)
    if locale == "ja"
      if params[:locale].present?
        link_to '',  url_for(controller: controller.controller_name, action: controller.action_name, locale: nil), class: "is-jp"
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

  def sub_title(current_page)
    case current_page
    when "home"
      "NEWS"
    when "articles"
      "NEWS"
    when "exhibitions"
      "EXHIBITION"
    else
      "SUBTITLE IS EMPTY"
    end
  end

  def content_url(content)
    if controller_name == 'home' || controller_name == 'articles'
      if content.link.present?
        content.link
      else
        content
      end
    else
      content
    end
  end

  def next(contents, content)
    contents.find_index content
    content + 1
  end

  def prev(contents, content)
    contents.find_index content
    content - 1
  end

  def page_location
    @controller = controller_name

    case @controller
    when "home"
      "article"
    when "articles"
      "article"
    when "exhibitions"
      "exhibition"
    else
    end
  end

  def embedded_svg filename, options={}
    file = File.read(Rails.root.join('app', 'assets', 'images', filename))
    doc = Nokogiri::HTML::DocumentFragment.parse file
    svg = doc.at_css 'svg'
    if options[:class].present?
      svg['class'] = options[:class]
    end
    doc.to_html.html_safe
  end
end

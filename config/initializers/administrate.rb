require 'administrate/field/base'
require 'rails'

module Administrate
  module Field
    class Paperclip < Administrate::Field::Base

      def style(size = big_style)
        data.try(:url, size) || ''
      end

      delegate :url, to: :data

      def thumbnail
        style(thumbnail_style)
      end

      # Just display the URL as a link, rather than trying to make it an image
      def url_only?
        options.fetch(:url_only, false)
      end

      alias url style

      private

      DEFAULT_THUMBNAIL_STYLE = :thumbnail
      DEFAULT_BIG_STYLE = :original

      def thumbnail_style
        options.fetch(:thumbnail_style, DEFAULT_THUMBNAIL_STYLE)
      end

      def big_style
        options.fetch(:big_style, DEFAULT_BIG_STYLE)
      end
    end
  end
end

stylesheet_list = [
  "froala_editor.min.css",
  "froala_style.min.css",
  "plugins/char_counter.min.css",
  "plugins/code_view.min.css",
  "plugins/colors.min.css",
  "plugins/emoticons.min.css",
  "plugins/file.min.css",
  "plugins/fullscreen.min.css",
  "plugins/image_manager.min.css",
  "plugins/image.min.css",
  "plugins/line_breaker.min.css",
  "plugins/table.min.css",
  "plugins/video.min.css",
  "administrate/custom_administrate"
]

stylesheet_list.each do |stylesheet|
  Administrate::Engine.add_stylesheet(stylesheet)
end

Administrate::Engine.add_javascript "administrate/froala"

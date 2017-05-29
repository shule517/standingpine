require "administrate/base_dashboard"

class TopicDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    link: Field::String,
    published_at: Field::DateTime,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    cover_image_file_name: Field::String,
    cover_image_content_type: Field::String,
    cover_image_file_size: Field::Number,
    cover_image_updated_at: Field::DateTime,
    title_ja: Field::String,
    title_en: Field::String,
    sub_title_ja: Field::String,
    sub_title_en: Field::String,
    content_ja: Field::Text,
    content_en: Field::Text,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :link,
    :published_at,
    :created_at,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :link,
    :published_at,
    :created_at,
    :updated_at,
    :cover_image_file_name,
    :cover_image_content_type,
    :cover_image_file_size,
    :cover_image_updated_at,
    :title_ja,
    :title_en,
    :sub_title_ja,
    :sub_title_en,
    :content_ja,
    :content_en,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :link,
    :published_at,
    :cover_image_file_name,
    :cover_image_content_type,
    :cover_image_file_size,
    :cover_image_updated_at,
    :title_ja,
    :title_en,
    :sub_title_ja,
    :sub_title_en,
    :content_ja,
    :content_en,
  ].freeze

  # Overwrite this method to customize how topics are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(topic)
  #   "Topic ##{topic.id}"
  # end
end

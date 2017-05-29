require "administrate/base_dashboard"

class ExhibitionDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    artist_exhibitions: Field::HasMany,
    artists: Field::HasMany,
    id: Field::Number,
    starting_on: Field::DateTime,
    ending_on: Field::DateTime,
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
    addition_ja: Field::String,
    addition_en: Field::String,
    description_ja: Field::Text,
    description_en: Field::Text,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :artist_exhibitions,
    :artists,
    :id,
    :starting_on,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :artist_exhibitions,
    :artists,
    :id,
    :starting_on,
    :ending_on,
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
    :addition_ja,
    :addition_en,
    :description_ja,
    :description_en,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :artist_exhibitions,
    :artists,
    :starting_on,
    :ending_on,
    :cover_image_file_name,
    :cover_image_content_type,
    :cover_image_file_size,
    :cover_image_updated_at,
    :title_ja,
    :title_en,
    :sub_title_ja,
    :sub_title_en,
    :addition_ja,
    :addition_en,
    :description_ja,
    :description_en,
  ].freeze

  # Overwrite this method to customize how exhibitions are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(exhibition)
  #   "Exhibition ##{exhibition.id}"
  # end
end

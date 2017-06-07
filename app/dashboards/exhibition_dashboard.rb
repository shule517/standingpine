require "administrate/base_dashboard"

class ExhibitionDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    artists: Field::HasMany,
    id: Field::Number,
    starting_on: Field::DateTime,
    ending_on: Field::DateTime,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    cover_image: Field::Paperclip,
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
    :title_ja,
    :cover_image,
    :artists,
    :starting_on,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :artists,
    :id,
    :starting_on,
    :ending_on,
    :created_at,
    :updated_at,
    :cover_image,
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
    :artists,
    :starting_on,
    :ending_on,
    :cover_image,
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

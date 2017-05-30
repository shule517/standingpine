require "administrate/base_dashboard"

class ArtistDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    articles: Field::HasMany,
    artist_exhibitions: Field::HasMany,
    exhibitions: Field::HasMany,
    id: Field::Number,
    regular: Field::Boolean,
    web_site: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    cover_image: Field::Paperclip,
    name_ja: Field::String,
    name_en: Field::String,
    description_ja: Field::Text,
    description_en: Field::Text,
    biography_ja: Field::Text,
    biography_en: Field::Text,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :name_ja,
    :cover_image,
    :regular,
    :id,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :articles,
    :artist_exhibitions,
    :exhibitions,
    :id,
    :regular,
    :web_site,
    :created_at,
    :updated_at,
    :cover_image,
    :name_ja,
    :name_en,
    :description_ja,
    :description_en,
    :biography_ja,
    :biography_en,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :articles,
    :artist_exhibitions,
    :exhibitions,
    :regular,
    :web_site,
    :cover_image,
    :name_ja,
    :name_en,
    :description_ja,
    :description_en,
    :biography_ja,
    :biography_en,
  ].freeze

  # Overwrite this method to customize how artists are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(artist)
  #   "Artist ##{artist.id}"
  # end
end

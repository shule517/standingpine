require "administrate/base_dashboard"

class ArtworkDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    artist: Field::BelongsTo,
    connection: Field::BelongsTo,
    id: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    image: Field::Paperclip,
    title_ja: Field::String,
    title_en: Field::String,
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
    :artist,
    :image,
    :id,
    :created_at,
    :updated_at,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :artist,
    :connection,
    :id,
    :image,
    :title_ja,
    :title_en,
    :description_ja,
    :description_en,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :artist,
    :connection,
    :image,
    :title_ja,
    :title_en,
    :description_ja,
    :description_en,
  ].freeze

  # Overwrite this method to customize how artworks are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(artwork)
    "#{artwork.title_ja}"
  end
end

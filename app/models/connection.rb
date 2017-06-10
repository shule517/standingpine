class Connection < ApplicationRecord
  belongs_to :artist
  belongs_to :exhibition
  has_many :artworks
end

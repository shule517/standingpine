class ArtistExhibition < ApplicationRecord
  belongs_to :artist
  belongs_to :exhibition
end

class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
    @artworks = @artist.artworks

    @exhibitions = @artist.exhibitions
  end
end

class ExhibitionsController < ApplicationController
  def index
    @exhibitions = Exhibition.started

    @select_year = Exhibition.started_year[0..3]
  end

  def show
    @exhibition_first = Exhibition.started.first.id
    @exhibition = Exhibition.find(params[:id])
    @artists = @exhibition.artists
    @artworks = @exhibition.connections.map{ |connection| connection.artist.artworks}.flatten
  end
end

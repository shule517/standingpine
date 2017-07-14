class ExhibitionsController < ApplicationController
  def index
    @exhibitions = Exhibition.started

    @select_year = Exhibition.started_year[0..3]
  end

  def show
    @exhibition_first = Exhibition.started.first.id
    @exhibition = Exhibition.find(params[:id])
    @artists = @exhibition.artists
  end
end

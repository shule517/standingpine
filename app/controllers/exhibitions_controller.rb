class ExhibitionsController < ApplicationController
  def index
    @exhibitions = Exhibition.started

    @select_year = Exhibition.started_year[0..3]
  end

  def show
  end
end

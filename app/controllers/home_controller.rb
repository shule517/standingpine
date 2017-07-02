class HomeController < ApplicationController
  def index
    @main_image = MainImage.rand_pick_active_image
  end
end

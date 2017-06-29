class HomeController < ApplicationController
  def index
    @main_image = MainImage.offset(rand(MainImage.count)).first
  end
end

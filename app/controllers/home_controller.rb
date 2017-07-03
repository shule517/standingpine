class HomeController < ApplicationController
  def index
    @main_image = MainImage.rand_pick_active_image
    @articles_limit = Article.published_limit
    @articles_sharpen = Article.sharpen(6)
  end
end

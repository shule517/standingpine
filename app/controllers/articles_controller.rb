class ArticlesController < ApplicationController
  def index
    if params[:year].present?
      @articles = Article.by_year(params[:year])
    else
      @articles = Article.published
    end

    @published_year = Article.published_year[0..3]
  end

  def show
  end
end

class ArticlesController < ApplicationController
  def index
    if params[:year].present?
      @articles = Article.by_year(params[:year])
    else
      @articles = Article.published
    end

    @select_year = Article.published_year[0..3]
  end

  def show
    @article = Article.find(params[:id])
    @next_article = Article.next(@article)
    @prev_article = Article.prev(@article)
    @select_year = Article.published_year[0..3]
  end
end

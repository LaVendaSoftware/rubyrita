class ArticlesController < ApplicationController
  def index
    render Views::Articles::Index.new(articles: Article.all)
  end

  def show
    render Views::Articles::Show.new(article: Article.find(params[:slug]))
  end
end

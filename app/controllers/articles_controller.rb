class ArticlesController < ApplicationController
  def index
    render Views::Articles::Index.new
  end

  def show
    render Views::Articles::Show.new
  end
end

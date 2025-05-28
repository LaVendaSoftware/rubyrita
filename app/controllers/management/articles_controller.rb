class Management::ArticlesController < AuthenticatedController
  before_action :set_article, only: %i[show edit update destroy]

  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article, notice: t(".success")
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @article.update(article_params)
      redirect_to @article, notice: t(".success"), status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @article.destroy!
    redirect_to articles_path, notice: t(".success"), status: :see_other
  end

  private

  def set_article
    @article = Article.find(params.expect(:id))
  end

  def article_params
    params.expect(article: [:category_id, :title, :slug, :content, :publish_date])
  end
end

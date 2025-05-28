module Articles
  class Creator < UseCaseBase
    required_attributes(:category, :title, :content)

    def before
      context.article = Article.new(article_params)
    end

    def call
      context.article.save!
    rescue ActiveRecord::RecordInvalid
      context.fail!(status: :unprocessable_entity, errors: context.article.errors)
    end

    private

    def article_params
      {
        category: context.category,
        title: context.title,
        content: MarkdownToHtml.call(context.content),
        publish_date: context.publish_date
      }
    end
  end
end

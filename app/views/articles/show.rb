class Views::Articles::Show < Views::Base
  include Phlex::Rails::Helpers::ContentFor
  def initialize(article:)
    @article = article
  end

  def view_template
    content_for(:title, @article.title)

    Card do
      CardHeader do
        CardTitle { @article.title }
        CardDescription do
          div(class: "article-content") do
            @article.content.html_safe # rubocop:disable Rails/OutputSafety
          end
        end
      end
    end
  end
end

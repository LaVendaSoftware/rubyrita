class Views::Articles::Index < Views::Base
  include Phlex::Rails::Helpers::LinkTo

  def initialize(articles:)
    @articles = articles
  end

  def view_template
    content_for(:title, "Artigos")
    div(class: "flex flex-col gap-8 p-4 ") do
      @articles.map do |article|
        link_to article_path(article.slug) do
          Card do
            CardHeader do
              CardTitle { article.title }
              CardDescription do
                ActionController::Base.helpers.strip_tags(article.content).truncate(100)
              end
            end
          end
        end
      end
    end
  end
end

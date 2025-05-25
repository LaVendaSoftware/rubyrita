class Views::Articles::Index < Views::Base
  include Phlex::Rails::Helpers::ContentFor

  def view_template
    content_for(:title, "Artigos")

    h1 { "Articles::Index" }
    p { "Find me in " }
  end
end

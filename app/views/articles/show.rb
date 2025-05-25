class Views::Articles::Show < Views::Base
  include Phlex::Rails::Helpers::ContentFor

  def view_template
    content_for(:title, "Detalhes")

    h1 { "Articles::Show" }
    p { "Find me in " }
  end
end

class Views::Management::Home::Index < Views::Base
  def view_template
    div(class: "container") do
      h1(class: "font-bold text-4xl") { "Dashboard" }
      p { "Seja bem vindo! 👋" }

      Separator(as: :hr, orientation: :horizontal, class: "mt-4")

      Link(href: management_articles_path, class: "text-primary") do
        "✏️ Administra artigos"
      end
      Separator(as: :hr, orientation: :horizontal)
    end
  end
end

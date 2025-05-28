class Views::Management::Home::Index < Views::Base
  def view_template
    div(class: "container") do
      h1(class: "font-bold text-4xl") { "Dashboard" }
      p { "Seja bem vindo! 👋" }
    end
  end
end

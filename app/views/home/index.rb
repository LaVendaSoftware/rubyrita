class Views::Home::Index < Views::Base
  include Phlex::Rails::Helpers::ImageTag

  def view_template
    div(class: "flex flex-col justify-center") do
      h1(class: "font-bold text-4xl") do
        image_tag("rubyrita.png", width: 200)
        div(class: "text-center") { "Rubyrita" }
      end
    end
  end
end

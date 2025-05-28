class Views::Home::Index < Views::Base
  include Phlex::Rails::Helpers::ImageTag
  include Phlex::Rails::Helpers::LinkTo

  def view_template
    div(class: "flex flex-col") do
      div(class: "flex items-center justify-center") do
        div(class: "flex flex-col justify-center") do
          image_tag("rubyrita.png", class: "h-64 mt-12")

          div(class: "text-center text-3xl mt-4") { link_to("✏️ Artigos", articles_path) }
        end
      end
    end
  end
end

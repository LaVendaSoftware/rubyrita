class Views::Home::Index < Views::Base
  include Phlex::Rails::Helpers::ImageTag

  def view_template
    div(class: "flex flex-col") do
      div(class: "flex items-center justify-center") do
        div(class: "flex flex-col justify-center") do
          h1(class: "font-bold text-4xl") do
            image_tag("rubyrita.png", class: "h-32")
          end
        end
      end
    end
  end
end

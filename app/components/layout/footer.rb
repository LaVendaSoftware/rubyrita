class Components::Layout::Footer < Components::Base
  def view_template
    header(class: "border-t mt-4 text-center") do
      div(class: "container mx-auto px-2 py-2") do
        Link(href: "http://frevoonrails.com.br", target: "blank") do
          "Frevo on Rails Spin OFF"
        end
      end
    end
  end
end

class Components::Layout::Navbar < Components::Base
  def view_template
    header(class: "border-b mb-4 text-center turbo-native:hidden") do
      div(class: "container mx-auto px-4 py-4") do
        div(class: "flex justify-center items-center") do
          Link(href: root_path, class: "text-2xl font-bold text-primary") do
            "Rubyrita 🍻"
          end
        end
      end
    end
  end
end

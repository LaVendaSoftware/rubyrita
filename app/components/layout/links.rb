class Components::Layout::Links < Components::Base
  def view_template
    header(class: "border-b mb-4 text-center") do
      div(class: "container mx-auto px-4 py-4") do
        div(class: "flex justify-center items-center") do
          div(class: "flex h-5 items-center space-x-1 text-sm") do
            Link(href: management_root_path, class: "text-primary") do
              "⚙️ Dashboard"
            end
            Separator(as: :hr, orientation: :vertical)

            Link(href: articles_path, class: "text-primary") do
              "✏️ Ver artigos"
            end
          end
        end
      end
    end
  end
end

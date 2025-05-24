module ApplicationHelper
  DEFAULT_PAGE_TITLE = "Rubyrita 🍻"

  def page_title
    content_for(:turbo_native_title).presence ||
      content_for(:page_title).presence ||
      content_for(:title).presence ||
      DEFAULT_PAGE_TITLE
  end
end

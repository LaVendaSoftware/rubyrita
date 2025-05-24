module ApplicationHelper
  DEFAULT_PAGE_TITLE = "Rubyrita 🍻"
  DEFAULT_PLATFORM = "web"

  def page_title
    content_for(:turbo_native_title).presence ||
      content_for(:page_title).presence ||
      content_for(:title).presence ||
      DEFAULT_PAGE_TITLE
  end

  def platform_identifier
    return "turbo-native" if turbo_native_app?

    DEFAULT_PLATFORM
  end
end

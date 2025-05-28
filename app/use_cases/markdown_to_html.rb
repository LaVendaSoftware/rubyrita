class MarkdownToHtml < Ucasy::Callable
  def initialize(content)
    @content = content
  end

  def call
    markdown.render(@content)
  end

  private

  def markdown
    @markdown ||=
      Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)
  end
end

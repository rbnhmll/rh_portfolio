MarkdownRails.configure do |config|
  markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML,
    fenced_code_blocks: true,
    autolink: true,
    tables: true,
    with_toc_data: true)
  config.render do |markdown_source|
    markdown.render(markdown_source)
  end
end
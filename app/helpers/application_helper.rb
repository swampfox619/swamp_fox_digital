module ApplicationHelper

def markdown(string)
  @markdown ||= Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, space_after_headers: true, fenced_code_blocks: true)
  @markdown.render(string.to_s).html_safe
end

end

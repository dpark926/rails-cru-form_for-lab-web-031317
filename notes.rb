module ApplicationHelper
  def generate_link_tag(text, path)
    #path is either a string r an instance of one of my models
    if path.is_a?(String)
    # if it is a string
      "<a href='#{path}'>#{text}</a>".html.safe
    else
    # if it's an instance of a model
    resource_name = path.clas.to_s.downcase.pluralize
    "<a href='/#{resource_name, course}/#{path.id}'>#{body}</a>".html_safe
  end

  # @cat // 7
  #
  # <%=generate_link_tag(cat, )%>
end

def form_tag(path)
  <<-HTML
  <form method="POST" action="#{path}">
    <input type='hidden' value='1234' name='_authenticity_token'>
    #{yield}
  </form>
  HTML
end

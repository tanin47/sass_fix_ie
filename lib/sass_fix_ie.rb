require "sass"

class Sass::Tree::Visitors::ToCss < Sass::Tree::Visitors::Base

  def visit_prop_with_ie7(node)
    s = original_visit_prop(node)

    if node.resolved_name.downcase == "display" and node.resolved_value.downcase == "inline-block"
      s = "#{s};zoom: 1;*display:inline;"
    end

    s
  end
  alias_method :original_visit_prop, :visit_prop
  alias_method :visit_prop, :visit_prop_with_ie7
end

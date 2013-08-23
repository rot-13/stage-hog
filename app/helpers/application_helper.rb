module ApplicationHelper
  def nav_item_classname(p)
    current_page?(p) ? 'active' : ''
  end
end

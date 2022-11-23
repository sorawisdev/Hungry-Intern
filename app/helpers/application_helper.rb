module ApplicationHelper
  
  def active_class(path)
    if request.path == path
      return 'header-nav-link_active'
    else
      return ''
    end
  end

end

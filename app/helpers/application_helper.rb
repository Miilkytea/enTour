module ApplicationHelper

  def body_class
    if controller_name == 'map' && action_name == 'index'
      'map'
    elsif controller_name == 'home' && action_name == 'index'
      'home'
    end
  end

end

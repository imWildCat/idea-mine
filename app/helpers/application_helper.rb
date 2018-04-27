module ApplicationHelper

  def render_flash_class(key)
    case key
    when 'info'
      alert_class = 'alert-info'
    when 'notice'
      alert_class = 'alert-info'
    when 'success'
      alert_class = 'alert-success'
    when 'error'
      alert_class = 'alert-danger'
    when 'warning'
      alert_class = 'alert-warning'
    else
      alert_class = "alert-#{key}"
    end
    alert_class
  end
end

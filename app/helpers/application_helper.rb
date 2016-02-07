module ApplicationHelper
  def alert_type_from_flash(msg_type)
    case msg_type
      when "error"   then "alert-danger"
      when "alert"   then "alert-warning"
      when "success" then "alert-success"
      else                "alert-info"
    end
  end
end

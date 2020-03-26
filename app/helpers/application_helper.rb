module ApplicationHelper
  def flash_message_class(key)
    case key
    when "alert"
      "toast-danger"
    else
      "toast-success"
    end
  end
end

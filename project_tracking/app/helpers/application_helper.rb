module ApplicationHelper
  def logged_in_welcome_message
    "Welcome #{current_user.first_name}"
  end
end

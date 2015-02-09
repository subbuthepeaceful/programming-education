module ApplicationHelper
  def logged_in_welcome_message
    "Welcome #{current_user.email}"
  end
end

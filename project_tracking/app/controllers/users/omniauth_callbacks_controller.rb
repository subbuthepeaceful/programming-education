class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    puts request.env["omniauth.auth"]
    redirect_to root_path
  end
end
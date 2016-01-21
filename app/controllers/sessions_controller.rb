class SessionsController < Devise::SessionsController
  protected

  def after_sign_in_path_for(resource)
    flash[:notice] = "Welcome back, #{current_user.first_name}!"
    session["user_return_to"] || root_path
  end
end

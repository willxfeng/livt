class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(_resource)
    flash[:notice] = "You have signed up successfully! Welcome to livt, #{current_user.first_name}!"
    session["user_return_to"] || root_path
  end
end

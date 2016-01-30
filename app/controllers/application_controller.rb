class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?
  after_filter :store_location

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << [
      :first_name,
      :last_name,
      :avatar
    ]

    devise_parameter_sanitizer.for(:account_update) << :avatar
  end

  def set_time_zone
    Time.zone = current_user.time_zone
  end

  def store_location
    # store last url - this is needed for post-login redirect to whatever the user last visited.
    return unless request.get?
    if (request.path != "/users/sign_in" &&
        request.path != "/users/sign_up" &&
        request.path != "/users/password/new" &&
        request.path != "/users/password/edit" &&
        request.path != "/users/confirmation" &&
        request.path != "/users/sign_out" &&
        !request.xhr?) # don't store ajax calls
      session[:previous_url] = request.fullpath
    end

    def after_sign_in_path_for(resource)
      flash[:notice] = "Welcome back, #{current_user.first_name}!"
      session[:previous_url] || root_path
    end
  end
end
